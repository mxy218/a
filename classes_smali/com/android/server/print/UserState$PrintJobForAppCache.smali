.class final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field private final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 2

    .line 1741
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1742
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V
    .registers 3

    .line 1741
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .registers 1

    .line 1741
    iget-object p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 20

    .line 1835
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1836
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v8, :cond_63

    .line 1837
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 1838
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    .line 1839
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 1840
    const/4 v14, 0x0

    :goto_21
    if-ge v14, v13, :cond_5e

    .line 1841
    const-wide v1, 0x20b00000005L

    const-string v3, "cached_print_jobs"

    invoke-virtual {v7, v3, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1844
    const-wide v1, 0x10500000001L

    const-string v3, "app_id"

    invoke-virtual {v7, v3, v1, v2, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1846
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;

    move-result-object v1

    const-wide v15, 0x10b00000002L

    .line 1847
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/print/PrintJobInfo;

    .line 1846
    const-string/jumbo v3, "print_job"

    move-object/from16 v2, p1

    move/from16 v17, v10

    move-wide v9, v4

    move-wide v4, v15

    invoke-static/range {v1 .. v6}, Lcom/android/internal/print/DumpUtils;->writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V

    .line 1849
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1840
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v17

    goto :goto_21

    .line 1836
    :cond_5e
    move/from16 v17, v10

    add-int/lit8 v10, v17, 0x1

    goto :goto_b

    .line 1852
    :cond_63
    return-void
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 9

    .line 1790
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1791
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1792
    const/4 v1, 0x0

    if-nez p2, :cond_14

    .line 1793
    monitor-exit v0

    return-object v1

    .line 1795
    :cond_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1796
    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_30

    .line 1797
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 1798
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1799
    monitor-exit v0

    return-object v4

    .line 1796
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1802
    :cond_30
    monitor-exit v0

    .line 1803
    return-object v1

    .line 1802
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 1807
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1808
    const/4 v1, 0x0

    .line 1809
    const/4 v2, -0x2

    if-ne p1, v2, :cond_2a

    .line 1810
    :try_start_b
    iget-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1811
    const/4 v2, 0x0

    :goto_12
    if-ge v2, p1, :cond_29

    .line 1812
    iget-object v3, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1813
    if-nez v1, :cond_23

    .line 1814
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    :cond_23
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1811
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1818
    :cond_29
    goto :goto_3d

    .line 1819
    :cond_2a
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1820
    if-eqz p1, :cond_3d

    .line 1821
    nop

    .line 1822
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1824
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1827
    :cond_3d
    :goto_3d
    if-eqz v1, :cond_41

    .line 1828
    monitor-exit v0

    return-object v1

    .line 1830
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1831
    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_47

    throw p1
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .registers 6

    .line 1748
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_2e

    .line 1760
    nop

    .line 1761
    iget-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {p1}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1762
    :try_start_11
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1763
    if-nez v0, :cond_25

    .line 1764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1767
    :cond_25
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    monitor-exit p1

    .line 1769
    const/4 p1, 0x1

    return p1

    .line 1768
    :catchall_2b
    move-exception p2

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2b

    throw p2

    .line 1757
    :catch_2e
    move-exception p1

    .line 1759
    return v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 8

    .line 1773
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1774
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 1775
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v2

    .line 1774
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1776
    if-nez v1, :cond_17

    .line 1777
    monitor-exit v0

    return-void

    .line 1779
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1780
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_38

    .line 1781
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 1782
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1783
    invoke-interface {v1, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1780
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1786
    :cond_38
    monitor-exit v0

    .line 1787
    return-void

    .line 1786
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw p1
.end method
