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
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;

    .line 805
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method get(I)Lcom/android/server/am/ProcessRecord;
    .registers 3
    .param p1, "pid"  # I

    .line 869
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method indexOfKey(I)I
    .registers 3
    .param p1, "key"  # I

    .line 885
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method keyAt(I)I
    .registers 3
    .param p1, "index"  # I

    .line 881
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method put(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 814
    monitor-enter p0

    .line 815
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 816
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2b

    .line 817
    const-class v0, Lcom/android/server/ActivityTriggerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ActivityTriggerService;

    .line 818
    .local v0, "atService":Lcom/android/server/ActivityTriggerService;
    if-eqz v0, :cond_1d

    .line 819
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ActivityTriggerService;->updateRecord(Lcom/android/server/am/HostingRecord;Landroid/content/pm/ApplicationInfo;II)V

    .line 821
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessMapped(ILcom/android/server/wm/WindowProcessController;)V

    .line 822
    return-void

    .line 816
    .end local v0  # "atService":Lcom/android/server/ActivityTriggerService;
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method remove(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "removed":Z
    monitor-enter p0

    .line 832
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 833
    .local v1, "existingApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1e

    iget-wide v2, v1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    .line 834
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 835
    const/4 v0, 0x1

    .line 837
    .end local v1  # "existingApp":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_3f

    .line 838
    if-eqz v0, :cond_3e

    .line 839
    const-class v1, Lcom/android/server/ActivityTriggerService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ActivityTriggerService;

    .line 840
    .local v1, "atService":Lcom/android/server/ActivityTriggerService;
    if-eqz v1, :cond_35

    .line 841
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/ActivityTriggerService;->updateRecord(Lcom/android/server/am/HostingRecord;Landroid/content/pm/ApplicationInfo;II)V

    .line 843
    :cond_35
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessUnMapped(I)V

    .line 845
    .end local v1  # "atService":Lcom/android/server/ActivityTriggerService;
    :cond_3e
    return-void

    .line 837
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method removeIfNoThread(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, "removed":Z
    monitor-enter p0

    .line 855
    :try_start_2
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 856
    .local v1, "existingApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1e

    iget-wide v2, v1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    iget-wide v4, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_1e

    .line 858
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 859
    const/4 v0, 0x1

    .line 861
    .end local v1  # "existingApp":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_2b

    .line 862
    if-eqz v0, :cond_2a

    .line 863
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onProcessUnMapped(I)V

    .line 865
    :cond_2a
    return v0

    .line 861
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method size()I
    .registers 2

    .line 873
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method valueAt(I)Lcom/android/server/am/ProcessRecord;
    .registers 3
    .param p1, "index"  # I

    .line 877
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method
