.class final Lcom/android/server/pm/permission/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/permission/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    .line 715
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    .line 716
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V
    .registers 8

    .line 719
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    .line 720
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 721
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_29

    .line 722
    iget-object v2, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 723
    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 724
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-direct {v5, v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 726
    :cond_29
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .registers 3

    .line 834
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result p1

    xor-int/2addr p1, v0

    if-nez p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    return p1
.end method

.method private isInstallPermission()Z
    .registers 4

    .line 838
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 839
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 838
    :goto_14
    return v1
.end method

.method public static isInstallPermissionKey(I)Z
    .registers 2

    .line 801
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 3

    .line 729
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getFlags(I)I
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 790
    if-eqz p1, :cond_f

    .line 791
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result p1

    return p1

    .line 793
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 3

    .line 785
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    return-object p1
.end method

.method public grant(I)Z
    .registers 4

    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 747
    return v1

    .line 750
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 751
    return v1

    .line 754
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 755
    if-nez v0, :cond_29

    .line 756
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    :cond_29
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 762
    return p1
.end method

.method public isDefault()Z
    .registers 2

    .line 797
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isGranted(I)Z
    .registers 3

    .line 733
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 734
    const/4 p1, -0x1

    .line 737
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 738
    if-nez p1, :cond_13

    .line 739
    const/4 p1, 0x0

    return p1

    .line 742
    :cond_13
    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z

    move-result p1

    return p1
.end method

.method public revoke(I)Z
    .registers 4

    .line 766
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 767
    return v1

    .line 770
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 771
    return v1

    .line 774
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 775
    invoke-static {v0, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 777
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 778
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 781
    :cond_25
    const/4 p1, 0x1

    return p1
.end method

.method public updateFlags(III)Z
    .registers 9

    .line 805
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 806
    const/4 p1, -0x1

    .line 809
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 810
    return v1

    .line 813
    :cond_f
    and-int/2addr p3, p2

    .line 815
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 816
    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    .line 817
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v3

    .line 818
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v4

    not-int p2, p2

    and-int/2addr p2, v4

    or-int/2addr p2, p3

    invoke-static {v0, p2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 819
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 820
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 822
    :cond_34
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result p1

    if-eq p1, v3, :cond_3b

    move v1, v2

    :cond_3b
    return v1

    .line 823
    :cond_3c
    if-eqz p3, :cond_52

    .line 824
    new-instance p2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-static {p2, p3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 826
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 827
    return v2

    .line 830
    :cond_52
    return v1
.end method
