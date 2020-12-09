.class final Lcom/android/server/am/ProcessList$IsolatedUidRange;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IsolatedUidRange"
.end annotation


# instance fields
.field public final mFirstUid:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLastUid:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNextUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation
.end field

.field private final mUidUsed:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;II)V
    .registers 4

    .line 400
    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 401
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 402
    iput p3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 403
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 404
    return-void
.end method


# virtual methods
.method allocateIsolatedUidLocked(I)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 409
    iget v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 410
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v0, :cond_35

    .line 411
    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    iget v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    if-lt v4, v5, :cond_15

    iget v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    if-le v4, v5, :cond_19

    .line 412
    :cond_15
    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    iput v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 414
    :cond_19
    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    invoke-static {p1, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 415
    iget v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 416
    iget-object v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-nez v5, :cond_32

    .line 417
    iget-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 418
    return v4

    .line 410
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 421
    :cond_35
    const/4 p1, -0x1

    return p1
.end method

.method freeIsolatedUidLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 427
    return-void
.end method
