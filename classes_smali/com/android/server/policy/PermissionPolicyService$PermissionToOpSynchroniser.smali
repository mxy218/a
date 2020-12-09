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

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 457
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .registers 1

    .line 385
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V

    return-void
.end method

.method private addOpIfFgPermissions(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V
    .registers 9

    .line 658
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 660
    if-nez v0, :cond_5

    .line 661
    return-void

    .line 664
    :cond_5
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 665
    invoke-static {p1}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v1

    .line 666
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 667
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 671
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_3a

    .line 675
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 676
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 675
    invoke-virtual {p1, v0, p2, v4}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1

    .line 678
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_39

    .line 679
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 680
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {p2, p0, v3, v2, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_39
    return-void

    .line 686
    :cond_3a
    iget-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6b

    .line 688
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 690
    iget-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_50

    const/4 p2, 0x1

    goto :goto_51

    :cond_50
    const/4 p2, 0x0

    .line 693
    :goto_51
    if-nez p1, :cond_60

    if-eqz p2, :cond_60

    .line 694
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {p2, p0, v3, v2, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 696
    :cond_60
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {p2, p0, v3, v2, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :goto_6a
    goto :goto_75

    .line 699
    :cond_6b
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {p2, p0, v3, v2, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :goto_75
    return-void
.end method

.method private addOpIfRestricted(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V
    .registers 10

    .line 562
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 563
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v1

    .line 564
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 566
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
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, p2, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fb

    .line 579
    :cond_40
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, p2, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fb

    .line 582
    :cond_4e
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 583
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 585
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 584
    invoke-static {p1, v3, v5, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object p1

    .line 587
    if-eq v1, v6, :cond_83

    .line 588
    invoke-virtual {p1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->canBeGranted()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 589
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, p0, v2, v5, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 591
    :cond_77
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, p0, v2, v5, v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_83
    :goto_83
    invoke-virtual {p1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v0

    .line 596
    if-eq v0, v6, :cond_fb

    .line 597
    invoke-virtual {p1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getDesiredOpMode()I

    move-result v1

    if-eqz v1, :cond_dc

    if-eq v1, v4, :cond_bc

    const/4 p1, 0x2

    if-eq v1, p1, :cond_b2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_a5

    const/4 p1, 0x4

    if-eq v1, p1, :cond_9b

    goto :goto_fb

    .line 610
    :cond_9b
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Setting appop to foreground is not implemented"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    goto :goto_fb

    .line 599
    :cond_a5
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    goto :goto_fb

    .line 623
    :cond_b2
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Setting appop to errored is not implemented"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    .line 614
    :cond_bc
    invoke-virtual {p1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->shouldSetAppOpIfNotDefault()Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 615
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 617
    :cond_cf
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    goto :goto_fb

    .line 602
    :cond_dc
    invoke-virtual {p1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->shouldSetAppOpIfNotDefault()Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 603
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 605
    :cond_ef
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_fb
    :goto_fb
    return-void
.end method

.method private isBgPermRestricted(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 631
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 633
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

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 639
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 638
    invoke-virtual {v1, p2, p1, p3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_26} :catch_2c

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0

    .line 641
    :catch_2c
    move-exception p1

    .line 642
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->access$600()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read permission state of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    return v0
.end method

.method private setUidMode(IIILjava/lang/String;)V
    .registers 7

    .line 771
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 772
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result p4

    .line 774
    if-eq p4, p3, :cond_11

    .line 775
    iget-object p4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p4, p1, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 777
    :cond_11
    return-void
.end method

.method private setUidModeAllowed(IILjava/lang/String;)V
    .registers 5

    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 749
    return-void
.end method

.method private setUidModeAllowedIfDefault(IILjava/lang/String;)Z
    .registers 10

    .line 744
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private setUidModeDefault(IILjava/lang/String;)V
    .registers 5

    .line 793
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 794
    return-void
.end method

.method private setUidModeForeground(IILjava/lang/String;)V
    .registers 5

    .line 757
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 758
    return-void
.end method

.method private setUidModeForegroundIfAllow(IILjava/lang/String;)Z
    .registers 10

    .line 753
    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private setUidModeIfMode(IIIILjava/lang/String;)Z
    .registers 8

    .line 781
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 782
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v1, p2, p5}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result p5

    .line 784
    if-ne p5, p3, :cond_13

    .line 785
    iget-object p3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p3, p1, p2, p4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 786
    const/4 p1, 0x1

    return p1

    .line 789
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private setUidModeIgnored(IILjava/lang/String;)V
    .registers 5

    .line 766
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 767
    return-void
.end method

.method private setUidModeIgnoredIfDefault(IILjava/lang/String;)Z
    .registers 10

    .line 762
    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIfMode(IIIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private syncPackages()V
    .registers 11

    .line 468
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 470
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 471
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    const-wide/16 v4, 0x1

    if-ge v3, v1, :cond_30

    .line 472
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 474
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowed(IILjava/lang/String;)V

    .line 475
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 478
    :cond_30
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 479
    move v3, v2

    :goto_37
    if-ge v3, v1, :cond_6a

    .line 480
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllowIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 481
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_50

    .line 482
    goto :goto_67

    .line 485
    :cond_50
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowedIfDefault(IILjava/lang/String;)Z

    move-result v7

    .line 486
    if-eqz v7, :cond_67

    .line 487
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 479
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 491
    :cond_6a
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 492
    move v3, v2

    :goto_71
    if-ge v3, v1, :cond_a4

    .line 493
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForegroundIfAllow:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 494
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_8a

    .line 495
    goto :goto_a1

    .line 498
    :cond_8a
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForegroundIfAllow(IILjava/lang/String;)Z

    move-result v7

    .line 499
    if-eqz v7, :cond_a1

    .line 500
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 492
    :cond_a1
    :goto_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 504
    :cond_a4
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 505
    move v3, v2

    :goto_ab
    if-ge v3, v1, :cond_db

    .line 506
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 507
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_c4

    .line 508
    goto :goto_d8

    .line 511
    :cond_c4
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForeground(IILjava/lang/String;)V

    .line 512
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 505
    :goto_d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 515
    :cond_db
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 516
    move v3, v2

    :goto_e2
    if-ge v3, v1, :cond_112

    .line 517
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 518
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_fb

    .line 519
    goto :goto_10f

    .line 522
    :cond_fb
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnored(IILjava/lang/String;)V

    .line 523
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 516
    :goto_10f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e2

    .line 526
    :cond_112
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 527
    move v3, v2

    :goto_119
    if-ge v3, v1, :cond_14c

    .line 528
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfDefault:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 529
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_132

    .line 530
    goto :goto_149

    .line 533
    :cond_132
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnoredIfDefault(IILjava/lang/String;)Z

    move-result v7

    .line 534
    if-eqz v7, :cond_149

    .line 535
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v6, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v6}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 527
    :cond_149
    :goto_149
    add-int/lit8 v3, v3, 0x1

    goto :goto_119

    .line 539
    :cond_14c
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 540
    nop

    :goto_153
    if-ge v2, v1, :cond_183

    .line 541
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToDefault:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 542
    iget v6, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v7, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v6

    if-ltz v6, :cond_16c

    .line 543
    goto :goto_180

    .line 546
    :cond_16c
    iget v6, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v7, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v8, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeDefault(IILjava/lang/String;)V

    .line 547
    iget v6, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v3, v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v3}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 540
    :goto_180
    add-int/lit8 v2, v2, 0x1

    goto :goto_153

    .line 549
    :cond_183
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .registers 9

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_40

    .line 716
    nop

    .line 718
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAllUids:Landroid/util/SparseIntArray;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 721
    return-void

    .line 724
    :cond_1b
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_3f

    aget-object v4, v0, v3

    .line 725
    invoke-static {v4}, Lcom/android/server/policy/PermissionPolicyService;->access$500(Ljava/lang/String;)I

    move-result v5

    .line 726
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2c

    .line 727
    goto :goto_3c

    .line 732
    :cond_2c
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_32} :catch_3a

    .line 735
    nop

    .line 737
    invoke-direct {p0, v4, p1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addOpIfRestricted(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V

    .line 738
    invoke-direct {p0, v4, p1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addOpIfFgPermissions(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageInfo;)V

    goto :goto_3c

    .line 733
    :catch_3a
    move-exception v4

    .line 734
    nop

    .line 724
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 740
    :cond_3f
    return-void

    .line 714
    :catch_40
    move-exception p1

    .line 715
    return-void
.end method
