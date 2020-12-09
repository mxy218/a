.class Lcom/android/server/pm/PackageManagerService$PackageFreezer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFreezer"
.end annotation


# instance fields
.field private final mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageName:Ljava/lang/String;

.field private final mWeFroze:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 23454
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23445
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23446
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23455
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 23456
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 23457
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 23458
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 23459
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    .line 23461
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23445
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23446
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 23462
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 23463
    :try_start_15
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    .line 23464
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    .line 23466
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 23467
    if-eqz v1, :cond_36

    .line 23468
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p1, v2, v1, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILjava/lang/String;)V

    .line 23471
    :cond_36
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageParser$Package;

    .line 23472
    if-eqz p2, :cond_68

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_68

    .line 23473
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23474
    new-array v2, v1, [Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 23475
    const/4 v2, 0x0

    :goto_4f
    if-ge v2, v1, :cond_67

    .line 23476
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v4, p1, v5, p3, p4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v4, v3, v2

    .line 23475
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 23479
    :cond_67
    goto :goto_6b

    .line 23480
    :cond_68
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 23482
    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_15 .. :try_end_6c} :catchall_74

    .line 23483
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p2, "close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 23484
    return-void

    .line 23482
    :catchall_74
    move-exception p1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 23498
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 23499
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 23500
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 23501
    :try_start_14
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    if-eqz v1, :cond_21

    .line 23502
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 23505
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    if-eqz v1, :cond_32

    .line 23506
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    array-length v3, v1

    :goto_28
    if-ge v2, v3, :cond_32

    aget-object v4, v1, v2

    .line 23507
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 23506
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 23510
    :cond_32
    monitor-exit v0

    goto :goto_37

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw v1

    .line 23512
    :cond_37
    :goto_37
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23489
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 23490
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 23492
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 23493
    nop

    .line 23494
    return-void

    .line 23492
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
