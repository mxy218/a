.class final Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
.super Landroid/app/job/IJobScheduler$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JobSchedulerStub"
.end annotation


# instance fields
.field private final mPersistCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2648
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/app/job/IJobScheduler$Stub;-><init>()V

    .line 2652
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    return-void
.end method

.method private canPersistJobs(II)Z
    .registers 6

    .line 2685
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 2687
    if-eqz v1, :cond_12

    .line 2688
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2c

    .line 2693
    :cond_12
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    .line 2695
    if-nez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 2696
    :goto_23
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2698
    :goto_2c
    monitor-exit v0

    .line 2699
    return p1

    .line 2698
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private enforceValidJobRequest(ILandroid/app/job/JobInfo;)V
    .registers 6

    .line 2658
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2659
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p2

    .line 2661
    const/high16 v1, 0xc0000

    .line 2664
    :try_start_a
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2661
    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 2665
    if-eqz v0, :cond_65

    .line 2668
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_41

    .line 2672
    const-string p1, "android.permission.BIND_JOB_SERVICE"

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2678
    goto :goto_7d

    .line 2673
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not require android.permission.BIND_JOB_SERVICE permission"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2669
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot schedule job in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2670
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2666
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_7c} :catch_7c

    .line 2676
    :catch_7c
    move-exception p1

    .line 2679
    :goto_7d
    return-void
.end method

.method private validateJobFlags(Landroid/app/job/JobInfo;I)V
    .registers 6

    .line 2703
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_15

    .line 2704
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    :cond_15
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_44

    .line 2708
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3c

    .line 2711
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p2

    if-eqz p2, :cond_44

    .line 2712
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Periodic jobs mustn\'t have FLAG_EXEMPT_FROM_APP_STANDBY. Job="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 2709
    :cond_3c
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Job has invalid flags"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2716
    :cond_44
    :goto_44
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2844
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2846
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2848
    :try_start_8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->cancelJob(III)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    .line 2850
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2851
    nop

    .line 2852
    return-void

    .line 2850
    :catchall_12
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public cancelAll()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2835
    :try_start_8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAll() called by app, callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_23

    .line 2838
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2839
    nop

    .line 2840
    return-void

    .line 2838
    :catchall_23
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 2859
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2861
    :cond_f
    const/4 v0, -0x1

    .line 2862
    nop

    .line 2863
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8f

    .line 2864
    move v1, v2

    move v3, v1

    .line 2865
    :goto_1a
    array-length v4, p3

    if-ge v1, v4, :cond_63

    .line 2866
    aget-object v4, p3, v1

    .line 2867
    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2868
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2869
    return-void

    .line 2870
    :cond_2b
    const-string v5, "-a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    goto :goto_3d

    .line 2872
    :cond_34
    const-string v5, "--proto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2873
    const/4 v3, 0x1

    .line 2880
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    .line 2881
    goto :goto_1a

    .line 2874
    :cond_40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_63

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_63

    .line 2875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown option: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    return-void

    .line 2882
    :cond_63
    array-length v2, p3

    if-ge v1, v2, :cond_90

    .line 2883
    aget-object p3, p3, v1

    .line 2885
    :try_start_68
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_78} :catch_79

    .line 2890
    goto :goto_90

    .line 2887
    :catch_79
    move-exception p1

    .line 2888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    return-void

    .line 2863
    :cond_8f
    move v3, v2

    .line 2894
    :cond_90
    :goto_90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2896
    if-eqz v3, :cond_9c

    .line 2897
    :try_start_96
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/job/JobSchedulerService;->dumpInternalProto(Ljava/io/FileDescriptor;I)V

    goto :goto_a8

    .line 2899
    :cond_9c
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {p3, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Lcom/android/server/job/JobSchedulerService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;I)V
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_ad

    .line 2903
    :goto_a8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    nop

    .line 2905
    return-void

    .line 2903
    :catchall_ad
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2750
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueueing job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " work: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    :cond_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2754
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2756
    invoke-direct {p0, v5, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    .line 2757
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2760
    if-eqz p2, :cond_53

    .line 2764
    invoke-direct {p0, p1, v5}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 2766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2768
    :try_start_40
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_4e

    .line 2771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2768
    return p1

    .line 2771
    :catchall_4e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2761
    :cond_53
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "work is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2758
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t enqueue work for persisted jobs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation

    .line 2949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2950
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_30

    .line 2954
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2955
    :try_start_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2956
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;

    invoke-direct {v3, p0, v1}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;-><init>(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2959
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v2

    .line 2960
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw v1

    .line 2951
    :cond_30
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getAllJobSnapshots() is system internal use only."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllPendingJobs()Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2808
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2812
    :try_start_8
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobs(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2812
    return-object v3

    .line 2814
    :catchall_17
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2822
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2824
    :try_start_8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJob(II)Landroid/app/job/JobInfo;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 2826
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2824
    return-object p1

    .line 2826
    :catchall_12
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getStartedJobs()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 2920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2921
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_41

    .line 2928
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2929
    :try_start_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2930
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 2931
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 2932
    if-eqz v3, :cond_3b

    .line 2933
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2935
    :cond_3b
    goto :goto_22

    .line 2936
    :cond_3c
    monitor-exit v0

    .line 2938
    return-object v1

    .line 2936
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_3e

    throw v1

    .line 2922
    :cond_41
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getStartedJobs() is system internal use only."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$getAllJobSnapshots$0$JobSchedulerService$JobSchedulerStub(Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7

    .line 2956
    new-instance v0, Landroid/app/job/JobSnapshot;

    .line 2957
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSatisfiedConstraintFlags()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 2958
    invoke-static {v3, p2}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    invoke-direct {v0, v1, v2, p2}, Landroid/app/job/JobSnapshot;-><init>(Landroid/app/job/JobInfo;IZ)V

    .line 2956
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2910
    new-instance v0, Lcom/android/server/job/JobSchedulerShellCommand;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobSchedulerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2912
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2721
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 2722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2726
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2728
    invoke-direct {p0, v4, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    .line 2729
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2730
    invoke-direct {p0, v0, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->canPersistJobs(II)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_42

    .line 2731
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: requested job be persisted without holding RECEIVE_BOOT_COMPLETED permission."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2736
    :cond_42
    :goto_42
    invoke-direct {p0, p1, v4}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 2738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2740
    :try_start_49
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_57

    .line 2743
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    return p1

    .line 2743
    :catchall_57
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2779
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "Caller uid "

    if-eqz v0, :cond_37

    .line 2780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " scheduling job: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on behalf of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JobScheduler"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_37
    if-eqz p2, :cond_7c

    .line 2788
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 2790
    if-nez v0, :cond_62

    .line 2795
    invoke-direct {p0, p1, v3}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 2797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2799
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_5d

    .line 2802
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2799
    return p1

    .line 2802
    :catchall_5d
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2791
    :cond_62
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " not permitted to schedule jobs for other apps"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2785
    :cond_7c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Must specify a package for scheduleAsPackage()"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
