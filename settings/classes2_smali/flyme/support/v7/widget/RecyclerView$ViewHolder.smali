.class public abstract Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lflyme/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

.field mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10457
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 10484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10351
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10352
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v1, -0x1

    .line 10353
    iput-wide v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 10354
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 10355
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, 0x0

    .line 10358
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 10360
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 10459
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10460
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v2, 0x0

    .line 10462
    iput v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10466
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 10468
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 10472
    iput v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10475
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    if-eqz p1, :cond_29

    .line 10488
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    .line 10486
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemView may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1300(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 1

    .line 10348
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 1

    .line 10348
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return p0
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 10348
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 10348
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$700(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 1

    .line 10348
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$Recycler;)Lflyme/support/v7/widget/RecyclerView$Recycler;
    .registers 2

    .line 10348
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$900(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 1

    .line 10348
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p0
.end method

.method static synthetic access$902(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)Z
    .registers 2

    .line 10348
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p1
.end method

.method private createPayloadsIfNeeded()V
    .registers 2

    .line 10703
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_13

    .line 10704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 10705
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_13
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .registers 2

    .line 10844
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_10

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private onEnteredHiddenState(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 3

    .line 10750
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10751
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    const/4 v0, 0x4

    .line 10752
    invoke-virtual {p1, p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Z

    return-void
.end method

.method private onLeftHiddenState(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 3

    .line 10760
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Z

    const/4 p1, 0x0

    .line 10762
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .registers 1

    .line 10836
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .registers 4

    const/16 v0, 0x400

    if-nez p1, :cond_8

    .line 10695
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_15

    .line 10696
    :cond_8
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 10697
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 10698
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_15
    return-void
.end method

.method addFlags(I)V
    .registers 3

    .line 10690
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .registers 2

    const/4 v0, -0x1

    .line 10514
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10515
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    return-void
.end method

.method clearPayload()V
    .registers 2

    .line 10710
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 10711
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10713
    :cond_7
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .registers 2

    .line 10641
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .registers 2

    .line 10645
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .registers 5

    const/16 v0, 0x8

    .line 10492
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 10493
    invoke-virtual {p0, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 10494
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    return-void
.end method

.method public final getAdapterPosition()I
    .registers 2

    .line 10590
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 10593
    :cond_6
    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView;->getAdapterPositionFor(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public final getItemId()J
    .registers 3

    .line 10618
    iget-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .registers 1

    .line 10625
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return p0
.end method

.method public final getLayoutPosition()I
    .registers 3

    .line 10564
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_7
    return v0
.end method

.method public final getOldPosition()I
    .registers 1

    .line 10608
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return p0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10717
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_17

    .line 10718
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    .line 10723
    :cond_11
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object p0

    .line 10720
    :cond_14
    :goto_14
    sget-object p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0

    .line 10726
    :cond_17
    sget-object p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0
.end method

.method hasAnyOfTheFlags(I)Z
    .registers 2

    .line 10674
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method isAdapterPositionUnknown()Z
    .registers 2

    .line 10682
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method isBound()Z
    .registers 2

    .line 10666
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isInvalid()Z
    .registers 1

    .line 10658
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isRecyclable()Z
    .registers 2

    .line 10827
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_10

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10828
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method isRemoved()Z
    .registers 1

    .line 10670
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method isScrap()Z
    .registers 1

    .line 10629
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method isTmpDetached()Z
    .registers 1

    .line 10678
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method isUpdated()Z
    .registers 1

    .line 10848
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method needsUpdate()Z
    .registers 1

    .line 10662
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method offsetPosition(IZ)V
    .registers 5

    .line 10498
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 10499
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 10501
    :cond_9
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_11

    .line 10502
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_11
    if-eqz p2, :cond_18

    .line 10505
    iget p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10507
    :cond_18
    iget p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10508
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p1, :cond_3a

    .line 10509
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3a
    return-void
.end method

.method resetInternal()V
    .registers 5

    const/4 v0, 0x0

    .line 10731
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, -0x1

    .line 10732
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 10733
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v2, -0x1

    .line 10734
    iput-wide v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 10735
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 10736
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v2, 0x0

    .line 10737
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 10738
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 10739
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 10740
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10741
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10742
    invoke-static {p0}, Lflyme/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method saveOldPosition()V
    .registers 3

    .line 10519
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 10520
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_9
    return-void
.end method

.method setFlags(II)V
    .registers 5

    .line 10686
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .registers 4

    const/4 v0, 0x1

    .line 10802
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_7

    sub-int/2addr v1, v0

    goto :goto_8

    :cond_7
    add-int/2addr v1, v0

    :goto_8
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10803
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_28

    const/4 p1, 0x0

    .line 10804
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 10809
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_28
    if-nez p1, :cond_33

    if-ne v1, v0, :cond_33

    .line 10812
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_3f

    :cond_33
    if-eqz p1, :cond_3f

    .line 10813
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez p1, :cond_3f

    .line 10814
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    :cond_3f
    :goto_3f
    return-void
.end method

.method setScrapContainer(Lflyme/support/v7/widget/RecyclerView$Recycler;Z)V
    .registers 3

    .line 10653
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 10654
    iput-boolean p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return-void
.end method

.method shouldIgnore()Z
    .registers 1

    .line 10525
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 10767
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10768
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10770
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string v1, " scrap "

    .line 10771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v1, :cond_58

    const-string v1, "[changeScrap]"

    goto :goto_5a

    :cond_58
    const-string v1, "[attachedScrap]"

    .line 10772
    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10774
    :cond_5d
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10775
    :cond_68
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10776
    :cond_73
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10777
    :cond_7e
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10778
    :cond_89
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10779
    :cond_94
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_9f

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10780
    :cond_9f
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_c0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10781
    :cond_c0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10783
    :cond_cb
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_d8

    const-string p0, " no parent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d8
    const-string p0, "}"

    .line 10784
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unScrap()V
    .registers 2

    .line 10633
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .registers 1

    .line 10637
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
