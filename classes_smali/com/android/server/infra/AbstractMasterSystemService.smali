.class public abstract Lcom/android/server/infra/AbstractMasterSystemService;
.super Lcom/android/server/SystemService;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;,
        Lcom/android/server/infra/AbstractMasterSystemService$Visitor;,
        Lcom/android/server/infra/AbstractMasterSystemService$ServicePackagePolicyFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "TM;TS;>;S:",
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "TS;TM;>;>",
        "Lcom/android/server/SystemService;"
    }
.end annotation


# static fields
.field public static final PACKAGE_RESTART_POLICY_NO_REFRESH:I = 0x10

.field public static final PACKAGE_RESTART_POLICY_REFRESH_EAGER:I = 0x40

.field public static final PACKAGE_RESTART_POLICY_REFRESH_LAZY:I = 0x20

.field public static final PACKAGE_UPDATE_POLICY_NO_REFRESH:I = 0x1

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_EAGER:I = 0x4

.field public static final PACKAGE_UPDATE_POLICY_REFRESH_LAZY:I = 0x2


# instance fields
.field public debug:Z

.field protected mAllowInstantService:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field protected final mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

.field private final mServicePackagePolicyFlags:I

.field private final mServicesCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final mTag:Ljava/lang/String;

.field private mUpdatingPackageNames:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public verbose:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V
    .registers 5

    .line 204
    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 206
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V
    .registers 10

    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 172
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    .line 233
    and-int/lit8 v1, p4, 0x7

    if-nez v1, :cond_26

    .line 235
    or-int/lit8 p4, p4, 0x2

    .line 239
    :cond_26
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_2c

    .line 241
    or-int/lit8 p4, p4, 0x20

    .line 243
    :cond_2c
    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 245
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 246
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz p2, :cond_3c

    .line 247
    new-instance p4, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$su3lJpEVIbL-C7doP4eboTpqjxU;

    invoke-direct {p4, p0}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$su3lJpEVIbL-C7doP4eboTpqjxU;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    invoke-interface {p2, p4}, Lcom/android/server/infra/ServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    .line 251
    :cond_3c
    if-nez p3, :cond_42

    .line 252
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    goto :goto_98

    .line 254
    :cond_42
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 256
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 257
    const-class p2, Landroid/os/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManagerInternal;

    .line 258
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 259
    nop

    :goto_5e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge v0, p4, :cond_90

    .line 260
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/UserInfo;

    iget p4, p4, Landroid/content/pm/UserInfo;->id:I

    .line 261
    invoke-virtual {p2, p4, p3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    .line 262
    if-eqz v1, :cond_8d

    .line 263
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling by restrictions user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 259
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 267
    :cond_90
    new-instance p1, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$_fKw-VUP0pSfcMMlgRqoT4OPhxw;

    invoke-direct {p1, p0, p3}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$_fKw-VUP0pSfcMMlgRqoT4OPhxw;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 285
    :goto_98
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I
    .registers 1

    .line 78
    iget p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    return p0
.end method

.method private startTrackingPackageChanges()V
    .registers 6

    .line 766
    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$1;

    invoke-direct {v0, p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    .line 941
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 942
    return-void
.end method


# virtual methods
.method protected final assertCalledByPackageOwner(Ljava/lang/String;)V
    .registers 7

    .line 702
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 704
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_25

    .line 706
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 707
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    return-void

    .line 706
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 710
    :cond_25
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not own "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected clearCacheLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 694
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 13

    .line 715
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 716
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 721
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iput-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 722
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 723
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Debug: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 724
    const-string v3, " Verbose: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 725
    const-string v3, "Package policy flags: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 726
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    if-eqz v3, :cond_3a

    .line 727
    const-string v3, "Packages being updated: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 729
    :cond_3a
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_ed

    const-string v4, ": "

    const-string v5, "    "

    const/4 v6, 0x0

    if-eqz v3, :cond_86

    .line 730
    :try_start_43
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Name resolver: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3, p2}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 732
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 733
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 734
    move v7, v6

    :goto_64
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_86

    .line 735
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 736
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    iget-object v9, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v9, p2, v8}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 734
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 740
    :cond_86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Users disabled by restriction: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 742
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Allow instant service: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 743
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v3

    .line 744
    if-eqz v3, :cond_b1

    .line 745
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Settings property: "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    :cond_b1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Cached services: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    if-nez v2, :cond_c2

    .line 749
    const-string/jumbo p1, "none"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e7

    .line 751
    :cond_c2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 752
    nop

    :goto_c6
    if-ge v6, v2, :cond_e7

    .line 753
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Service at "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 755
    invoke-virtual {v3, v5, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 756
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_e4
    .catchall {:try_start_43 .. :try_end_e4} :catchall_ed

    .line 752
    add-int/lit8 v6, v6, 0x1

    goto :goto_c6

    .line 760
    :cond_e7
    :goto_e7
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 761
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 762
    nop

    .line 763
    return-void

    .line 760
    :catchall_ed
    move-exception p1

    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 761
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    throw p1
.end method

.method protected enforceCallingPermissionForManagement()V
    .registers 4

    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAllowInstantService()Z
    .registers 3

    .line 317
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 318
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 320
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .registers 4

    .line 442
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 526
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 526
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 529
    if-nez v1, :cond_2e

    .line 530
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v1

    .line 531
    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 532
    if-nez v1, :cond_28

    .line 533
    invoke-virtual {p0, v2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 535
    :cond_28
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 537
    :cond_2e
    return-object v1
.end method

.method protected getServiceSettingsProperty()Ljava/lang/String;
    .registers 2

    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isBindInstantServiceAllowed()Z
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 334
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isDefaultServiceEnabled(I)Z
    .registers 4

    .line 429
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 431
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_6
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1}, Lcom/android/server/infra/ServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 433
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p1
.end method

.method protected isDisabledLocked(I)Z
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    :goto_a
    return p1
.end method

.method public synthetic lambda$new$0$AbstractMasterSystemService(ILjava/lang/String;Z)V
    .registers 4

    .line 248
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceNameChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$new$1$AbstractMasterSystemService(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    .line 268
    nop

    .line 269
    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 270
    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 271
    :try_start_9
    iget-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p4

    .line 272
    if-ne p4, p1, :cond_2d

    .line 274
    iget-boolean p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p4, :cond_2d

    .line 275
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restriction did not change for user "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit p3

    return-void

    .line 279
    :cond_2d
    iget-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 281
    invoke-virtual {p0, p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 282
    monitor-exit p3

    .line 283
    return-void

    .line 282
    :catchall_55
    move-exception p1

    monitor-exit p3
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_55

    throw p1
.end method

.method protected abstract newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 290
    const/16 v0, 0x258

    if-ne p1, v0, :cond_d

    .line 291
    new-instance p1, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V

    .line 293
    :cond_d
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 607
    return-void
.end method

.method protected onServiceNameChanged(ILjava/lang/String;Z)V
    .registers 4

    .line 672
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 673
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 674
    monitor-exit p2

    .line 675
    return-void

    .line 674
    :catchall_8
    move-exception p1

    monitor-exit p2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected onServicePackageDataClearedLocked(I)V
    .registers 5

    .line 643
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageDataCleared("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_20
    return-void
.end method

.method protected onServicePackageRestartedLocked(I)V
    .registers 5

    .line 650
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageRestarted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_20
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .registers 5

    .line 636
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageUpdated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_20
    return-void
.end method

.method protected onServicePackageUpdatingLocked(I)V
    .registers 5

    .line 629
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServicePackageUpdatingLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_20
    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 658
    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .registers 3

    .line 518
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method protected peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 547
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 547
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 549
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/infra/AbstractPerUserSystemService;

    return-object p1
.end method

.method protected registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 3

    .line 508
    return-void
.end method

.method protected final removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_e

    .line 619
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 620
    invoke-virtual {p0, v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 622
    :cond_e
    return-object v0
.end method

.method public final resetTemporaryService(I)V
    .registers 5

    .line 453
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTemporaryService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 455
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    .line 457
    if-eqz p1, :cond_26

    .line 458
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->resetTemporaryServiceLocked()V

    .line 460
    :cond_26
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final setAllowInstantService(Z)V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowInstantService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 347
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_1d
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final setDefaultServiceEnabled(IZ)Z
    .registers 7

    .line 397
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultServiceEnabled() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 400
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_25
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/infra/ServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result v1

    .line 402
    if-nez v1, :cond_53

    .line 403
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_50

    .line 404
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultServiceEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): already "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_50
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 409
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p2

    .line 410
    if-eqz p2, :cond_5c

    .line 411
    invoke-virtual {p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCacheLocked()V

    .line 415
    :cond_5c
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 416
    monitor-exit v0

    .line 417
    const/4 p1, 0x1

    return p1

    .line 416
    :catchall_62
    move-exception p1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_25 .. :try_end_64} :catchall_62

    throw p1
.end method

.method public final setTemporaryService(ILjava/lang/String;I)V
    .registers 7

    .line 366
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 370
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    move-result v0

    .line 372
    if-gt p3, v0, :cond_4f

    .line 377
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_3c
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_45

    .line 380
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCacheLocked()V

    .line 382
    :cond_45
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_4c
    move-exception p1

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_4c

    throw p1

    .line 373
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max duration is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (called with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TS;"
        }
    .end annotation

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_16

    .line 579
    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 580
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result p2

    if-nez p2, :cond_13

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_16

    .line 583
    :cond_13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 586
    :cond_16
    :goto_16
    return-object v0
.end method

.method protected updateCachedServiceLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 558
    return-void
.end method

.method protected visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/infra/AbstractMasterSystemService$Visitor<",
            "TS;>;)V"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 683
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 684
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-interface {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService$Visitor;->visit(Ljava/lang/Object;)V

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 686
    :cond_17
    return-void
.end method
