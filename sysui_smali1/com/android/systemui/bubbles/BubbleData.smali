.class public Lcom/android/systemui/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleData$TimeSource;,
        Lcom/android/systemui/bubbles/BubbleData$Listener;,
        Lcom/android/systemui/bubbles/BubbleData$Update;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

.field private mSuppressedGroupKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

.field private mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;

    .line 63
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 65
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$JmVH-PWbzq5woEs3Hauzhf2I3Jc;

    .line 66
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 146
    new-instance p1, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private dispatchPendingChanges()V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 413
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/systemui/bubbles/BubbleData$Update;)V

    .line 415
    :cond_13
    new-instance v0, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private doAdd(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 6

    .line 301
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithGroupId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    if-eqz v0, :cond_14

    goto :goto_1d

    .line 304
    :cond_14
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v3

    .line 306
    :goto_1e
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2f

    .line 307
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 309
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_57

    .line 311
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->findFirstIndexForGroup(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 313
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_57
    return-void
.end method

.method private doRemove(Ljava/lang/String;I)V
    .registers 8

    .line 348
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return-void

    .line 352
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 353
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    const/4 v1, 0x0

    .line 355
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 356
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 358
    :cond_21
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_2e

    .line 360
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 362
    :cond_2e
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 363
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_49

    .line 365
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 369
    :cond_49
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 371
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 372
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 373
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 375
    :cond_67
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private doUpdate(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 336
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 338
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->insertBubble(ILcom/android/systemui/bubbles/Bubble;)I

    move-result p1

    if-eq v0, p1, :cond_24

    .line 340
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    .line 341
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 343
    :cond_24
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_2f
    return-void
.end method

.method private findFirstIndexForGroup(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 536
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 537
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/Bubble;

    .line 538
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return v0
.end method

.method private hasBubbleWithGroupId(Ljava/lang/String;)Z
    .registers 3

    .line 532
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$H_9shD4W4k6iZvs8GpmXTAxbTbM;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private indexForKey(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 639
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 640
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 641
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private insertBubble(ILcom/android/systemui/bubbles/Bubble;)I
    .registers 8

    .line 512
    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 515
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_33

    .line 516
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 517
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    .line 520
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2f

    .line 522
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p1

    :cond_2f
    add-int/lit8 p1, p1, 0x1

    move-object v2, v4

    goto :goto_5

    .line 527
    :cond_33
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic lambda$hasBubbleWithGroupId$2(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .registers 2

    .line 532
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$repackAll$3(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .registers 2

    .line 610
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vPZCImnk7rTPTX1c7nr0PX7FO2o(Lcom/android/systemui/bubbles/Bubble;)J
    .registers 3

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_2d

    .line 624
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 626
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_2d

    .line 630
    :try_start_11
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_14
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_2d

    .line 632
    :catch_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send delete intent for bubble with key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method private packGroup(I)Z
    .registers 8

    .line 557
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 558
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_19
    const/4 v4, 0x0

    if-le v2, p1, :cond_3c

    .line 563
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v5}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 564
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 567
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    return v4

    .line 570
    :cond_43
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 571
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    add-int/2addr p1, v3

    invoke-interface {p0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return v3
.end method

.method private repackAll()Z
    .registers 9

    .line 586
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 589
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 590
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/Bubble;

    .line 591
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 592
    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_15

    .line 594
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/Bubble;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 600
    :cond_49
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/BubbleData;->GROUPS_BY_MAX_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 601
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    .line 602
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 603
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 605
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 608
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 609
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;

    invoke-direct {v5, v3}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$dNlU6_h6UYMtjKJV6CpiMlj80Mk;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 611
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;

    invoke-direct {v4, v2}, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;-><init>(Ljava/util/List;)V

    .line 612
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto :goto_76

    .line 614
    :cond_a0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    return v1

    .line 617
    :cond_a9
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 618
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setExpandedInternal(Z)V
    .registers 5

    .line 452
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_36

    .line 456
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Bubbles"

    if-eqz v0, :cond_17

    const-string p0, "Attempt to expand stack when empty!"

    .line 457
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 460
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v0, :cond_21

    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 461
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_21
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v1}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_8f

    .line 466
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 469
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 472
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8f

    .line 474
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 478
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    goto :goto_8f

    .line 482
    :cond_76
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->packGroup(I)Z

    move-result v1

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 488
    :cond_8f
    :goto_8f
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    .line 489
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    const/4 p1, 0x1

    .line 490
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method private setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 4
    .param p1  # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 427
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_34

    .line 430
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 435
    :cond_34
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    .line 436
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 438
    :cond_43
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 439
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 p1, 0x1

    .line 440
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method private static sortKey(Lcom/android/systemui/bubbles/Bubble;)J
    .registers 5

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getLastUpdateTime()J

    move-result-wide v0

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->isOngoing()Z

    move-result p0

    if-eqz p0, :cond_d

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    or-long/2addr v0, v2

    :cond_d
    return-wide v0
.end method

.method private trim()V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2e

    .line 319
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;

    .line 321
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$cMHgi74d7w0GcIwOfMT2Vp3u6PQ;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 323
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$29N_uZXST8y3Cv7BRkVQkHhseh0;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 325
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 252
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismissAll(I)V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 386
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 387
    :goto_11
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 388
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 389
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 390
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_11

    .line 392
    :cond_2e
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "selected: "

    .line 680
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_e

    .line 681
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, "null"

    .line 680
    :goto_10
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "expanded: "

    .line 683
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "count:    "

    .line 684
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 686
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/bubbles/Bubble;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_31

    :cond_41
    const-string/jumbo p1, "summaryKeys: "

    .line 688
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 689
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 690
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   suppressing: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5a

    :cond_7b
    return-void
.end method

.method getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 658
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 659
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 660
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBubbles()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 288
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 289
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2e
    return-object v0
.end method

.method public getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    return-object p0
.end method

.method getSummaryKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 262
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasBubbleWithKey(Ljava/lang/String;)Z
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public hasBubbles()Z
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isExpanded()Z
    .registers 1

    .line 154
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    return p0
.end method

.method isSummarySuppressed(Ljava/lang/String;)Z
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$trim$0$BubbleData(Lcom/android/systemui/bubbles/Bubble;)Z
    .registers 2

    .line 323
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$trim$1$BubbleData(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 3

    .line 325
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    return-void
.end method

.method public notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .registers 3

    .line 216
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method notificationEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 5

    .line 186
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_19

    .line 189
    new-instance v0, Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/bubbles/Bubble;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 190
    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/Bubble;->setSuppressFlyout(Z)V

    .line 191
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doAdd(Lcom/android/systemui/bubbles/Bubble;)V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->trim()V

    goto :goto_1f

    .line 195
    :cond_19
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->updateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->doUpdate(Lcom/android/systemui/bubbles/Bubble;)V

    .line 198
    :goto_1f
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_31

    .line 199
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 200
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-nez p1, :cond_38

    .line 201
    invoke-direct {p0, p2}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    goto :goto_38

    .line 203
    :cond_31
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez p1, :cond_38

    .line 204
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 206
    :cond_38
    :goto_38
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-ne p1, v0, :cond_42

    move p1, p2

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    xor-int/lit8 v1, p1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/Bubble;->setShowInShadeWhenBubble(Z)V

    xor-int/2addr p1, p2

    .line 208
    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->setShowBubbleDot(Z)V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public notificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 6

    .line 228
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-nez v0, :cond_b

    .line 229
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 232
    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 234
    aget-object v2, v0, v1

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 236
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 237
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v3, 0x4

    .line 238
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 242
    :cond_2f
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method removeSuppressedSummary(Ljava/lang/String;)V
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpanded(Z)V
    .registers 2

    .line 170
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V
    .registers 2

    .line 673
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .registers 2

    .line 178
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method setTimeSource(Lcom/android/systemui/bubbles/BubbleData$TimeSource;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 669
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    return-void
.end method
