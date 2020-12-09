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

    .line 3944
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageManagerInternal;-><init>()V

    .line 3946
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3949
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V
    .registers 3

    .line 3944
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V
    .registers 3

    .line 3956
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3957
    return-void
.end method

.method public addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
    .registers 4

    .line 3995
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 3996
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3997
    monitor-exit v0

    .line 3998
    return-void

    .line 3997
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .registers 8

    .line 3967
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3968
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result p1

    return p1

    .line 3971
    :cond_d
    const/4 v0, 0x0

    if-nez p2, :cond_1f

    .line 3972
    :try_start_10
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$5600(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3973
    aget-object p2, v1, v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_1f

    .line 3975
    :catch_1d
    move-exception v1

    goto :goto_20

    .line 3977
    :cond_1f
    :goto_1f
    nop

    .line 3979
    :goto_20
    nop

    .line 3980
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    move v3, v2

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 3981
    invoke-interface {v4, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    move-result v4

    .line 3982
    if-nez v4, :cond_3e

    .line 3983
    return v0

    .line 3985
    :cond_3e
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3986
    goto :goto_2b

    .line 3987
    :cond_43
    if-ne v3, v2, :cond_46

    .line 3988
    return v0

    .line 3990
    :cond_46
    return v3
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 7

    .line 4011
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 4012
    return v0

    .line 4014
    :cond_6
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 4015
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0

    .line 4018
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

    .line 4019
    invoke-interface {v3, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v3

    .line 4020
    if-nez v3, :cond_31

    .line 4021
    return v2

    .line 4023
    :cond_31
    goto :goto_1e

    .line 4024
    :cond_32
    return v0
.end method

.method public onAppOpsChanged(IILjava/lang/String;I)V
    .registers 7

    .line 4029
    if-nez p4, :cond_30

    const/16 p4, 0x3b

    if-eq p1, p4, :cond_e

    const/16 p4, 0x3c

    if-eq p1, p4, :cond_e

    const/16 p4, 0x42

    if-ne p1, p4, :cond_30

    .line 4032
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4034
    :try_start_12
    const-class p1, Landroid/os/UserManagerInternal;

    .line 4035
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManagerInternal;

    .line 4036
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 4037
    invoke-virtual {p0, p2, p3}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 4040
    :cond_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4041
    goto :goto_30

    .line 4040
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4043
    :cond_30
    :goto_30
    return-void
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .registers 4

    .line 3961
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result p2

    .line 3962
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/StorageManagerService;->access$4900(Lcom/android/server/StorageManagerService;II)V

    .line 3963
    return-void
.end method

.method public onReset(Landroid/os/IVold;)V
    .registers 5

    .line 4001
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 4002
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

    .line 4003
    invoke-interface {v2, p1}, Landroid/os/storage/StorageManagerInternal$ResetListener;->onReset(Landroid/os/IVold;)V

    .line 4004
    goto :goto_9

    .line 4005
    :cond_19
    monitor-exit v0

    .line 4006
    return-void

    .line 4005
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method
