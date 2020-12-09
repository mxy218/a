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
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 671
    :cond_11
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .registers 4

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

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_1d
    :goto_1d
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .registers 4

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
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 704
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 706
    :cond_19
    monitor-exit v0

    .line 708
    return-void

    .line 706
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;
    .registers 5

    .line 681
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 683
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
    if-nez v2, :cond_26

    .line 689
    new-instance v2, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v2, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    .line 690
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_26
    monitor-exit v1

    return-object v2

    .line 693
    :catchall_28
    move-exception p1

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 6

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

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 576
    if-nez p1, :cond_16

    .line 577
    monitor-exit v0

    return-object v2

    .line 580
    :cond_16
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 581
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .registers 7
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

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 592
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 595
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_32

    .line 596
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 598
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v4

    .line 599
    if-eqz v4, :cond_2f

    .line 600
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 604
    :cond_32
    monitor-exit v0

    return-object v1

    .line 605
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 7

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

    .line 614
    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v3

    goto :goto_1f

    :cond_1d
    sget-object v3, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 616
    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object p1

    .line 618
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->grant(I)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 619
    const/4 p1, -0x1

    return p1

    .line 622
    :cond_2b
    if-eqz v0, :cond_36

    .line 623
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object p1

    .line 624
    array-length p2, v3

    array-length p1, p1

    if-eq p2, p1, :cond_36

    .line 625
    return v2

    .line 629
    :cond_36
    return v1
.end method

.method private hasPermissionRequiringReview(I)Z
    .registers 7

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 476
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_23

    .line 477
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 478
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_20

    .line 480
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 476
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 483
    :cond_23
    monitor-exit v0

    .line 485
    return v2

    .line 483
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 9

    .line 633
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 635
    return v2

    .line 638
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    .line 639
    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1d

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v3

    goto :goto_1f

    :cond_1d
    sget-object v3, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    .line 641
    :goto_1f
    nop

    .line 642
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 643
    :try_start_23
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 644
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_49

    .line 646
    invoke-virtual {v5, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->revoke(I)Z

    move-result v4

    if-nez v4, :cond_34

    .line 647
    const/4 p1, -0x1

    return p1

    .line 650
    :cond_34
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 651
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 654
    :cond_3d
    if-eqz p1, :cond_48

    .line 655
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object p1

    .line 656
    array-length p2, v3

    array-length p1, p1

    if-eq p2, p1, :cond_48

    .line 657
    return v1

    .line 661
    :cond_48
    return v2

    .line 644
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 8

    .line 516
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 520
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v2, :cond_3b

    .line 522
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 523
    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_3b

    .line 524
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 525
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 526
    goto :goto_38

    .line 528
    :cond_24
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 529
    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v4

    .line 530
    sget-object v5, Lcom/android/server/pm/permission/PermissionsState;->NO_GIDS:[I

    if-eq v4, v5, :cond_38

    .line 531
    invoke-static {v0, v4}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 523
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 535
    :cond_3b
    monitor-exit v1

    .line 537
    return-object v0

    .line 535
    :catchall_3d
    move-exception p1

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public computeGids([I)[I
    .registers 6

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 549
    array-length v1, p1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget v3, p1, v2

    .line 550
    invoke-virtual {p0, v3}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v3

    .line 551
    invoke-static {v0, v3}, Lcom/android/server/pm/permission/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 554
    :cond_13
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 11

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

    const/4 v3, 0x0

    if-eqz v1, :cond_4d

    .line 113
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_27

    .line 114
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 116
    :cond_27
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 117
    move v4, v3

    :goto_2e
    if-ge v4, v1, :cond_4d

    .line 118
    iget-object v5, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 119
    iget-object v6, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 120
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    invoke-direct {v8, v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V

    invoke-virtual {v7, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 123
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
    nop

    :goto_81
    if-ge v3, v0, :cond_97

    .line 144
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 149
    :cond_97
    return-void

    .line 123
    :catchall_98
    move-exception p1

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 153
    if-ne p0, p1, :cond_4

    .line 154
    const/4 p1, 0x1

    return p1

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
    check-cast p1, Lcom/android/server/pm/permission/PermissionsState;

    .line 164
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_18
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_22

    .line 166
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2e

    .line 167
    monitor-exit v1

    return v0

    .line 169
    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 170
    monitor-exit v1

    return v0

    .line 172
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_4a

    .line 174
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_38

    .line 175
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_41

    .line 176
    return v0

    .line 178
    :cond_38
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 179
    return v0

    .line 181
    :cond_41
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    iget-object p1, p1, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 172
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3

    .line 361
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object p1

    return-object p1
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
    .registers 4

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_b

    .line 405
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result p1

    return p1

    .line 407
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object p1

    .line 408
    if-eqz p1, :cond_16

    .line 409
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result p1

    return p1

    .line 411
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public getPermissions(I)Ljava/util/Set;
    .registers 8
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

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 332
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 334
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 335
    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_45

    .line 336
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 338
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
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 350
    :cond_45
    monitor-exit v0

    return-object v1

    .line 351
    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3

    .line 372
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object p1

    return-object p1
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .registers 2
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

    move-result-object p1

    return-object p1
.end method

.method public grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 3

    .line 197
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantPermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result p1

    return p1
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4

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

    move-result p1

    return p1
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .registers 3

    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .registers 6

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

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 286
    if-eqz p1, :cond_1e

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    monitor-exit v0

    return v2

    .line 287
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw p1
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
    :cond_23
    monitor-exit v0

    .line 307
    return v2

    .line 305
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public hasRequestedPermission(Ljava/lang/String;)Z
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .registers 4

    .line 255
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public isPermissionReviewRequired(I)Z
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
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

    .line 209
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result p1

    return p1
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I
    .registers 4

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

    move-result p1

    return p1
.end method

.method public setGlobalGids([I)V
    .registers 3

    .line 89
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 90
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mGlobalGids:[I

    .line 92
    :cond_d
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    .registers 11

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
    .catchall {:try_start_10 .. :try_end_1c} :catchall_81

    .line 437
    nop

    .line 438
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 439
    :try_start_20
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 440
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_7e

    .line 442
    if-nez v3, :cond_36

    .line 443
    if-nez v2, :cond_32

    .line 444
    return v1

    .line 446
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    move-result-object v3

    .line 449
    :cond_36
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result p1

    .line 451
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result p3

    .line 452
    if-eqz p3, :cond_7d

    .line 453
    invoke-virtual {v3, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->getFlags(I)I

    move-result p4

    .line 454
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_5d

    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_5d

    .line 456
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez p1, :cond_57

    .line 457
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 459
    :cond_57
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_7d

    .line 460
    :cond_5d
    if-eqz p1, :cond_7d

    and-int/lit8 p1, p4, 0x40

    if-nez p1, :cond_7d

    .line 462
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz p1, :cond_7d

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermissionRequiringReview(I)Z

    move-result p1

    if-nez p1, :cond_7d

    .line 463
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 464
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-gtz p1, :cond_7d

    .line 465
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 470
    :cond_7d
    :goto_7d
    return p3

    .line 440
    :catchall_7e
    move-exception p1

    :try_start_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p1

    .line 435
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .registers 9

    .line 490
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState;->enforceValidUserId(I)V

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 494
    monitor-exit v0

    return v2

    .line 496
    :cond_d
    nop

    .line 497
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 498
    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_27

    .line 499
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 500
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v3, v4

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 503
    :cond_27
    monitor-exit v0

    return v3

    .line 504
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw p1
.end method
