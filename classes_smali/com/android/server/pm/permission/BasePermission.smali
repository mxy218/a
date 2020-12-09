.class public final Lcom/android/server/pm/permission/BasePermission;
.super Ljava/lang/Object;
.source "BasePermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/BasePermission$ProtectionLevel;,
        Lcom/android/server/pm/permission/BasePermission$PermissionType;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PackageManager"

.field public static final TYPE_BUILTIN:I = 0x1

.field public static final TYPE_DYNAMIC:I = 0x2

.field public static final TYPE_NORMAL:I


# instance fields
.field private gids:[I

.field final name:Ljava/lang/String;

.field pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private perUser:Z

.field perm:Landroid/content/pm/PackageParser$Permission;

.field protectionLevel:I

.field sourcePackageName:Ljava/lang/String;

.field sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

.field final type:I

.field uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    .line 113
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 114
    return-void
.end method

.method private static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .registers 5

    .line 572
    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 573
    :cond_8
    iget v0, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_f

    return v2

    .line 574
    :cond_f
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_16

    return v2

    .line 575
    :cond_16
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    return v2

    .line 576
    :cond_21
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    return v2

    .line 578
    :cond_2c
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/BasePermission;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_37

    return v2

    .line 584
    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method private static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 5

    .line 559
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 560
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 562
    :cond_7
    if-nez p1, :cond_a

    .line 563
    return v0

    .line 565
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_15

    .line 566
    return v0

    .line 568
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/BasePermission;",
            "Landroid/content/pm/PackageParser$Permission;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;Z)",
            "Lcom/android/server/pm/permission/BasePermission;"
        }
    .end annotation

    .line 331
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSettingBase;

    .line 333
    const/high16 v1, 0x40000000  # 2.0f

    const/4 v2, 0x0

    if-eqz p0, :cond_7d

    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 334
    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    const/4 v4, 0x1

    if-eqz v3, :cond_24

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    .line 335
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v4

    goto :goto_25

    :cond_24
    move v3, v2

    .line 336
    :goto_25
    iget-object v5, p1, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 337
    iget v5, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    if-ne v5, v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-nez v4, :cond_4d

    .line 339
    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 340
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 341
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 342
    iget-object v3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 343
    iget-object v3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr v4, v1

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    goto :goto_7d

    .line 344
    :cond_4d
    if-nez v3, :cond_7d

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New decl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " of permission  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is system; overriding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 347
    const/4 v3, 0x5

    invoke-static {v3, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 348
    const/4 p0, 0x0

    .line 352
    :cond_7d
    :goto_7d
    if-nez p0, :cond_8c

    .line 353
    new-instance p0, Lcom/android/server/pm/permission/BasePermission;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    :cond_8c
    nop

    .line 356
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    const/16 v3, 0x100

    if-nez v2, :cond_147

    .line 357
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string v4, " from package "

    const-string v5, "Permission "

    const-string v6, "PackageManager"

    if-eqz v2, :cond_d4

    iget-object v7, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 358
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    goto :goto_d4

    .line 382
    :cond_a8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ignored: original from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15b

    .line 359
    :cond_d4
    :goto_d4
    iget-object v2, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p3

    .line 360
    if-eqz p3, :cond_120

    iget-object v2, p3, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 361
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    goto :goto_120

    .line 376
    :cond_eb
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p4, p4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p4, p4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ignored: base tree "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p3, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " is from package "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_146

    .line 362
    :cond_120
    :goto_120
    iput-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 363
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 364
    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p2, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 365
    iget-object p2, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 366
    iget-object p2, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget p3, p2, Landroid/content/pm/PermissionInfo;->flags:I

    or-int/2addr p3, v1

    iput p3, p2, Landroid/content/pm/PermissionInfo;->flags:I

    .line 367
    if-eqz p4, :cond_146

    .line 368
    nop

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    iget-object p3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_146
    :goto_146
    goto :goto_15b

    .line 386
    :cond_147
    if-eqz p4, :cond_15b

    .line 387
    nop

    .line 388
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 392
    const-string p3, "DUP:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object p3, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p3, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_15b
    :goto_15b
    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne p2, p1, :cond_165

    .line 396
    iget-object p1, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget p1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 401
    :cond_165
    return-object p0
.end method

.method static enforcePermissionTree(Ljava/util/Collection;Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/pm/permission/BasePermission;"
        }
    .end annotation

    .line 406
    if-eqz p1, :cond_3c

    .line 407
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p0

    .line 408
    if-eqz p0, :cond_3c

    .line 409
    iget p1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 410
    return-object p0

    .line 412
    :cond_11
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed to add to permission tree "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " owned by uid "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 417
    :cond_3c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No permission tree found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/pm/permission/BasePermission;"
        }
    .end annotation

    .line 436
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/BasePermission;

    .line 437
    iget-object v1, v0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_33

    iget-object v1, v0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 439
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_33

    .line 440
    return-object v0

    .line 442
    :cond_33
    goto :goto_4

    .line 443
    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7

    .line 518
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 520
    if-nez p1, :cond_7

    .line 521
    return p3

    .line 523
    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    .line 524
    :catch_c
    move-exception v0

    .line 525
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has bad integer value "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 525
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 530
    return p3
.end method

.method public static readLPw(Ljava/util/Map;Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")Z"
        }
    .end annotation

    .line 481
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 483
    return v1

    .line 485
    :cond_e
    const/4 v0, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    const-string/jumbo v3, "package"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 487
    const-string/jumbo v4, "type"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    if-eqz v2, :cond_8a

    if-nez v3, :cond_29

    goto :goto_8a

    .line 494
    :cond_29
    const-string v5, "dynamic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 495
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/BasePermission;

    .line 497
    const/4 v6, 0x1

    if-eqz v5, :cond_3c

    iget v7, v5, Lcom/android/server/pm/permission/BasePermission;->type:I

    if-eq v7, v6, :cond_4a

    .line 498
    :cond_3c
    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 499
    if-eqz v4, :cond_46

    const/4 v8, 0x2

    goto :goto_47

    :cond_46
    move v8, v1

    :goto_47
    invoke-direct {v5, v7, v3, v8}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 501
    :cond_4a
    const-string/jumbo v7, "protection"

    invoke-static {p1, v0, v7, v1}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 503
    iget v7, v5, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-static {v7}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v7

    iput v7, v5, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 504
    if-eqz v4, :cond_84

    .line 505
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 506
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 507
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 508
    const-string v2, "icon"

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/pm/permission/BasePermission;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 509
    const-string v1, "label"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 510
    iget p1, v5, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput p1, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 511
    iput-object v4, v5, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 513
    :cond_84
    iget-object p1, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    return v6

    .line 489
    :cond_8a
    :goto_8a
    const/4 p0, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 492
    return v1
.end method


# virtual methods
.method public addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z
    .registers 7

    .line 296
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-ne v0, p1, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_27

    iget v1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iget v2, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    if-ne v1, v2, :cond_27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 301
    invoke-static {v0, p2}, Lcom/android/server/pm/permission/BasePermission;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    .line 302
    :goto_28
    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    .line 303
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-direct {v1, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 304
    iput p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 305
    new-instance p1, Landroid/content/pm/PackageParser$Permission;

    iget-object p2, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p1, p2, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 306
    iget-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p2, p3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object p2, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 307
    iget p1, p3, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 308
    return v0
.end method

.method public calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 4

    .line 167
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iget v1, p1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    if-ne v0, v1, :cond_16

    .line 168
    iget-object v0, p1, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 170
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public computeGids(I)[I
    .registers 6

    .line 155
    iget-boolean v0, p0, Lcom/android/server/pm/permission/BasePermission;->perUser:Z

    if-eqz v0, :cond_1b

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 157
    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 158
    aget v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    aput v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 160
    :cond_1a
    return-object v0

    .line 162
    :cond_1b
    iget-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    return-object p1
.end method

.method public dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;ZZLcom/android/server/pm/DumpState;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/android/server/pm/DumpState;",
            ")Z"
        }
    .end annotation

    .line 590
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 591
    return v0

    .line 593
    :cond_c
    if-eqz p3, :cond_17

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    .line 594
    return v0

    .line 596
    :cond_17
    if-nez p5, :cond_27

    .line 597
    invoke-virtual {p6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 598
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 599
    :cond_22
    const-string p2, "Permissions:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    :cond_27
    const-string p2, "  Permission ["

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "] ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    const-string p2, "):"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string p2, "    sourcePackage="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string p2, "    uid="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 607
    const-string p2, " gids="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object p2

    .line 607
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    const-string p2, " type="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 610
    const-string p2, " prot="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    iget p2, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-static {p2}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz p2, :cond_b7

    .line 613
    const-string p2, "    perm="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 614
    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 p3, 0x40000000  # 2.0f

    and-int/2addr p2, p3

    if-eqz p2, :cond_a5

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b7

    .line 616
    :cond_a5
    const-string p2, "    flags=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    :cond_b7
    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz p2, :cond_c5

    .line 620
    const-string p2, "    packageSetting="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 622
    :cond_c5
    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d7

    .line 623
    const-string p2, "    enforced="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Z)V

    .line 626
    :cond_d7
    const/4 p1, 0x1

    return p1
.end method

.method public enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    .line 421
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 422
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 423
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 424
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1c

    goto :goto_3f

    .line 425
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not requested permission "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_74

    .line 429
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requested by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a changeable permission type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_74
    :goto_74
    return-void
.end method

.method public generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .registers 5

    .line 461
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_22

    .line 462
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eq v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 463
    :goto_b
    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p2

    .line 464
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-ne p2, v0, :cond_21

    .line 466
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 467
    iput p1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move-object p2, v0

    .line 469
    :cond_21
    return-object p2

    .line 471
    :cond_22
    new-instance p1, Landroid/content/pm/PermissionInfo;

    invoke-direct {p1}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 472
    iget-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object p2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 474
    iput-object p2, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 475
    iget p2, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    iput p2, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 476
    return-object p1
.end method

.method public generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 4

    .line 447
    if-nez p1, :cond_13

    .line 448
    iget-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz p1, :cond_c

    iget-object p1, p1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez p1, :cond_28

    .line 449
    :cond_c
    iget p1, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    return-object p1

    .line 452
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_28

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 453
    iget-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    return-object p1

    .line 456
    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionLevel()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    return-object v0
.end method

.method public getSourceSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSettingBase;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    return v0
.end method

.method public isAppOp()Z
    .registers 2

    .line 223
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isAppPredictor()Z
    .registers 3

    .line 277
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isConfigurator()Z
    .registers 3

    .line 270
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isDevelopment()Z
    .registers 2

    .line 226
    invoke-virtual {p0}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isDocumenter()Z
    .registers 3

    .line 267
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isDynamic()Z
    .registers 3

    .line 178
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isHardOrSoftRestricted()Z
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isHardRestricted()Z
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isImmutablyRestricted()Z
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isIncidentReportApprover()Z
    .registers 3

    .line 274
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isInstaller()Z
    .registers 2

    .line 230
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isInstant()Z
    .registers 2

    .line 233
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNormal()Z
    .registers 2

    .line 183
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isOEM()Z
    .registers 2

    .line 236
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPermission(Landroid/content/pm/PackageParser$Permission;)Z
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public isPre23()Z
    .registers 2

    .line 239
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPreInstalled()Z
    .registers 2

    .line 242
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 245
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRemoved()Z
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isRuntime()Z
    .registers 3

    .line 187
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isRuntimeOnly()Z
    .registers 2

    .line 248
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSetup()Z
    .registers 2

    .line 251
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSignature()Z
    .registers 3

    .line 218
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isSoftRestricted()Z
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isSystemTextClassifier()Z
    .registers 3

    .line 260
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isVendorPrivileged()Z
    .registers 3

    .line 257
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isVerifier()Z
    .registers 2

    .line 254
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isWellbeing()Z
    .registers 3

    .line 264
    iget v0, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public setGids([IZ)V
    .registers 3

    .line 144
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->gids:[I

    .line 145
    iput-boolean p2, p0, Lcom/android/server/pm/permission/BasePermission;->perUser:Z

    .line 146
    return-void
.end method

.method public setPermission(Landroid/content/pm/PackageParser$Permission;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 149
    return-void
.end method

.method public setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasePermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 282
    return-void

    .line 284
    :cond_9
    iput-object p2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    .line 285
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 286
    iput-object p1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 287
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_16

    .line 288
    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 290
    :cond_16
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 292
    return-void
.end method

.method public updateDynamicPermission(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_40

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/pm/permission/BasePermission;->findPermissionTree(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    .line 317
    if-eqz p1, :cond_40

    iget-object v0, p1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v0, :cond_40

    .line 318
    iget-object v1, p1, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    iput-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 319
    new-instance v1, Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v2, Landroid/content/pm/PermissionInfo;

    iget-object v3, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v1, v0, v2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 321
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, p1, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 323
    iget p1, p1, Lcom/android/server/pm/permission/BasePermission;->uid:I

    iput p1, p0, Lcom/android/server/pm/permission/BasePermission;->uid:I

    .line 326
    :cond_40
    return-void
.end method

.method public writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 535
    return-void

    .line 537
    :cond_5
    const-string v0, "item"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->sourcePackageName:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-eqz v2, :cond_29

    .line 541
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "protection"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    :cond_29
    iget v2, p0, Lcom/android/server/pm/permission/BasePermission;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5f

    .line 544
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v2, :cond_35

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_37

    :cond_35
    iget-object v2, p0, Lcom/android/server/pm/permission/BasePermission;->pendingPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 545
    :goto_37
    if-eqz v2, :cond_5f

    .line 546
    const-string/jumbo v3, "type"

    const-string v4, "dynamic"

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    iget v3, v2, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v3, :cond_50

    .line 548
    iget v3, v2, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "icon"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    :cond_50
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5f

    .line 551
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    :cond_5f
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    return-void
.end method
