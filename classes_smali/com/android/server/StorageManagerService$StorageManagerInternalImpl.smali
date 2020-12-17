.class final Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;
.super Landroid/os/storage/StorageManagerInternal;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StorageManagerInternalImpl"
.end annotation


# instance fields
.field private final mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mResetListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mResetListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/StorageManagerInternal$ResetListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 4057
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageManagerInternal;-><init>()V

    .line 4059
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4062
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/StorageManagerService;
    .param p2, "x1"  # Lcom/android/server/StorageManagerService$1;

    .line 4057
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V
    .registers 3
    .param p1, "policy"  # Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4069
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4070
    return-void
.end method

.method public addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/os/storage/StorageManagerInternal$ResetListener;

    .line 4108
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 4109
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4110
    monitor-exit v0

    .line 4111
    return-void

    .line 4110
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 8
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 4080
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4081
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 4084
    :cond_d
    const/4 v0, 0x0

    if-nez p2, :cond_20

    .line 4085
    :try_start_10
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$5600(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4086
    .local v1, "packagesForUid":[Ljava/lang/String;
    aget-object v2, v1, v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1e

    move-object p2, v2

    goto :goto_20

    .line 4088
    .end local v1  # "packagesForUid":[Ljava/lang/String;
    :catch_1e
    move-exception v1

    goto :goto_21

    .line 4090
    :cond_20
    :goto_20
    nop

    .line 4092
    :goto_21
    const v1, 0x7fffffff

    .line 4093
    .local v1, "mountMode":I
    iget-object v2, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4094
    .local v3, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v3, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    move-result v4

    .line 4095
    .local v4, "policyMode":I
    if-nez v4, :cond_3d

    .line 4096
    return v0

    .line 4098
    :cond_3d
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4099
    .end local v3  # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v4  # "policyMode":I
    goto :goto_2a

    .line 4100
    :cond_42
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_48

    .line 4101
    return v0

    .line 4103
    :cond_48
    return v1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 4124
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 4125
    return v0

    .line 4127
    :cond_6
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 4128
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0

    .line 4131
    :cond_18
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4132
    .local v3, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v3, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v4

    .line 4133
    .local v4, "policyHasStorage":Z
    if-nez v4, :cond_31

    .line 4134
    return v2

    .line 4136
    .end local v3  # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v4  # "policyHasStorage":Z
    :cond_31
    goto :goto_1e

    .line 4137
    :cond_32
    return v0
.end method

.method public onAppOpsChanged(IILjava/lang/String;I)V
    .registers 9
    .param p1, "code"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "mode"  # I

    .line 4142
    if-nez p4, :cond_30

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_e

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_e

    const/16 v0, 0x42

    if-ne p1, v0, :cond_30

    .line 4145
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4147
    .local v0, "token":J
    :try_start_12
    const-class v2, Landroid/os/UserManagerInternal;

    .line 4148
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    .line 4149
    .local v2, "userManagerInternal":Landroid/os/UserManagerInternal;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4150
    invoke-virtual {p0, p2, p3}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 4153
    .end local v2  # "userManagerInternal":Landroid/os/UserManagerInternal;
    :cond_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4154
    goto :goto_30

    .line 4153
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4156
    .end local v0  # "token":J
    :cond_30
    :goto_30
    return-void
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 4074
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    .line 4075
    .local v0, "mountMode":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/StorageManagerService;->access$4900(Lcom/android/server/StorageManagerService;II)V

    .line 4076
    return-void
.end method

.method public onReset(Landroid/os/IVold;)V
    .registers 5
    .param p1, "vold"  # Landroid/os/IVold;

    .line 4114
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 4115
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal$ResetListener;

    .line 4116
    .local v2, "listener":Landroid/os/storage/StorageManagerInternal$ResetListener;
    invoke-interface {v2, p1}, Landroid/os/storage/StorageManagerInternal$ResetListener;->onReset(Landroid/os/IVold;)V

    .line 4117
    .end local v2  # "listener":Landroid/os/storage/StorageManagerInternal$ResetListener;
    goto :goto_9

    .line 4118
    :cond_19
    monitor-exit v0

    .line 4119
    return-void

    .line 4118
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
