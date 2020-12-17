.class public final Lcom/android/server/pm/permission/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionsState$PermissionState;,
        Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private final mLock:Ljava/lang/Object;

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 3
    .param p1, "prototype"  # Lcom/android/server/pm/permission/PermissionsState;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 81
    return-void
.end method

.method private static appendInts([I[I)[I
    .registers 5
    .param p0, "current"  # [I
    .param p1, "added"  # [I

    .line 666
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 667
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 668
    .local v2, "guid":I
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 667
    .end local v2  # "guid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 671
    :cond_11
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .registers 4
    .param p0, "userId"  # I

    .line 675
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1d

    if-ltz p0, :cond_6

    goto :goto_1d

    .line 676
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_1d
    :goto_1d
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    .line 700
    monitor-exit v0

    return-void

    .line 702
    :cond_9
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 704
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 706
    :cond_19
    monitor-exit v0

    .line 708
    return-void

    .line 706
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .registers 6
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;

    .line 681
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "permName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_12

    .line 685
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 687
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 688
    .local v2, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v2, :cond_27

    .line 689
    new-instance v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    move-object v2, v3

    .line 690
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_27
    monitor-exit v1

    return-object v2

    .line 693
    .end local v2  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 571
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 573
    monitor-exit v0

    return-object v2

    .line 575
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 576
    .local v1, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-nez v1, :cond_16

    .line 577
    monitor-exit v0

    return-object v2

    .line 580
    :cond_16
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 581
    .end local v1  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 585
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 587
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_10

    .line 589
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 592
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v1, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 595
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_32

    .line 596
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 598
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v5

    .line 599
    .local v5, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v5, :cond_2f

    .line 600
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v4  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v5  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 604
    .end local v3  # "i":I
    :cond_32
    monitor-exit v0

    return-object v1

    .line 605
    .end local v1  # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v2  # "permissionCount":I
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 11
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"  # I

    .line 609
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 610
    return v1

    .line 613
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 614
    .local v0, "hasGids":Z
    if-eqz v0, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v3

    goto :goto_1f

    :cond_1d
    sget-object v3, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 616
    .local v3, "oldGids":[I
    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v4

    .line 618
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->grant(I)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 619
    const/4 v1, -0x1

    return v1

    .line 622
    :cond_2b
    if-eqz v0, :cond_36

    .line 623
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v5

    .line 624
    .local v5, "newGids":[I
    array-length v6, v3

    array-length v7, v5

    if-eq v6, v7, :cond_36

    .line 625
    return v2

    .line 629
    .end local v5  # "newGids":[I
    :cond_36
    return v1
.end method

.method private hasPermissionRequiringReview(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 476
    .local v1, "permissionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 477
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 478
    .local v3, "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1f

    .line 480
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 476
    .end local v3  # "permission":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 483
    .end local v1  # "permissionCount":I
    .end local v2  # "i":I
    :cond_22
    monitor-exit v0

    .line 485
    const/4 v0, 0x0

    return v0

    .line 483
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 12
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"  # I

    .line 633
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "permName":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 635
    return v2

    .line 638
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 639
    .local v1, "hasGids":Z
    if-eqz v1, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    goto :goto_1f

    :cond_1d
    sget-object v4, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 641
    .local v4, "oldGids":[I
    :goto_1f
    const/4 v5, 0x0

    .line 642
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 643
    :try_start_23
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-object v5, v7

    .line 644
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_4a

    .line 646
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->revoke(I)Z

    move-result v6

    if-nez v6, :cond_35

    .line 647
    const/4 v2, -0x1

    return v2

    .line 650
    :cond_35
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 651
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 654
    :cond_3e
    if-eqz v1, :cond_49

    .line 655
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v6

    .line 656
    .local v6, "newGids":[I
    array-length v7, v4

    array-length v8, v6

    if-eq v7, v8, :cond_49

    .line 657
    return v3

    .line 661
    .end local v6  # "newGids":[I
    :cond_49
    return v2

    .line 644
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 10
    .param p1, "userId"  # I

    .line 516
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 520
    .local v0, "gids":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v2, :cond_3c

    .line 522
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 523
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_3c

    .line 524
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 525
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_24

    .line 526
    goto :goto_39

    .line 528
    :cond_24
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 529
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v6

    .line 530
    .local v6, "permGids":[I
    sget-object v7, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    if-eq v6, v7, :cond_39

    .line 531
    invoke-static {v0, v6}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v7

    move-object v0, v7

    .line 523
    .end local v4  # "permission":Ljava/lang/String;
    .end local v5  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .end local v6  # "permGids":[I
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 535
    .end local v2  # "permissionCount":I
    .end local v3  # "i":I
    :cond_3c
    monitor-exit v1

    .line 537
    return-object v0

    .line 535
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public computeGids([I)[I
    .registers 7
    .param p1, "userIds"  # [I

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 549
    .local v0, "gids":[I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget v3, p1, v2

    .line 550
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v4

    .line 551
    .local v4, "userGids":[I
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 549
    .end local v3  # "userId":I
    .end local v4  # "userGids":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 554
    :cond_13
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 10
    .param p1, "other"  # Lcom/android/server/pm/permission/PermissionsState;

    .line 100
    if-ne p1, p0, :cond_3

    .line 101
    return-void

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 106
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_12

    .line 107
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    goto :goto_17

    .line 109
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 112
    :cond_17
    :goto_17
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4d

    .line 113
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_26

    .line 114
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 116
    :cond_26
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 117
    .local v1, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v1, :cond_4d

    .line 118
    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 120
    .local v5, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v7, v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    nop

    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 123
    .end local v1  # "permissionCount":I
    .end local v3  # "i":I
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_98

    .line 125
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 126
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    if-eq v1, v0, :cond_5d

    .line 127
    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 131
    :cond_5d
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6b

    .line 132
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_68

    .line 133
    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    goto :goto_6b

    .line 135
    :cond_68
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 138
    :cond_6b
    :goto_6b
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_97

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_7a

    .line 140
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 142
    :cond_7a
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 143
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_81
    if-ge v1, v0, :cond_97

    .line 144
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 145
    .local v2, "reviewRequired":Z
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 143
    .end local v2  # "reviewRequired":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 149
    .end local v0  # "userCount":I
    .end local v1  # "i":I
    :cond_97
    return-void

    .line 123
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"  # Ljava/lang/Object;

    .line 153
    if-ne p0, p1, :cond_4

    .line 154
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 157
    return v0

    .line 159
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 160
    return v0

    .line 162
    :cond_13
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState;

    .line 164
    .local v1, "other":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v3, :cond_23

    .line 166
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v3, :cond_2f

    .line 167
    monitor-exit v2

    return v0

    .line 169
    :cond_23
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 170
    monitor-exit v2

    return v0

    .line 172
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_4b

    .line 174
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_39

    .line 175
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_42

    .line 176
    return v0

    .line 178
    :cond_39
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 179
    return v0

    .line 181
    :cond_42
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 172
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 361
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 382
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    .line 404
    .local v0, "installPermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v0, :cond_b

    .line 405
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v1

    return v1

    .line 407
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v1

    .line 408
    .local v1, "runtimePermState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v1, :cond_16

    .line 409
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 411
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .registers 8
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_10

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 332
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 334
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 335
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_45

    .line 336
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 338
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 339
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    goto :goto_42

    .line 343
    :cond_36
    const/4 v5, -0x1

    if-eq p1, v5, :cond_42

    .line 344
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 345
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v4  # "permission":Ljava/lang/String;
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 350
    .end local v3  # "i":I
    :cond_45
    monitor-exit v0

    return-object v1

    .line 351
    .end local v1  # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2  # "permissionCount":I
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 372
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 392
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 3
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;

    .line 197
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"  # I

    .line 222
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 223
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 224
    return v0

    .line 226
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 278
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 282
    monitor-exit v0

    return v2

    .line 284
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 286
    .local v1, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    if-eqz v1, :cond_1e

    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    monitor-exit v0

    return v2

    .line 287
    .end local v1  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 296
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 298
    monitor-exit v0

    return v2

    .line 300
    :cond_a
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_23

    .line 301
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 302
    monitor-exit v0

    return v3

    .line 300
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 305
    .end local v1  # "i":I
    :cond_23
    monitor-exit v0

    .line 307
    return v2

    .line 305
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public hasRequestedPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 255
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isPermissionReviewRequired(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public reset()V
    .registers 3

    .line 561
    sget-object v0, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 565
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_e

    .line 567
    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 568
    return-void

    .line 565
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 3
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;

    .line 209
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"  # I

    .line 239
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 240
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 241
    return v0

    .line 243
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public setGlobalGids([I)V
    .registers 3
    .param p1, "globalGids"  # [I

    .line 89
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 90
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 92
    :cond_d
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    .registers 12
    .param p1, "permission"  # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"  # I
    .param p3, "flagMask"  # I
    .param p4, "flagValues"  # I

    .line 424
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 426
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_c

    if-eqz p3, :cond_a

    goto :goto_c

    :cond_a
    move v2, v1

    goto :goto_d

    :cond_c
    :goto_c
    move v2, v0

    .line 428
    .local v2, "mayChangeFlags":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 429
    :try_start_10
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_1b

    .line 430
    if-nez v2, :cond_18

    .line 431
    monitor-exit v3

    return v1

    .line 433
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 435
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_84

    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 439
    :try_start_20
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-object v3, v5

    .line 440
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_81

    .line 442
    if-nez v3, :cond_37

    .line 443
    if-nez v2, :cond_33

    .line 444
    return v1

    .line 446
    :cond_33
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v3

    .line 449
    :cond_37
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v1

    .line 451
    .local v1, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    .line 452
    .local v4, "updated":Z
    if-eqz v4, :cond_80

    .line 453
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v5

    .line 454
    .local v5, "newFlags":I
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_5e

    and-int/lit8 v6, v5, 0x40

    if-eqz v6, :cond_5e

    .line 456
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_58

    .line 457
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 459
    :cond_58
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_80

    .line 460
    :cond_5e
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_80

    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_80

    .line 462
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_80

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermissionRequiringReview(I)Z

    move-result v0

    if-nez v0, :cond_80

    .line 463
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 464
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-gtz v0, :cond_80

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 470
    .end local v5  # "newFlags":I
    :cond_80
    :goto_80
    return v4

    .line 440
    .end local v1  # "oldFlags":I
    .end local v4  # "updated":Z
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit v4
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v0

    .line 435
    .end local v3  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .registers 10
    .param p1, "userId"  # I
    .param p2, "flagMask"  # I
    .param p3, "flagValues"  # I

    .line 490
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_d

    .line 494
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 496
    :cond_d
    const/4 v1, 0x0

    .line 497
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 498
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_27

    .line 499
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 500
    .local v4, "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v5

    or-int/2addr v1, v5

    .line 498
    .end local v4  # "permissionData":Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 503
    .end local v3  # "i":I
    :cond_27
    monitor-exit v0

    return v1

    .line 504
    .end local v1  # "changed":Z
    .end local v2  # "permissionCount":I
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v1
.end method
