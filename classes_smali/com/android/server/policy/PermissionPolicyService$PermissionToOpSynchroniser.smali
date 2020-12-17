.class Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionToOpSynchroniser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    }
.end annotation


# instance fields
.field private final mAllUids:Landroid/util/SparseIntArray;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mOpsToAllow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToAllowIfDefault:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToDefault:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToForeground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToForegroundIfAllow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnoreIfDefault:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAllUids:Landroid/util/SparseIntArray;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    .line 454
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 456
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 457
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 385
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V

    return-void
.end method

.method private addOpIfFgPermissions(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V
    .registers 12
    .param p1, "permissionInfo"  # Landroid/content/pm/PermissionInfo;
    .param p2, "pkg"  # Landroid/content/pm/PackageInfo;

    .line 658
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 660
    .local v0, "bgPermissionName":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 661
    return-void

    .line 664
    :cond_5
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 665
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v2

    .line 666
    .local v2, "opCode":I
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 667
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 671
    .local v4, "uid":I
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_3a

    .line 675
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 676
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 675
    invoke-virtual {v5, v0, v6, v7}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    .line 678
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_39

    .line 679
    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 680
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v7, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_39
    return-void

    .line 686
    .end local v5  # "flags":I
    :cond_3a
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6b

    .line 688
    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 690
    .local v5, "isBgHardRestricted":Z
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_50

    const/4 v6, 0x1

    goto :goto_51

    :cond_50
    const/4 v6, 0x0

    .line 693
    .local v6, "isBgPermGranted":Z
    :goto_51
    if-nez v5, :cond_60

    if-eqz v6, :cond_60

    .line 694
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v8, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 696
    :cond_60
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v8, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .end local v5  # "isBgHardRestricted":Z
    .end local v6  # "isBgPermGranted":Z
    :goto_6a
    goto :goto_75

    .line 699
    :cond_6b
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v6, p0, v4, v3, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :goto_75
    return-void
.end method

.method private addOpIfRestricted(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V
    .registers 13
    .param p1, "permissionInfo"  # Landroid/content/pm/PermissionInfo;
    .param p2, "pkg"  # Landroid/content/pm/PackageInfo;

    .line 562
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 563
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v1

    .line 564
    .local v1, "opCode":I
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 566
    .local v2, "uid":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_11

    .line 567
    return-void

    .line 570
    :cond_11
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 572
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 571
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    move v3, v4

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    .line 574
    .local v3, "applyRestriction":Z
    :goto_27
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4e

    .line 575
    if-eq v1, v6, :cond_fb

    .line 576
    if-eqz v3, :cond_40

    .line 577
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v2, v6, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fb

    .line 579
    :cond_40
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, p0, v2, v6, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fb

    .line 582
    :cond_4e
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v5

    if-eqz v5, :cond_fb

    .line 583
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v7, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 585
    invoke-virtual {v8}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 584
    invoke-static {v5, v7, v8, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v5

    .line 587
    .local v5, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    if-eq v1, v6, :cond_83

    .line 588
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->canBeGranted()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 589
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v9, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, p0, v2, v9, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 591
    :cond_77
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v9, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, p0, v2, v9, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_83
    :goto_83
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v7

    .line 596
    .local v7, "op":I
    if-eq v7, v6, :cond_fb

    .line 597
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getDesiredOpMode()I

    move-result v6

    if-eqz v6, :cond_dc

    if-eq v6, v4, :cond_bc

    const/4 v4, 0x2

    if-eq v6, v4, :cond_b2

    const/4 v4, 0x3

    if-eq v6, v4, :cond_a5

    const/4 v4, 0x4

    if-eq v6, v4, :cond_9b

    goto :goto_fb

    .line 610
    :cond_9b
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Setting appop to foreground is not implemented"

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    goto :goto_fb

    .line 599
    :cond_a5
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    goto :goto_fb

    .line 623
    :cond_b2
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Setting appop to errored is not implemented"

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    .line 614
    :cond_bc
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->shouldSetAppOpIfNotDefault()Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 615
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 617
    :cond_cf
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    goto :goto_fb

    .line 602
    :cond_dc
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->shouldSetAppOpIfNotDefault()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 603
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 605
    :cond_ef
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p0, v2, v8, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v5  # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .end local v7  # "op":I
    :cond_fb
    :goto_fb
    return-void
.end method

.method private isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "perm"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 631
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 633
    .local v1, "bgPermInfo":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 634
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Support for soft restricted background permissions not implemented"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_16
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 639
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 638
    invoke-virtual {v2, p2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_26} :catch_2c

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0

    .line 641
    .end local v1  # "bgPermInfo":Landroid/content/pm/PermissionInfo;
    :catch_2c
    move-exception v1

    .line 642
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read permission state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    return v0
.end method

.method private setUidMode(IIILjava/lang/String;)V
    .registers 7
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "mode"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 772
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 774
    .local v0, "currentMode":I
    if-eq v0, p3, :cond_11

    .line 775
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 777
    :cond_11
    return-void
.end method

.method private setUidModeAllowed(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 749
    return-void
.end method

.method private setUidModeAllowedIfDefault(IILjava/lang/String;)Z
    .registers 10
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 744
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setUidModeDefault(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 793
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 794
    return-void
.end method

.method private setUidModeForeground(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 757
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 758
    return-void
.end method

.method private setUidModeForegroundIfAllow(IILjava/lang/String;)Z
    .registers 10
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 753
    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setUidModeIfMode(IIIILjava/lang/String;)Z
    .registers 8
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "requiredModeBefore"  # I
    .param p4, "newMode"  # I
    .param p5, "packageName"  # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 782
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v1, p2, p5}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 784
    .local v0, "currentMode":I
    if-ne v0, p3, :cond_13

    .line 785
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 786
    const/4 v1, 0x1

    return v1

    .line 789
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private setUidModeIgnored(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 766
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 767
    return-void
.end method

.method private setUidModeIgnoredIfDefault(IILjava/lang/String;)Z
    .registers 10
    .param p1, "opCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 762
    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private syncPackages()V
    .registers 16

    .line 468
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 470
    .local v0, "alreadySetAppOps":Landroid/util/LongSparseLongArray;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 471
    .local v1, "allowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const-wide/16 v3, 0x1

    if-ge v2, v1, :cond_2f

    .line 472
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 474
    .local v5, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v8, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowed(IILjava/lang/String;)V

    .line 475
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 471
    .end local v5  # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 478
    .end local v2  # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 479
    .local v2, "allowIfDefaultCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_36
    if-ge v5, v2, :cond_69

    .line 480
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 481
    .local v6, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_4f

    .line 482
    goto :goto_66

    .line 485
    :cond_4f
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowedIfDefault(IILjava/lang/String;)Z

    move-result v7

    .line 486
    .local v7, "wasSet":Z
    if-eqz v7, :cond_66

    .line 487
    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 479
    .end local v6  # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v7  # "wasSet":Z
    :cond_66
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 491
    .end local v5  # "i":I
    :cond_69
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 492
    .local v5, "foregroundIfAllowedCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_70
    if-ge v6, v5, :cond_a3

    .line 493
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 494
    .local v7, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v8

    if-ltz v8, :cond_89

    .line 495
    goto :goto_a0

    .line 498
    :cond_89
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v10, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForegroundIfAllow(IILjava/lang/String;)Z

    move-result v8

    .line 499
    .local v8, "wasSet":Z
    if-eqz v8, :cond_a0

    .line 500
    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 492
    .end local v7  # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v8  # "wasSet":Z
    :cond_a0
    :goto_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 504
    .end local v6  # "i":I
    :cond_a3
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 505
    .local v6, "foregroundCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_aa
    if-ge v7, v6, :cond_da

    .line 506
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 507
    .local v8, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v9

    if-ltz v9, :cond_c3

    .line 508
    goto :goto_d7

    .line 511
    :cond_c3
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForeground(IILjava/lang/String;)V

    .line 512
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 505
    .end local v8  # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_d7
    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    .line 515
    .end local v7  # "i":I
    :cond_da
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 516
    .local v7, "ignoreCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e1
    if-ge v8, v7, :cond_111

    .line 517
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 518
    .local v9, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v10, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v11, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v10, v11}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v10

    if-ltz v10, :cond_fa

    .line 519
    goto :goto_10e

    .line 522
    :cond_fa
    iget v10, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v11, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v12, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnored(IILjava/lang/String;)V

    .line 523
    iget v10, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v11, v9, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v10, v11}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 516
    .end local v9  # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_10e
    add-int/lit8 v8, v8, 0x1

    goto :goto_e1

    .line 526
    .end local v8  # "i":I
    :cond_111
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 527
    .local v8, "ignoreIfDefaultCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_118
    if-ge v9, v8, :cond_14b

    .line 528
    iget-object v10, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 529
    .local v10, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v11, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v12, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v11, v12}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v11

    if-ltz v11, :cond_131

    .line 530
    goto :goto_148

    .line 533
    :cond_131
    iget v11, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v12, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v13, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v13}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnoredIfDefault(IILjava/lang/String;)Z

    move-result v11

    .line 534
    .local v11, "wasSet":Z
    if-eqz v11, :cond_148

    .line 535
    iget v12, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v13, v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v12, v13}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 527
    .end local v10  # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v11  # "wasSet":Z
    :cond_148
    :goto_148
    add-int/lit8 v9, v9, 0x1

    goto :goto_118

    .line 539
    .end local v9  # "i":I
    :cond_14b
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 540
    .local v9, "defaultCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_152
    if-ge v10, v9, :cond_182

    .line 541
    iget-object v11, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 542
    .local v11, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v12, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v13, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v12, v13}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v12

    if-ltz v12, :cond_16b

    .line 543
    goto :goto_17f

    .line 546
    :cond_16b
    iget v12, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v13, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v14, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v12, v13, v14}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeDefault(IILjava/lang/String;)V

    .line 547
    iget v12, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v13, v11, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v12, v13}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 540
    .end local v11  # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_17f
    add-int/lit8 v10, v10, 0x1

    goto :goto_152

    .line 549
    .end local v10  # "i":I
    :cond_182
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_40

    .line 716
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 718
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAllUids:Landroid/util/SparseIntArray;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 721
    return-void

    .line 724
    :cond_1b
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_20
    if-ge v4, v2, :cond_3f

    aget-object v5, v1, v4

    .line 725
    .local v5, "permission":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v6

    .line 726
    .local v6, "opCode":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2c

    .line 727
    goto :goto_3c

    .line 732
    :cond_2c
    :try_start_2c
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v5, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v7
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_32} :catch_3a

    .line 735
    .local v7, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 737
    invoke-direct {p0, v7, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addOpIfRestricted(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V

    .line 738
    invoke-direct {p0, v7, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addOpIfFgPermissions(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V

    goto :goto_3c

    .line 733
    .end local v7  # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_3a
    move-exception v7

    .line 734
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 724
    .end local v5  # "permission":Ljava/lang/String;
    .end local v6  # "opCode":I
    .end local v7  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 740
    :cond_3f
    return-void

    .line 714
    .end local v0  # "pkg":Landroid/content/pm/PackageInfo;
    :catch_40
    move-exception v0

    .line 715
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method
