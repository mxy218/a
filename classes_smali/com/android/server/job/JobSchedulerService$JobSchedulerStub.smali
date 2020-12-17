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
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/job/JobSchedulerService;

    .line 2648
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/app/job/IJobScheduler$Stub;-><init>()V

    .line 2652
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    return-void
.end method

.method private canPersistJobs(II)Z
    .registers 9
    .param p1, "pid"  # I
    .param p2, "uid"  # I

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
    .local v1, "cached":Ljava/lang/Boolean;
    if-eqz v1, :cond_12

    .line 2688
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "canPersist":Z
    goto :goto_2d

    .line 2693
    .end local v2  # "canPersist":Z
    :cond_12
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 2695
    .local v2, "result":I
    if-nez v2, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 2696
    .local v3, "canPersist":Z
    :goto_23
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->mPersistCache:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v2, v3

    .line 2698
    .end local v1  # "cached":Ljava/lang/Boolean;
    .end local v3  # "canPersist":Z
    .local v2, "canPersist":Z
    :goto_2d
    monitor-exit v0

    .line 2699
    return v2

    .line 2698
    .end local v2  # "canPersist":Z
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private enforceValidJobRequest(ILandroid/app/job/JobInfo;)V
    .registers 9
    .param p1, "uid"  # I
    .param p2, "job"  # Landroid/app/job/JobInfo;

    .line 2658
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2659
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    .line 2661
    .local v1, "service":Landroid/content/ComponentName;
    const/high16 v2, 0xc0000

    .line 2664
    :try_start_a
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2661
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 2665
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_65

    .line 2668
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p1, :cond_41

    .line 2672
    const-string v3, "android.permission.BIND_JOB_SERVICE"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2678
    .end local v2  # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_7d

    .line 2673
    .restart local v2  # "si":Landroid/content/pm/ServiceInfo;
    :cond_25
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduled service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " does not require android.permission.BIND_JOB_SERVICE permission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pm":Landroid/content/pm/IPackageManager;
    .end local v1  # "service":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
    .end local p1  # "uid":I
    .end local p2  # "job":Landroid/app/job/JobInfo;
    throw v3

    .line 2669
    .restart local v0  # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1  # "service":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
    .restart local p1  # "uid":I
    .restart local p2  # "job":Landroid/app/job/JobInfo;
    :cond_41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cannot schedule job in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2670
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pm":Landroid/content/pm/IPackageManager;
    .end local v1  # "service":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
    .end local p1  # "uid":I
    .end local p2  # "job":Landroid/app/job/JobInfo;
    throw v3

    .line 2666
    .restart local v0  # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1  # "service":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
    .restart local p1  # "uid":I
    .restart local p2  # "job":Landroid/app/job/JobInfo;
    :cond_65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pm":Landroid/content/pm/IPackageManager;
    .end local v1  # "service":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
    .end local p1  # "uid":I
    .end local p2  # "job":Landroid/app/job/JobInfo;
    throw v3
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_7c} :catch_7c

    .line 2676
    .end local v2  # "si":Landroid/content/pm/ServiceInfo;
    .restart local v0  # "pm":Landroid/content/pm/IPackageManager;
    .restart local v1  # "service":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;
    .restart local p1  # "uid":I
    .restart local p2  # "job":Landroid/app/job/JobInfo;
    :catch_7c
    move-exception v2

    .line 2679
    :goto_7d
    return-void
.end method

.method private validateJobFlags(Landroid/app/job/JobInfo;I)V
    .registers 6
    .param p1, "job"  # Landroid/app/job/JobInfo;
    .param p2, "callingUid"  # I

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

    move-result v0

    if-eqz v0, :cond_44

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Periodic jobs mustn\'t have FLAG_EXEMPT_FROM_APP_STANDBY. Job="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 2709
    :cond_3c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Job has invalid flags"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2716
    :cond_44
    :goto_44
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .registers 6
    .param p1, "jobId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2844
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2846
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2848
    .local v1, "ident":J
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
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
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
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2835
    .local v1, "ident":J
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
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

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
    .local v0, "filterUid":I
    const/4 v1, 0x0

    .line 2863
    .local v1, "proto":Z
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 2864
    const/4 v2, 0x0

    .line 2865
    .local v2, "opti":I
    :goto_18
    array-length v3, p3

    if-ge v2, v3, :cond_63

    .line 2866
    aget-object v3, p3, v2

    .line 2867
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2868
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2869
    return-void

    .line 2870
    :cond_29
    const-string v4, "-a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_3b

    .line 2872
    :cond_32
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2873
    const/4 v1, 0x1

    .line 2880
    :goto_3b
    nop

    .end local v3  # "arg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 2881
    goto :goto_18

    .line 2874
    .restart local v3  # "arg":Ljava/lang/String;
    :cond_3f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_63

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_63

    .line 2875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    return-void

    .line 2882
    .end local v3  # "arg":Ljava/lang/String;
    :cond_63
    array-length v3, p3

    if-ge v2, v3, :cond_90

    .line 2883
    aget-object v3, p3, v2

    .line 2885
    .local v3, "pkg":Ljava/lang/String;
    :try_start_68
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_78} :catch_7a

    move v0, v4

    .line 2890
    goto :goto_90

    .line 2887
    :catch_7a
    move-exception v4

    .line 2888
    .local v4, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    return-void

    .line 2894
    .end local v2  # "opti":I
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_90
    :goto_90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2896
    .local v2, "identityToken":J
    if-eqz v1, :cond_9c

    .line 2897
    :try_start_96
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, p1, v0}, Lcom/android/server/job/JobSchedulerService;->dumpInternalProto(Ljava/io/FileDescriptor;I)V

    goto :goto_a8

    .line 2899
    :cond_9c
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v0}, Lcom/android/server/job/JobSchedulerService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;I)V
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_ad

    .line 2903
    :goto_a8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    nop

    .line 2905
    return-void

    .line 2903
    :catchall_ad
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 14
    .param p1, "job"  # Landroid/app/job/JobInfo;
    .param p2, "work"  # Landroid/app/job/JobWorkItem;
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

    move-result v0

    .line 2754
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2756
    .local v1, "userId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    .line 2757
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 2760
    if-eqz p2, :cond_55

    .line 2764
    invoke-direct {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 2766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2768
    .local v9, "ident":J
    :try_start_40
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_50

    .line 2771
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2768
    return v2

    .line 2771
    :catchall_50
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2761
    .end local v9  # "ident":J
    :cond_55
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "work is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2758
    :cond_5e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t enqueue work for persisted jobs"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;
    .registers 6
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
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_30

    .line 2954
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2955
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2956
    .local v2, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobSnapshot;>;"
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v4, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;

    invoke-direct {v4, p0, v2}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$JobSchedulerStub$9zQe5CBU32yn1NEDzLYvt_QAEGk;-><init>(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2959
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v3

    .line 2960
    .end local v2  # "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobSnapshot;>;"
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw v2

    .line 2951
    :cond_30
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "getAllJobSnapshots() is system internal use only."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2812
    .local v1, "ident":J
    :try_start_8
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobs(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 2814
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2812
    return-object v3

    .line 2814
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .registers 6
    .param p1, "jobId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2822
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2824
    .local v1, "ident":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJob(II)Landroid/app/job/JobInfo;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 2826
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2824
    return-object v3

    .line 2826
    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getStartedJobs()Ljava/util/List;
    .registers 8
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
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_41

    .line 2928
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2929
    :try_start_d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2930
    .local v2, "runningJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobServiceContext;

    .line 2931
    .local v4, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    .line 2932
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v5, :cond_3b

    .line 2933
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2935
    .end local v4  # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v5  # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_3b
    goto :goto_22

    .line 2936
    :cond_3c
    monitor-exit v1

    .line 2938
    return-object v2

    .line 2936
    .end local v2  # "runningJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_3e

    throw v2

    .line 2922
    :cond_41
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "getStartedJobs() is system internal use only."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic lambda$getAllJobSnapshots$0$JobSchedulerService$JobSchedulerStub(Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7
    .param p1, "snapshots"  # Ljava/util/ArrayList;
    .param p2, "job"  # Lcom/android/server/job/controllers/JobStatus;

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

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/job/JobSnapshot;-><init>(Landroid/app/job/JobInfo;IZ)V

    .line 2956
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

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
    .registers 14
    .param p1, "job"  # Landroid/app/job/JobInfo;
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
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2726
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2728
    .local v9, "userId":I
    invoke-direct {p0, v8, p1}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->enforceValidJobRequest(ILandroid/app/job/JobInfo;)V

    .line 2729
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2730
    invoke-direct {p0, v0, v8}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->canPersistJobs(II)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_42

    .line 2731
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error: requested job be persisted without holding RECEIVE_BOOT_COMPLETED permission."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2736
    :cond_42
    :goto_42
    invoke-direct {p0, p1, v8}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 2738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2740
    .local v10, "ident":J
    :try_start_49
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v4, v8

    move v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result v1
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_59

    .line 2743
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    return v1

    .line 2743
    :catchall_59
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 16
    .param p1, "job"  # Landroid/app/job/JobInfo;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2779
    .local v7, "callerUid":I
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "Caller uid "

    if-eqz v0, :cond_37

    .line 2780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    if-eqz p2, :cond_7d

    .line 2788
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    .line 2790
    .local v8, "mayScheduleForOthers":I
    if-nez v8, :cond_63

    .line 2795
    invoke-direct {p0, p1, v7}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->validateJobFlags(Landroid/app/job/JobInfo;I)V

    .line 2797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2799
    .local v9, "ident":J
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, v7

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobSchedulerService;->scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I

    move-result v0
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_5e

    .line 2802
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2799
    return v0

    .line 2802
    :catchall_5e
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2791
    .end local v9  # "ident":J
    :cond_63
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not permitted to schedule jobs for other apps"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2785
    .end local v8  # "mayScheduleForOthers":I
    :cond_7d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must specify a package for scheduleAsPackage()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
