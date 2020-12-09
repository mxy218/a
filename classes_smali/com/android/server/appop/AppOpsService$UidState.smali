.class final Lcom/android/server/appop/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidState"
.end annotation


# instance fields
.field public foregroundOps:Landroid/util/SparseBooleanArray;

.field public hasForegroundWatchers:Z

.field public opModes:Landroid/util/SparseIntArray;

.field public pendingState:I

.field public pendingStateCommitTime:J

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public startNesting:I

.field public state:I

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 328
    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 340
    iput p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 341
    return-void
.end method

.method private evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 366
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 367
    if-eqz p2, :cond_28

    .line 368
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_13
    if-nez v0, :cond_28

    if-ltz v1, :cond_28

    .line 369
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_25

    .line 371
    iput-boolean v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 372
    move v0, v2

    .line 368
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 376
    :cond_28
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 377
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 345
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 346
    return-void
.end method

.method public evalForegroundOps(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;)V"
        }
    .end annotation

    .line 380
    nop

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 382
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    .line 383
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_2d

    .line 384
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v1, :cond_2a

    .line 385
    if-nez v2, :cond_21

    .line 386
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 388
    :cond_21
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 383
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 392
    :cond_2d
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_69

    .line 393
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_37
    if-ltz v0, :cond_69

    .line 394
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 395
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_47
    if-ltz v4, :cond_66

    .line 396
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-ne v5, v1, :cond_63

    .line 397
    if-nez v2, :cond_5c

    .line 398
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 400
    :cond_5c
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5, p1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 395
    :cond_63
    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    .line 393
    :cond_66
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    .line 405
    :cond_69
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    .line 406
    return-void
.end method

.method evalMode(II)I
    .registers 4

    .line 356
    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    .line 357
    iget p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result p1

    if-gt p2, p1, :cond_d

    .line 358
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    const/4 p1, 0x1

    .line 357
    :goto_e
    return p1

    .line 360
    :cond_f
    return p2
.end method

.method public isDefault()Z
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_14

    .line 350
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_20

    :cond_14
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_20

    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 349
    :goto_21
    return v0
.end method
