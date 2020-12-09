.class public Lcom/android/server/am/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastDispatcher$Dumper;,
        Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastDispatcher"


# instance fields
.field private mAlarm:Lcom/android/server/AlarmManagerInternal;

.field private final mAlarmBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

.field final mAlarmUids:Landroid/util/SparseIntArray;

.field private final mConstants:Lcom/android/server/am/BroadcastConstants;

.field private mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

.field private final mDeferredBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueue:Lcom/android/server/am/BroadcastQueue;

.field private mRecheckScheduled:Z

.field final mScheduleRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    .line 165
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$1;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    .line 211
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$2;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 240
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    .line 241
    iput-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 242
    iput-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    .line 243
    iput-object p4, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .registers 2

    .line 41
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/BroadcastDispatcher;)Lcom/android/server/am/BroadcastQueue;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/server/am/BroadcastDispatcher;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    return p1
.end method

.method private calculateDeferral(J)J
    .registers 5

    .line 717
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    long-to-float p1, p1

    iget-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget p2, p2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 404
    nop

    .line 405
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 406
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 408
    if-nez p5, :cond_1d

    if-eqz v0, :cond_1d

    .line 409
    const/4 p1, 0x1

    return p1

    .line 411
    :cond_1d
    goto :goto_6

    .line 412
    :cond_1e
    return v0
.end method

.method private cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 390
    nop

    .line 391
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 392
    iget-object v2, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 394
    if-nez p5, :cond_23

    if-eqz v0, :cond_23

    .line 395
    const/4 p1, 0x1

    return p1

    .line 397
    :cond_23
    goto :goto_6

    .line 398
    :cond_24
    return v0
.end method

.method private findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .registers 3

    .line 652
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 654
    if-nez v0, :cond_e

    .line 655
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 657
    :cond_e
    return-object v0
.end method

.method private static findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;"
        }
    .end annotation

    .line 676
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 677
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 678
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 679
    iget v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p0, v3, :cond_12

    .line 680
    return-object v2

    .line 677
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 683
    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private static insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ")V"
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 704
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 705
    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-wide v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 706
    goto :goto_19

    .line 704
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 709
    :cond_19
    :goto_19
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 710
    return-void
.end method

.method private static isDeferralsListEmpty(Ljava/util/ArrayList;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)Z"
        }
    .end annotation

    .line 278
    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static pendingInDeferralsList(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)I"
        }
    .end annotation

    .line 269
    nop

    .line 270
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 271
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_17

    .line 272
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 274
    :cond_17
    return v2
.end method

.method private static popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 692
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p0, 0x0

    goto :goto_19

    :cond_11
    iget-object p0, p0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    :goto_19
    return-object p0
.end method

.method private removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z
    .registers 3

    .line 665
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 666
    if-nez v0, :cond_e

    .line 667
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 669
    :cond_e
    return v0
.end method

.method private replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 346
    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_29

    .line 350
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 351
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v2, v3, :cond_26

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 357
    iget-boolean p3, v1, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    iput-boolean p3, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 358
    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-object v1

    .line 349
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 362
    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method private replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 333
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 334
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 335
    iget-object v2, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    .line 336
    if-eqz v2, :cond_16

    .line 337
    return-object v2

    .line 333
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 340
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zeroDeferralTimes(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)V"
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 637
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    .line 638
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 640
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 642
    :cond_16
    return-void
.end method


# virtual methods
.method public addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V
    .registers 6

    .line 591
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    .line 593
    if-nez v1, :cond_20

    .line 594
    const-string p2, "BroadcastDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding deferred broadcast but not tracking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 596
    :cond_20
    if-nez p2, :cond_39

    .line 597
    const-string p2, "BroadcastDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferring null broadcast to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 599
    :cond_39
    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 600
    invoke-virtual {v1, p2}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->add(Lcom/android/server/am/BroadcastRecord;)V

    .line 603
    :goto_3f
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public cancelDeferralsLocked()V
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 633
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 369
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 371
    if-nez p4, :cond_f

    if-nez v0, :cond_1b

    .line 372
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 375
    :cond_1b
    if-nez p4, :cond_1f

    if-nez v0, :cond_2b

    .line 376
    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 379
    :cond_2b
    if-nez p4, :cond_2f

    if-nez v0, :cond_38

    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_38

    .line 380
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result p1

    or-int/2addr v0, p1

    .line 384
    :cond_38
    return v0
.end method

.method public describeStateLocked()Ljava/lang/String;
    .registers 4

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 287
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_10

    .line 288
    const-string v1, "1 in flight, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " ordered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    .line 293
    const-string v2, ", "

    if-lez v1, :cond_33

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, " deferrals in alarm recipients"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    .line 299
    if-lez v1, :cond_46

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, " deferred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z
    .registers 12

    .line 725
    new-instance v6, Lcom/android/server/am/BroadcastDispatcher$Dumper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher$Dumper;-><init>(Lcom/android/server/am/BroadcastDispatcher;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 726
    nop

    .line 728
    const-string p2, "Currently in flight"

    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 729
    const-string p2, "In-Flight Ordered Broadcast"

    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 730
    iget-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz p2, :cond_1e

    .line 731
    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_23

    .line 733
    :cond_1e
    const-string p2, "  (null)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    :goto_23
    const-string p1, "Active ordered broadcasts"

    invoke-virtual {v6, p1}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 737
    const-string p1, "Active Ordered Broadcast"

    invoke-virtual {v6, p1}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 738
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 739
    invoke-virtual {p2, v6}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    .line 740
    goto :goto_33

    .line 741
    :cond_43
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p1

    const/4 p2, 0x0

    or-int/2addr p1, p2

    .line 743
    iget-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/BroadcastRecord;

    .line 744
    invoke-virtual {v6, p3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    .line 745
    goto :goto_4f

    .line 746
    :cond_5f
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p2

    or-int/2addr p1, p2

    .line 748
    const-string p2, "Deferred ordered broadcasts"

    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 749
    const-string p2, "Deferred Ordered Broadcast"

    invoke-virtual {v6, p2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 750
    iget-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_74
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_84

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 751
    invoke-virtual {p3, v6}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    .line 752
    goto :goto_74

    .line 753
    :cond_84
    invoke-virtual {v6}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result p2

    or-int/2addr p1, p2

    .line 755
    return p1
.end method

.method enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object v0
.end method

.method public getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;
    .registers 10

    .line 449
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_5

    .line 450
    return-object v0

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 455
    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 456
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 457
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 463
    :cond_1c
    const/4 v2, 0x0

    if-nez v1, :cond_6f

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 469
    move v3, v2

    :goto_28
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6f

    .line 470
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 471
    iget-wide v5, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v5, p1, v5

    if-gez v5, :cond_41

    if-eqz v0, :cond_41

    .line 476
    goto :goto_6f

    .line 479
    :cond_41
    iget-object v5, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6c

    .line 480
    iget-object p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 483
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    iget-wide p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->calculateDeferral(J)J

    move-result-wide p1

    iput-wide p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 485
    iget-wide p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    iget-wide v5, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    add-long/2addr p1, v5

    iput-wide p1, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 486
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 491
    goto :goto_6f

    .line 469
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 496
    :cond_6f
    :goto_6f
    if-nez v1, :cond_7c

    if-eqz v0, :cond_7c

    .line 497
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 503
    :cond_7c
    iput-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 504
    return-object v1
.end method

.method public isDeferringLocked(I)Z
    .registers 7

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object p1

    .line 526
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    iget-object v1, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1d

    .line 534
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z

    .line 535
    return v0

    .line 538
    :cond_1d
    if-eqz p1, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 263
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 264
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    monitor-exit v0

    .line 261
    return v1

    .line 265
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 320
    if-nez v0, :cond_e

    .line 321
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 323
    :cond_e
    if-nez v0, :cond_16

    .line 324
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 326
    :cond_16
    return-object v0
.end method

.method public retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eq p1, v0, :cond_24

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retiring broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match current outgoing "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BroadcastDispatcher"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_24
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 518
    return-void
.end method

.method public scheduleDeferralCheckLocked(Z)V
    .registers 6

    .line 613
    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    if-nez p1, :cond_32

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 614
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 615
    iget-object v0, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 616
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 618
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 624
    :cond_32
    return-void
.end method

.method public start()V
    .registers 3

    .line 252
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarm:Lcom/android/server/AlarmManagerInternal;

    .line 253
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarm:Lcom/android/server/AlarmManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v0, v1}, Lcom/android/server/AlarmManagerInternal;->registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V

    .line 254
    return-void
.end method

.method public startDeferring(I)V
    .registers 11

    .line 547
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    .line 551
    if-nez v1, :cond_33

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 554
    new-instance v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    .line 557
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;-><init>(IJJI)V

    .line 563
    iget p1, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->alarmCount:I

    if-nez p1, :cond_2d

    .line 565
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 566
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    goto :goto_32

    .line 569
    :cond_2d
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :goto_32
    goto :goto_39

    .line 574
    :cond_33
    iget-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 580
    :goto_39
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 419
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_7

    .line 420
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 422
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 423
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 424
    goto :goto_d

    .line 425
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 426
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 427
    goto :goto_23

    .line 428
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 429
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 430
    goto :goto_39

    .line 431
    :cond_49
    return-void
.end method
