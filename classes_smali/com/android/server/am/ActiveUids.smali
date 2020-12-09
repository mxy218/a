.class final Lcom/android/server/am/ActiveUids;
.super Ljava/lang/Object;
.source "ActiveUids.java"


# instance fields
.field private final mActiveUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPostChangesToAtm:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 30
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 31
    iput-boolean p2, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    .line 32
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 50
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onActiveUidsCleared()V

    .line 53
    :cond_10
    return-void
.end method

.method get(I)Lcom/android/server/am/UidRecord;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/UidRecord;

    return-object p1
.end method

.method indexOfKey(I)I
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    return p1
.end method

.method keyAt(I)I
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method put(ILcom/android/server/am/UidRecord;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_14

    .line 37
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidActive(II)V

    .line 39
    :cond_14
    return-void
.end method

.method remove(I)V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 43
    iget-boolean v0, p0, Lcom/android/server/am/ActiveUids;->mPostChangesToAtm:Z

    if-eqz v0, :cond_10

    .line 44
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidInactive(I)V

    .line 46
    :cond_10
    return-void
.end method

.method size()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/UidRecord;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/UidRecord;

    return-object p1
.end method
