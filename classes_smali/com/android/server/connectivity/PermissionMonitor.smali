.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final NETWORK:Ljava/lang/Boolean;

.field protected static final SYSTEM:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"

.field private static final VERSION_Q:I = 0x1d


# instance fields
.field private final mAllApps:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetd:Landroid/net/INetd;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpnUidRanges:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/INetd;)V
    .registers 4

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 145
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PermissionMonitor;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200([Ljava/lang/String;[I)I
    .registers 2

    .line 75
    invoke-static {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method private static getNetdPermissionMask([Ljava/lang/String;[I)I
    .registers 6

    .line 453
    nop

    .line 454
    const/4 v0, 0x0

    if-eqz p0, :cond_33

    if-nez p1, :cond_7

    goto :goto_33

    .line 455
    :cond_7
    move v1, v0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_32

    .line 456
    aget-object v2, p0, v0

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    aget v2, p1, v0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1d

    .line 458
    or-int/lit8 v1, v1, 0x4

    .line 460
    :cond_1d
    aget-object v2, p0, v0

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    aget v2, p1, v0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2f

    .line 462
    or-int/lit8 v1, v1, 0x8

    .line 455
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 465
    :cond_32
    return v1

    .line 454
    :cond_33
    :goto_33
    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x401000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 472
    return-object p1

    .line 473
    :catch_a
    move-exception p1

    .line 474
    const/4 p1, 0x0

    return-object p1
.end method

.method private intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 534
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 535
    invoke-virtual {v1}, Landroid/net/UidRange;->getStartUser()I

    move-result v2

    :goto_19
    invoke-virtual {v1}, Landroid/net/UidRange;->getEndUser()I

    move-result v3

    if-gt v2, v3, :cond_48

    .line 536
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 537
    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 538
    invoke-virtual {v1, v4}, Landroid/net/UidRange;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 539
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_44
    goto :goto_23

    .line 535
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 543
    :cond_48
    goto :goto_9

    .line 544
    :cond_49
    return-object v0
.end method

.method static isVendorApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 699
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    .line 704
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 708
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    return-void
.end method

.method private removeBypassingUids(Ljava/util/Set;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 557
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    new-instance p2, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 559
    return-void
.end method

.method private toIntArray(Ljava/util/Collection;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 279
    nop

    .line 280
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 281
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 282
    move v1, v3

    goto :goto_c

    .line 283
    :cond_22
    return-object v0
.end method

.method private update(Ljava/util/Set;Ljava/util/Map;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object v3, v1

    goto :goto_2d

    :cond_2c
    move-object v3, v0

    .line 291
    :goto_2d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 292
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    goto :goto_31

    .line 294
    :cond_57
    goto :goto_12

    .line 296
    :cond_58
    if-eqz p3, :cond_6f

    .line 297
    :try_start_5a
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    .line 298
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 p2, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    goto :goto_81

    .line 300
    :cond_6f
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    .line 301
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_81} :catch_82

    .line 305
    :goto_81
    goto :goto_97

    .line 303
    :catch_82
    move-exception p1

    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception when updating permissions: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 306
    :goto_97
    return-void
.end method

.method private updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 573
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 574
    return-void

    .line 577
    :cond_7
    const-string v0, "Exception when updating permissions: "

    if-eqz p3, :cond_15

    .line 578
    :try_start_b
    iget-object p3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-interface {p3, p1, p2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    goto :goto_2e

    .line 580
    :cond_15
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_1e} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_1f

    goto :goto_2e

    .line 588
    :catch_1f
    move-exception p1

    .line 589
    invoke-static {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 582
    :catch_24
    move-exception p1

    .line 585
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget p3, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq p2, p3, :cond_2e

    .line 586
    invoke-static {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    :cond_2e
    :goto_2e
    nop

    .line 591
    :goto_2f
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 687
    const-string v0, "Interface filtering rules:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 689
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 693
    goto :goto_12

    .line 694
    :cond_5a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 695
    return-void
.end method

.method protected getDeviceFirstSdkInt()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 228
    sget v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    return v0
.end method

.method public getVpnUidRanges(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 233
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v0, :cond_a

    goto :goto_23

    .line 236
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 237
    if-ltz p2, :cond_22

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    array-length v0, v0

    if-lt p2, v0, :cond_18

    goto :goto_22

    .line 238
    :cond_18
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget p1, p1, p2

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 237
    :cond_22
    :goto_22
    return v1

    .line 234
    :cond_23
    :goto_23
    return v1
.end method

.method hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 253
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    const/16 v3, 0x1d

    if-ne v0, v2, :cond_16

    invoke-virtual {p0}, Lcom/android/server/connectivity/PermissionMonitor;->getDeviceFirstSdkInt()I

    move-result v0

    if-ge v0, v3, :cond_16

    .line 254
    return v1

    .line 257
    :cond_16
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v3, :cond_25

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 258
    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->isVendorApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 259
    return v1

    .line 262
    :cond_25
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 263
    const-string v0, "android.permission.NETWORK_STACK"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 264
    const-string v0, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v1, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    nop

    .line 262
    :goto_41
    return v1
.end method

.method public declared-synchronized hasUseBackgroundNetworksPermission(I)Z
    .registers 3

    monitor-enter p0

    .line 274
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 348
    sget-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_5

    .line 349
    return-object p1

    .line 352
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    .line 355
    if-nez v1, :cond_19

    if-eqz v0, :cond_1d

    .line 356
    :cond_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 361
    :cond_1d
    goto :goto_33

    .line 358
    :catch_1e
    move-exception v0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 362
    :goto_33
    return-object p1
.end method

.method public synthetic lambda$removeBypassingUids$0$PermissionMonitor(Ljava/lang/Integer;)Z
    .registers 4

    .line 558
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    sget-object v1, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public declared-synchronized onPackageAdded(Ljava/lang/String;I)V
    .registers 7

    monitor-enter p0

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 377
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_38

    .line 378
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    .line 388
    :cond_38
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p2}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 390
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 391
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 395
    :cond_73
    goto :goto_42

    .line 396
    :cond_74
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    .line 397
    monitor-exit p0

    return-void

    .line 375
    :catchall_83
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPackageRemoved(I)V
    .registers 9

    monitor-enter p0

    .line 410
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 411
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 412
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 417
    :cond_3d
    goto :goto_b

    .line 419
    :cond_3e
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    .line 420
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 423
    :cond_53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 424
    const/4 v1, 0x0

    .line 425
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 426
    if-eqz v3, :cond_79

    array-length v4, v3

    if-lez v4, :cond_79

    .line 427
    array-length v4, v3

    move-object v5, v1

    move v1, v2

    :goto_67
    if-ge v1, v4, :cond_78

    aget-object v6, v3, v1

    .line 428
    invoke-virtual {p0, v5, v6}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 429
    sget-object v6, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_b9

    if-ne v5, v6, :cond_75

    .line 433
    monitor-exit p0

    return-void

    .line 427
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_78
    move-object v1, v5

    .line 437
    :cond_79
    :try_start_79
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_b9

    if-ne v1, v3, :cond_87

    .line 439
    monitor-exit p0

    return-void

    .line 440
    :cond_87
    if-eqz v1, :cond_a0

    .line 441
    :try_start_89
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    goto :goto_b7

    .line 445
    :cond_a0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_b7
    .catchall {:try_start_89 .. :try_end_b7} :catchall_b9

    .line 449
    :goto_b7
    monitor-exit p0

    return-void

    .line 409
    :catchall_b9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserAdded(I)V
    .registers 4

    monitor-enter p0

    .line 316
    if-gez p1, :cond_19

    .line 317
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 318
    monitor-exit p0

    return-void

    .line 320
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_36

    .line 325
    monitor-exit p0

    return-void

    .line 315
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserRemoved(I)V
    .registers 4

    monitor-enter p0

    .line 335
    if-gez p1, :cond_19

    .line 336
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_36

    .line 337
    monitor-exit p0

    return-void

    .line 339
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_36

    .line 344
    monitor-exit p0

    return-void

    .line 334
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 491
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 492
    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 493
    const/4 p3, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 494
    iget-object p3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 495
    iget-object p3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    .line 497
    :cond_22
    iget-object p3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 499
    :goto_2c
    monitor-exit p0

    return-void

    .line 490
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 513
    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 514
    const/4 p3, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 515
    iget-object p3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 516
    if-nez p3, :cond_2f

    .line 517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to remove unknown vpn uid Range iface = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3f

    .line 518
    monitor-exit p0

    return-void

    .line 520
    :cond_2f
    :try_start_2f
    invoke-interface {p3, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 521
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_3d

    .line 522
    iget-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3f

    .line 524
    :cond_3d
    monitor-exit p0

    return-void

    .line 511
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendPackagePermissionsForUid(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 604
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 605
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V

    .line 607
    return-void
.end method

.method sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const-string v1, "PermissionMonitor"

    if-nez v0, :cond_c

    .line 621
    const-string p1, "Failed to get the netd service"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void

    .line 624
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 627
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 628
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 629
    const/4 v6, 0x0

    move v7, v6

    :goto_27
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    const/16 v9, 0xc

    const/16 v10, 0x8

    const/4 v11, 0x4

    const/4 v12, -0x1

    if-ge v7, v8, :cond_a1

    .line 630
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 631
    if-eq v8, v12, :cond_72

    if-eqz v8, :cond_66

    if-eq v8, v11, :cond_5a

    if-eq v8, v10, :cond_4e

    if-eq v8, v9, :cond_42

    goto :goto_7d

    .line 633
    :cond_42
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    goto :goto_9e

    .line 639
    :cond_4e
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    goto :goto_9e

    .line 636
    :cond_5a
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    goto :goto_9e

    .line 642
    :cond_66
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    goto :goto_9e

    .line 645
    :cond_72
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :goto_7d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown permission type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "for uid: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {p1, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 647
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_9e
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 653
    :cond_a1
    :try_start_a1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_b0

    .line 654
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 656
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    .line 654
    invoke-interface {p1, v9, v0}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 658
    :cond_b0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_bf

    .line 659
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 660
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    .line 659
    invoke-interface {p1, v11, v0}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 662
    :cond_bf
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_ce

    .line 663
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 664
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    .line 663
    invoke-interface {p1, v10, v0}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 666
    :cond_ce
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_dd

    .line 667
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 668
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    .line 667
    invoke-interface {p1, v6, v0}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 670
    :cond_dd
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_ec

    .line 671
    iget-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 672
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    .line 671
    invoke-interface {p1, v12, v0}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_ec} :catch_ed

    .line 676
    :cond_ec
    goto :goto_102

    .line 674
    :catch_ed
    move-exception p1

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pass appId list of special permission failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_102
    return-void
.end method

.method public declared-synchronized startMonitoring()V
    .registers 10

    monitor-enter p0

    .line 152
    :try_start_1
    const-string v0, "Monitoring"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 154
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 155
    if-eqz v0, :cond_1a

    .line 156
    new-instance v1, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;-><init>(Lcom/android/server/connectivity/PermissionMonitor;Lcom/android/server/connectivity/PermissionMonitor$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    goto :goto_1f

    .line 158
    :cond_1a
    const-string v0, "failed to get the PackageManagerInternal service"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 160
    :goto_1f
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x401000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 162
    if-nez v0, :cond_31

    .line 163
    const-string v0, "No apps"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_138

    .line 164
    monitor-exit p0

    return-void

    .line 167
    :cond_31
    :try_start_31
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 170
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_4f

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_50

    :cond_4f
    const/4 v3, -0x1

    .line 171
    :goto_50
    if-gez v3, :cond_53

    .line 172
    goto :goto_3a

    .line 174
    :cond_53
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 177
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    .line 179
    if-nez v4, :cond_6c

    if-eqz v5, :cond_8b

    .line 180
    :cond_6c
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 183
    if-eqz v4, :cond_7e

    sget-object v6, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    if-ne v4, v6, :cond_8b

    .line 184
    :cond_7e
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_8b
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v4, v2}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v2

    .line 191
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    goto :goto_3a

    .line 194
    :cond_9c
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_c1

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 197
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_a9

    .line 202
    :cond_c1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v0

    .line 203
    const/4 v3, 0x0

    move v4, v3

    :goto_cb
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_104

    .line 204
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 205
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 206
    nop

    .line 208
    if-eqz v5, :cond_f8

    .line 209
    const-string v7, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 210
    const/16 v7, 0x8

    goto :goto_ea

    :cond_e9
    move v7, v3

    :goto_ea
    or-int/2addr v7, v3

    .line 211
    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 212
    const/4 v5, 0x4

    goto :goto_f6

    :cond_f5
    move v5, v3

    :goto_f6
    or-int/2addr v5, v7

    goto :goto_f9

    .line 208
    :cond_f8
    move v5, v3

    .line 214
    :goto_f9
    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_cb

    .line 216
    :cond_104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Users: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Apps: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    :try_end_136
    .catchall {:try_start_31 .. :try_end_136} :catchall_138

    .line 219
    monitor-exit p0

    return-void

    .line 151
    :catchall_138
    move-exception v0

    monitor-exit p0

    throw v0
.end method
