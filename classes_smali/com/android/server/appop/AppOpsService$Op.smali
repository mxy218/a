.class final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field private mAccessTimes:Landroid/util/LongSparseLongArray;

.field private mDurations:Landroid/util/LongSparseLongArray;

.field private mProxyPackageNames:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyUids:Landroid/util/LongSparseLongArray;

.field private mRejectTimes:Landroid/util/LongSparseLongArray;

.field private mode:I

.field op:I

.field final packageName:Ljava/lang/String;

.field running:Z

.field startNesting:I

.field startRealtime:J

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V
    .registers 4

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 439
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 440
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 441
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    .line 442
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/AppOpsService$Op;)I
    .registers 1

    .line 421
    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/appop/AppOpsService$Op;I)I
    .registers 2

    .line 421
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;
    .registers 1

    .line 421
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method private updateAccessTimeAndDuration(JJII)V
    .registers 8

    .line 511
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p5

    .line 512
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_f

    .line 513
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    .line 515
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p5, p6, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 516
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez p1, :cond_1f

    .line 517
    new-instance p1, Landroid/util/LongSparseLongArray;

    invoke-direct {p1}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    .line 519
    :cond_1f
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {p1, p5, p6, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 520
    return-void
.end method

.method private updateProxyState(JILjava/lang/String;)V
    .registers 8

    .line 524
    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    .line 525
    return-void

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_f

    .line 529
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    .line 531
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    int-to-long v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 532
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    if-nez p3, :cond_20

    .line 533
    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    .line 535
    :cond_20
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 536
    return-void
.end method


# virtual methods
.method public accessed(JILjava/lang/String;II)V
    .registers 8

    .line 455
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p5

    .line 456
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_f

    .line 457
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    .line 459
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p5, p6, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 460
    invoke-direct {p0, p5, p6, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz p1, :cond_1e

    .line 462
    invoke-virtual {p1, p5, p6}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 464
    :cond_1e
    return-void
.end method

.method public continuing(JII)V
    .registers 6

    .line 502
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p3

    .line 503
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_f

    .line 504
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    .line 506
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p3, p4, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 507
    return-void
.end method

.method evalMode()I
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    return v0
.end method

.method public finished(JJII)V
    .registers 7

    .line 489
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 490
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    .line 491
    return-void
.end method

.method getMode()I
    .registers 2

    .line 445
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method hasAnyTime()Z
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_16

    .line 540
    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-lez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 539
    :goto_17
    return v0
.end method

.method public rejected(JILjava/lang/String;II)V
    .registers 8

    .line 469
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p5

    .line 470
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_f

    .line 471
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    .line 473
    :cond_f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p5, p6, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 474
    invoke-direct {p0, p5, p6, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz p1, :cond_1e

    .line 476
    invoke-virtual {p1, p5, p6}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 478
    :cond_1e
    return-void
.end method

.method public running(JJII)V
    .registers 7

    .line 496
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 497
    return-void
.end method

.method public started(JII)V
    .registers 12

    .line 482
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 483
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    .line 484
    return-void
.end method
