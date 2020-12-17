.class final Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4560
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4561
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4562
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 4563
    return-void
.end method

.method private isDefault([Z)Z
    .registers 7
    .param p1, "array"  # [Z

    .line 4696
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4697
    return v1

    .line 4699
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_15

    aget-boolean v4, p1, v3

    .line 4700
    .local v4, "value":Z
    if-eqz v4, :cond_12

    .line 4701
    return v2

    .line 4699
    .end local v4  # "value":Z
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4704
    :cond_15
    return v1
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .line 4671
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 4672
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$1200(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4673
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_14

    .line 4674
    monitor-exit v0

    return-void

    .line 4676
    :cond_14
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4677
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_40

    .line 4678
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    .line 4679
    .local v3, "restrictions":[Z
    array-length v4, v3

    .line 4680
    .local v4, "restrictionCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_27
    if-ge v5, v4, :cond_3d

    .line 4681
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_3a

    .line 4682
    move v6, v5

    .line 4683
    .local v6, "changedCode":I
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;-><init>(Lcom/android/server/appop/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4680
    .end local v6  # "changedCode":I
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 4677
    .end local v3  # "restrictions":[Z
    .end local v4  # "restrictionCount":I
    .end local v5  # "j":I
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4687
    .end local v2  # "i":I
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4688
    .end local v1  # "userCount":I
    monitor-exit v0

    .line 4689
    return-void

    .line 4688
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public destroy()V
    .registers 3

    .line 4692
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4693
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .registers 8
    .param p1, "restriction"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 4630
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4631
    return v1

    .line 4633
    :cond_6
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 4634
    .local v0, "restrictions":[Z
    if-nez v0, :cond_f

    .line 4635
    return v1

    .line 4637
    :cond_f
    aget-boolean v2, v0, p1

    if-nez v2, :cond_14

    .line 4638
    return v1

    .line 4640
    :cond_14
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    .line 4641
    return v2

    .line 4643
    :cond_1a
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4644
    .local v1, "perUserExclusions":[Ljava/lang/String;
    if-nez v1, :cond_23

    .line 4645
    return v2

    .line 4647
    :cond_23
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public isDefault()Z
    .registers 2

    .line 4666
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public synthetic lambda$binderDied$0$AppOpsService$ClientRestrictionState(I)V
    .registers 4
    .param p1, "changedCode"  # I

    .line 4683
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->access$1300(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method

.method public removeUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 4651
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 4652
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4653
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 4654
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4657
    :cond_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_23

    .line 4658
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4659
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_23

    .line 4660
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4663
    :cond_23
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .registers 13
    .param p1, "code"  # I
    .param p2, "restricted"  # Z
    .param p3, "excludedPackages"  # [Ljava/lang/String;
    .param p4, "userId"  # I

    .line 4567
    const/4 v0, 0x0

    .line 4569
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    if-eqz p2, :cond_e

    .line 4570
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4574
    :cond_e
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p4, v1, :cond_39

    .line 4575
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 4577
    .local v1, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 4578
    .local v2, "users":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 4579
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v2, v3

    .line 4578
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 4581
    .end local v1  # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3  # "i":I
    :cond_38
    goto :goto_3f

    .line 4582
    .end local v2  # "users":[I
    :cond_39
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p4, v1, v2

    move-object v2, v1

    .line 4585
    .restart local v2  # "users":[I
    :goto_3f
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v1, :cond_b4

    .line 4586
    array-length v1, v2

    .line 4588
    .local v1, "numUsers":I
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_45
    if-ge v3, v1, :cond_b4

    .line 4589
    aget v4, v2, v3

    .line 4591
    .local v4, "thisUserId":I
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 4592
    .local v5, "userRestrictions":[Z
    if-nez v5, :cond_5e

    if-eqz p2, :cond_5e

    .line 4593
    const/16 v6, 0x5b

    new-array v5, v6, [Z

    .line 4594
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4596
    :cond_5e
    if-eqz v5, :cond_75

    aget-boolean v6, v5, p1

    if-eq v6, p2, :cond_75

    .line 4597
    aput-boolean p2, v5, p1

    .line 4598
    if-nez p2, :cond_74

    invoke-direct {p0, v5}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 4599
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4600
    const/4 v5, 0x0

    .line 4602
    :cond_74
    const/4 v0, 0x1

    .line 4605
    :cond_75
    if-eqz v5, :cond_b1

    .line 4606
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    .line 4607
    .local v6, "noExcludedPackages":Z
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v7, :cond_88

    if-nez v6, :cond_88

    .line 4608
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4610
    :cond_88
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v7, :cond_b1

    .line 4611
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4610
    invoke-static {p3, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b1

    .line 4612
    if-eqz v6, :cond_ab

    .line 4613
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4614
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_b0

    .line 4615
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_b0

    .line 4618
    :cond_ab
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4620
    :cond_b0
    :goto_b0
    const/4 v0, 0x1

    .line 4588
    .end local v4  # "thisUserId":I
    .end local v5  # "userRestrictions":[Z
    .end local v6  # "noExcludedPackages":Z
    :cond_b1
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 4626
    .end local v1  # "numUsers":I
    .end local v3  # "i":I
    :cond_b4
    return v0
.end method
