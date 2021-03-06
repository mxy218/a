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
    .registers 5
    .param p1, "uidState"  # Lcom/android/server/appop/AppOpsService$UidState;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "op"  # I

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 447
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 448
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 449
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    .line 450
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/AppOpsService$Op;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService$Op;

    .line 429
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/appop/AppOpsService$Op;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "x1"  # I

    .line 429
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService$Op;

    .line 429
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService$Op;

    .line 429
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService$Op;

    .line 429
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService$Op;

    .line 429
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appop/AppOpsService$Op;

    .line 429
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private updateAccessTimeAndDuration(JJII)V
    .registers 10
    .param p1, "time"  # J
    .param p3, "duration"  # J
    .param p5, "uidState"  # I
    .param p6, "flags"  # I

    .line 519
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 520
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_f

    .line 521
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    .line 523
    :cond_f
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 524
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_1f

    .line 525
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    .line 527
    :cond_1f
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 528
    return-void
.end method

.method private updateProxyState(JILjava/lang/String;)V
    .registers 8
    .param p1, "key"  # J
    .param p3, "proxyUid"  # I
    .param p4, "proxyPackageName"  # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_b

    .line 533
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    .line 535
    :cond_b
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    int-to-long v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 536
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1c

    .line 537
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    .line 539
    :cond_1c
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 540
    return-void
.end method


# virtual methods
.method public accessed(JILjava/lang/String;II)V
    .registers 10
    .param p1, "time"  # J
    .param p3, "proxyUid"  # I
    .param p4, "proxyPackageName"  # Ljava/lang/String;
    .param p5, "uidState"  # I
    .param p6, "flags"  # I

    .line 463
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 464
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_f

    .line 465
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    .line 467
    :cond_f
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 468
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz v2, :cond_1e

    .line 470
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 472
    :cond_1e
    return-void
.end method

.method public continuing(JII)V
    .registers 8
    .param p1, "duration"  # J
    .param p3, "uidState"  # I
    .param p4, "flags"  # I

    .line 510
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 511
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_f

    .line 512
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    .line 514
    :cond_f
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 515
    return-void
.end method

.method evalMode()I
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    return v0
.end method

.method public finished(JJII)V
    .registers 8
    .param p1, "time"  # J
    .param p3, "duration"  # J
    .param p5, "uidState"  # I
    .param p6, "flags"  # I

    .line 497
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    .line 499
    return-void
.end method

.method getMode()I
    .registers 2

    .line 453
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method hasAnyTime()Z
    .registers 2

    .line 543
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_16

    .line 544
    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-lez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 543
    :goto_17
    return v0
.end method

.method public rejected(JILjava/lang/String;II)V
    .registers 10
    .param p1, "time"  # J
    .param p3, "proxyUid"  # I
    .param p4, "proxyPackageName"  # Ljava/lang/String;
    .param p5, "uidState"  # I
    .param p6, "flags"  # I

    .line 477
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 478
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_f

    .line 479
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    .line 481
    :cond_f
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 482
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz v2, :cond_1e

    .line 484
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 486
    :cond_1e
    return-void
.end method

.method public running(JJII)V
    .registers 7
    .param p1, "time"  # J
    .param p3, "duration"  # J
    .param p5, "uidState"  # I
    .param p6, "flags"  # I

    .line 504
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 505
    return-void
.end method

.method public started(JII)V
    .registers 12
    .param p1, "time"  # J
    .param p3, "uidState"  # I
    .param p4, "flags"  # I

    .line 490
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    .line 492
    return-void
.end method
