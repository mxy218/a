.class public Lcom/meizu/settings/applications/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;,
        Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;,
        Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;,
        Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNewPermPrefix:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPermComparator:Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-direct {v0}, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupComparator:Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 76
    new-instance v0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v0}, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermComparator:Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 266
    iput-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 267
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 268
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 270
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v0, 0x7f120fea

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 274
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 275
    iput-object p2, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 276
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 279
    :try_start_a
    iget-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_29

    .line 285
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_1e

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1e

    .line 286
    invoke-direct {p0, p2, p1}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 288
    :cond_1e
    iget-object p2, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    return-void

    .line 281
    :catch_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSecurityPermissions"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addPermToList(Ljava/util/List;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    .line 609
    iget-object v0, p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    .line 610
    iget-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 612
    :cond_c
    iget-object p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermComparator:Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;

    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-gez p0, :cond_1a

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    .line 617
    invoke-interface {p1, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "IZ)V"
        }
    .end annotation

    .line 494
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 495
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 496
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 497
    invoke-direct {p0, v2, p3}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionList(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v9

    move v10, v0

    .line 498
    :goto_16
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_45

    .line 499
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    if-nez v10, :cond_28

    const/4 v3, 0x1

    move v6, v3

    goto :goto_29

    :cond_28
    move v6, v0

    :goto_29
    const/4 v3, 0x4

    if-eq p3, v3, :cond_2f

    .line 501
    iget-object v3, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    move-object v7, v3

    move-object v3, p0

    move-object v4, v2

    move v8, p4

    .line 500
    invoke-direct/range {v3 .. v8}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionItemView(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;

    move-result-object v3

    .line 502
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 505
    invoke-virtual {p2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_48
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .line 360
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 361
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v0, :cond_d0

    .line 362
    array-length v2, v0

    if-nez v2, :cond_b

    goto/16 :goto_d0

    :cond_b
    const/4 v2, 0x0

    move v3, v2

    .line 365
    :goto_d
    array-length v4, v0

    if-ge v3, v4, :cond_d0

    .line 366
    aget-object v4, v0, v3

    if-eqz p3, :cond_1e

    if-ne p1, p3, :cond_1e

    .line 370
    aget v5, v1, v3

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1e

    goto/16 :goto_cc

    .line 375
    :cond_1e
    :try_start_1e
    iget-object v5, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    if-nez v5, :cond_28

    goto/16 :goto_cc

    :cond_28
    const/4 v6, -0x1

    if-eqz p3, :cond_44

    .line 380
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_44

    move v7, v2

    .line 382
    :goto_30
    iget-object v8, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_44

    .line 383
    iget-object v8, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    move v6, v7

    goto :goto_44

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_44
    :goto_44
    if-ltz v6, :cond_4b

    .line 390
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v6, v7, v6

    goto :goto_4c

    :cond_4b
    move v6, v2

    .line 391
    :goto_4c
    aget v7, v1, v3

    invoke-direct {p0, v5, v7, v6}, Lcom/meizu/settings/applications/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v7

    if-nez v7, :cond_56

    goto/16 :goto_cc

    .line 396
    :cond_56
    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v7, :cond_5f

    .line 399
    iget-object v8, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 400
    iput-object v8, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto :goto_60

    :cond_5f
    move-object v8, v7

    .line 402
    :goto_60
    iget-object v9, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v8, :cond_9c

    const/4 v8, 0x0

    if-eqz v7, :cond_73

    .line 406
    iget-object v8, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v8

    :cond_73
    if-eqz v8, :cond_7b

    .line 409
    new-instance v7, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v7, v8}, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    goto :goto_95

    .line 415
    :cond_7b
    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 416
    iget-object v7, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v8, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v7, :cond_90

    .line 418
    new-instance v7, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v7, v5}, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 420
    :cond_90
    new-instance v7, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v7, v5}, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 422
    :goto_95
    iget-object v8, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v9, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    if-eqz p3, :cond_a4

    and-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_a4

    const/4 v7, 0x1

    goto :goto_a5

    :cond_a4
    move v7, v2

    .line 426
    :goto_a5
    new-instance v8, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    invoke-direct {v8, v5}, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 427
    aget v5, v1, v3

    iput v5, v8, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    .line 428
    iput v6, v8, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    .line 431
    iput-boolean v7, v8, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    .line 432
    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_b5} :catch_b6

    goto :goto_cc

    .line 434
    :catch_b6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unknown permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppSecurityPermissions"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_d0
    :goto_d0
    return-void
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 341
    array-length v0, p1

    if-nez v0, :cond_c

    goto :goto_18

    .line 344
    :cond_c
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    .line 345
    invoke-direct {p0, v2, p2}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    :goto_18
    return-void
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .registers 11

    const-string v0, "layout_inflater"

    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 335
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;
    .registers 15

    .line 521
    iget p0, p3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_a

    const p0, 0x7f0d0048

    goto :goto_d

    :cond_a
    const p0, 0x7f0d0047

    :goto_d
    const/4 v0, 0x0

    .line 520
    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 524
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->setPermission(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V

    return-object p0
.end method

.method private getPermissionItemView(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;
    .registers 14

    .line 512
    iget-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;

    move-result-object p0

    return-object p0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .registers 7

    const p0, 0x7f0d0049

    const/4 p4, 0x0

    .line 530
    invoke-virtual {p1, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a054e

    .line 532
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p4, 0x7f0a0551

    .line 533
    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v0, 0x7f0a053e

    .line 535
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 536
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_2f

    .line 538
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 541
    :cond_2f
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 542
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_37
    return-object p0
.end method

.method private getPermissionList(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x4

    if-ne p2, p0, :cond_6

    .line 445
    iget-object p0, p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    return-object p0

    :cond_6
    const/4 p0, 0x1

    if-ne p2, p0, :cond_c

    .line 447
    iget-object p0, p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    return-object p0

    :cond_c
    const/4 p0, 0x2

    if-ne p2, p0, :cond_12

    .line 449
    iget-object p0, p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    return-object p0

    .line 451
    :cond_12
    iget-object p0, p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 352
    invoke-direct {p0, v0, p2, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_22

    .line 354
    :catch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t retrieve permissions for package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSecurityPermissions"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method private getPermissionsView(IZ)Landroid/view/View;
    .registers 7

    .line 476
    iget-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0555

    .line 477
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04ec

    .line 478
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 480
    iget-object v3, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/meizu/settings/applications/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V

    .line 481
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-gtz p0, :cond_2b

    const/4 p0, 0x0

    .line 482
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-object v0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .registers 8

    .line 549
    iget p0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    move v2, v0

    :goto_b
    if-ne p0, v1, :cond_f

    move p0, v1

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v0

    .line 554
    :goto_17
    iget p1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1f

    move p1, v1

    goto :goto_20

    :cond_1f
    move p1, v0

    :goto_20
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_26

    move p3, v1

    goto :goto_27

    :cond_26
    move p3, v0

    :goto_27
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2d

    move p2, v1

    goto :goto_2e

    :cond_2d
    move p2, v0

    :goto_2e
    if-nez v2, :cond_32

    if-eqz p0, :cond_39

    :cond_32
    if-nez v3, :cond_3f

    if-nez p3, :cond_3f

    if-eqz p2, :cond_39

    goto :goto_3f

    :cond_39
    if-eqz p1, :cond_3e

    if-eqz p3, :cond_3e

    return v1

    :cond_3e
    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method private setPermissions(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_51

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    .line 627
    iget v1, v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iget v2, v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/settings/applications/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_6

    .line 632
    :cond_1d
    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v1, :cond_6

    .line 634
    iget-object v2, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 635
    iget-object v2, v1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;)V

    .line 636
    iget-boolean v2, v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v2, :cond_3f

    .line 637
    iget-object v2, v1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;)V

    .line 639
    :cond_3f
    iget v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4b

    .line 640
    iget-object v1, v1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_6

    .line 642
    :cond_4b
    iget-object v1, v1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_6

    .line 648
    :cond_51
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 649
    iget v1, v0, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    if-nez v1, :cond_8b

    iget-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_70

    goto :goto_8b

    .line 654
    :cond_70
    :try_start_70
    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_81
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_81} :catch_82

    goto :goto_93

    .line 657
    :catch_82
    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_93

    .line 650
    :cond_8b
    :goto_8b
    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    .line 660
    :goto_93
    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 662
    :cond_99
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupComparator:Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getPermissionCount()I
    .registers 2

    const v0, 0xffff

    .line 440
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionCount(I)I

    move-result p0

    return p0
.end method

.method public getPermissionCount(I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 457
    :goto_2
    iget-object v2, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 458
    iget-object v2, p0, Lcom/meizu/settings/applications/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {p0, v2, p1}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionList(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1e
    return v1
.end method

.method public getPermissionsViewWithRevokeButtons()Landroid/view/View;
    .registers 3

    const v0, 0xffff

    const/4 v1, 0x1

    .line 468
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
