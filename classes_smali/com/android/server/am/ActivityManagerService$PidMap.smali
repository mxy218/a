.class final Lcom/android/server/am/ActivityManagerService$PidMap;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PidMap"
.end annotation


# instance fields
.field private final mPidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 735
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method get(I)Lcom/android/server/am/ProcessRecord;
    .registers 3

    .line 791
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    return-object p1
.end method

.method indexOfKey(I)I
    .registers 3

    .line 807
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    return p1
.end method

.method keyAt(I)I
    .registers 3

    .line 803
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method put(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 744
    monitor-enter p0

    .line 745
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_17

    .line 747
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessMapped(ILcom/android/server/wm/WindowProcessController;)V

    .line 748
    return-void

    .line 746
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method remove(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 756
    nop

    .line 757
    monitor-enter p0

    .line 758
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 759
    if-eqz v0, :cond_1f

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 760
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 761
    const/4 v0, 0x1

    goto :goto_20

    .line 763
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2d

    .line 764
    if-eqz v0, :cond_2c

    .line 765
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessUnMapped(I)V

    .line 767
    :cond_2c
    return-void

    .line 763
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method removeIfNoThread(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    .line 775
    nop

    .line 776
    monitor-enter p0

    .line 777
    :try_start_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_1f

    iget-wide v0, v0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1f

    .line 780
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 781
    const/4 v0, 0x1

    goto :goto_20

    .line 783
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2d

    .line 784
    if-eqz v0, :cond_2c

    .line 785
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessUnMapped(I)V

    .line 787
    :cond_2c
    return v0

    .line 783
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method size()I
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/ProcessRecord;
    .registers 3

    .line 799
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    return-object p1
.end method
