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
    .param p1, "uid"  # I

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 336
    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 348
    iput p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 349
    return-void
.end method

.method private evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 9
    .param p1, "op"  # I
    .param p3, "which"  # Landroid/util/SparseBooleanArray;
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

    .line 373
    .local p2, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 374
    .local v0, "curValue":Z
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 375
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v1, :cond_28

    .line 376
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "cbi":I
    :goto_13
    if-nez v0, :cond_28

    if-ltz v2, :cond_28

    .line 377
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_25

    .line 379
    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 380
    const/4 v0, 0x1

    .line 376
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 384
    .end local v2  # "cbi":I
    :cond_28
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 385
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 353
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 354
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

    .line 388
    .local p1, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    .line 389
    .local v0, "which":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 390
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    if-eqz v1, :cond_2d

    .line 391
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_2d

    .line 392
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v2, :cond_2a

    .line 393
    if-nez v0, :cond_21

    .line 394
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v3

    .line 396
    :cond_21
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 391
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 400
    .end local v1  # "i":I
    :cond_2d
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_6a

    .line 401
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_37
    if-ltz v1, :cond_6a

    .line 402
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 403
    .local v3, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_47
    if-ltz v4, :cond_67

    .line 404
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->access$100(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-ne v5, v2, :cond_64

    .line 405
    if-nez v0, :cond_5d

    .line 406
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v5

    .line 408
    :cond_5d
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5, p1, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 403
    :cond_64
    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    .line 401
    .end local v3  # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v4  # "j":I
    :cond_67
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    .line 413
    .end local v1  # "i":I
    :cond_6a
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    .line 414
    return-void
.end method

.method evalMode(II)I
    .registers 5
    .param p1, "op"  # I
    .param p2, "mode"  # I

    .line 364
    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    .line 365
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 366
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    .line 365
    :goto_e
    return v0

    .line 368
    :cond_f
    return p2
.end method

.method public isDefault()Z
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_14

    .line 358
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

    .line 357
    :goto_21
    return v0
.end method
