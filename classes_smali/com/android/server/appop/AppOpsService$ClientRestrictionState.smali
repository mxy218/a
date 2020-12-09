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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4588
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4589
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4590
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 4591
    return-void
.end method

.method private isDefault([Z)Z
    .registers 7

    .line 4724
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4725
    return v1

    .line 4727
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_15

    aget-boolean v4, p1, v3

    .line 4728
    if-eqz v4, :cond_12

    .line 4729
    return v2

    .line 4727
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4732
    :cond_15
    return v1
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .line 4699
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 4700
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$1300(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4701
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_14

    .line 4702
    monitor-exit v0

    return-void

    .line 4704
    :cond_14
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4705
    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_41

    .line 4706
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 4707
    array-length v5, v4

    .line 4708
    move v6, v2

    :goto_28
    if-ge v6, v5, :cond_3e

    .line 4709
    aget-boolean v7, v4, v6

    if-eqz v7, :cond_3b

    .line 4710
    nop

    .line 4711
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;-><init>(Lcom/android/server/appop/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4708
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 4705
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 4715
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4716
    monitor-exit v0

    .line 4717
    return-void

    .line 4716
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public destroy()V
    .registers 3

    .line 4720
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4721
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .registers 6

    .line 4658
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4659
    return v1

    .line 4661
    :cond_6
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 4662
    if-nez v0, :cond_f

    .line 4663
    return v1

    .line 4665
    :cond_f
    aget-boolean p1, v0, p1

    if-nez p1, :cond_14

    .line 4666
    return v1

    .line 4668
    :cond_14
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    .line 4669
    return v0

    .line 4671
    :cond_1a
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 4672
    if-nez p1, :cond_23

    .line 4673
    return v0

    .line 4675
    :cond_23
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public isDefault()Z
    .registers 2

    .line 4694
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

    .line 4711
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->access$1400(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method

.method public removeUser(I)V
    .registers 4

    .line 4679
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 4680
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4681
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 4682
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4685
    :cond_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_23

    .line 4686
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4687
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_23

    .line 4688
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4691
    :cond_23
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .registers 13

    .line 4595
    nop

    .line 4597
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v0, :cond_e

    if-eqz p2, :cond_e

    .line 4598
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4602
    :cond_e
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v0, :cond_3a

    .line 4603
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p4, p4, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p4

    .line 4605
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4606
    move v3, v2

    :goto_26
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 4607
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v0, v3

    .line 4606
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 4609
    :cond_39
    goto :goto_3e

    .line 4610
    :cond_3a
    new-array v0, v1, [I

    aput p4, v0, v2

    .line 4613
    :goto_3e
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz p4, :cond_b4

    .line 4614
    array-length p4, v0

    .line 4616
    move v3, v2

    :goto_44
    if-ge v2, p4, :cond_b3

    .line 4617
    aget v4, v0, v2

    .line 4619
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 4620
    if-nez v5, :cond_5d

    if-eqz p2, :cond_5d

    .line 4621
    const/16 v5, 0x5b

    new-array v5, v5, [Z

    .line 4622
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4624
    :cond_5d
    const/4 v6, 0x0

    if-eqz v5, :cond_75

    aget-boolean v7, v5, p1

    if-eq v7, p2, :cond_75

    .line 4625
    aput-boolean p2, v5, p1

    .line 4626
    if-nez p2, :cond_74

    invoke-direct {p0, v5}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 4627
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4628
    move-object v5, v6

    .line 4630
    :cond_74
    move v3, v1

    .line 4633
    :cond_75
    if-eqz v5, :cond_b0

    .line 4634
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    .line 4635
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v7, :cond_88

    if-nez v5, :cond_88

    .line 4636
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4638
    :cond_88
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v7, :cond_b0

    .line 4639
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4638
    invoke-static {p3, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b0

    .line 4640
    if-eqz v5, :cond_aa

    .line 4641
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4642
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_af

    .line 4643
    iput-object v6, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_af

    .line 4646
    :cond_aa
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4648
    :cond_af
    :goto_af
    move v3, v1

    .line 4616
    :cond_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_b3
    move v2, v3

    .line 4654
    :cond_b4
    return v2
.end method
