.class Lcom/android/server/pm/ApexManager;
.super Ljava/lang/Object;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ApexManager$PackageInfoFlags;
    }
.end annotation


# static fields
.field static final MATCH_ACTIVE_PACKAGE:I = 0x1

.field static final MATCH_FACTORY_PACKAGE:I = 0x2

.field static final TAG:Ljava/lang/String; = "ApexManager"


# instance fields
.field private mAllPackagesCache:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApexNameToPackageInfoCache:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mApexService:Landroid/apex/IApexService;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager;->mLock:Ljava/lang/Object;

    .line 87
    :try_start_a
    const-string v0, "apexservice"

    .line 88
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;
    :try_end_16
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_a .. :try_end_16} :catch_1a

    .line 91
    nop

    .line 92
    iput-object p1, p0, Lcom/android/server/pm/ApexManager;->mContext:Landroid/content/Context;

    .line 93
    return-void

    .line 89
    :catch_1a
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Required service apexservice not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/pm/ApexManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/ApexManager;

    .line 59
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static isActive(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "packageInfo"  # Landroid/content/pm/PackageInfo;

    .line 394
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static isFactory(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "packageInfo"  # Landroid/content/pm/PackageInfo;

    .line 404
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method static synthetic lambda$getActivePackages$0(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "item"  # Landroid/content/pm/PackageInfo;

    .line 215
    invoke-static {p0}, Lcom/android/server/pm/ApexManager;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFactoryPackages$1(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "item"  # Landroid/content/pm/PackageInfo;

    .line 229
    invoke-static {p0}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getInactivePackages$2(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "item"  # Landroid/content/pm/PackageInfo;

    .line 243
    invoke-static {p0}, Lcom/android/server/pm/ApexManager;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private populateAllPackagesCacheIfNeeded()V
    .registers 11

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 117
    monitor-exit v0

    return-void

    .line 119
    :cond_9
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ApexManager;->mApexNameToPackageInfoCache:Landroid/util/ArrayMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e5

    .line 121
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v1, "activePackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v2, "factoryPackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-interface {v3}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v3

    .line 125
    .local v3, "allPkgs":[Landroid/apex/ApexInfo;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v4, :cond_c1

    aget-object v6, v3, v5

    .line 128
    .local v6, "ai":Landroid/apex/ApexInfo;
    new-instance v7, Ljava/io/File;

    iget-object v8, v6, Landroid/apex/ApexInfo;->packagePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_38} :catch_c4
    .catchall {:try_start_10 .. :try_end_38} :catchall_e5

    if-eqz v7, :cond_3c

    .line 129
    goto/16 :goto_c1

    .line 132
    :cond_3c
    const v7, 0x8000080

    :try_start_3f
    invoke-static {v6, v7}, Landroid/content/pm/PackageParser;->generatePackageInfoFromApex(Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 135
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-boolean v8, v6, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v8, :cond_7a

    .line 137
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    .line 142
    iget-object v8, v6, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v8, p0, Lcom/android/server/pm/ApexManager;->mApexNameToPackageInfoCache:Landroid/util/ArrayMap;

    iget-object v9, v6, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 138
    :cond_61
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two active packages have the same name: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/ApexManager;
    throw v4

    .line 146
    .restart local p0  # "this":Lcom/android/server/pm/ApexManager;
    :cond_7a
    :goto_7a
    iget-boolean v8, v6, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v8, :cond_a5

    .line 147
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 152
    iget-object v8, v6, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 148
    :cond_8c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two factory packages have the same name: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/ApexManager;
    throw v4
    :try_end_a5
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3f .. :try_end_a5} :catch_a9
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_a5} :catch_c4
    .catchall {:try_start_3f .. :try_end_a5} :catchall_e5

    .line 156
    .end local v7  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local p0  # "this":Lcom/android/server/pm/ApexManager;
    :cond_a5
    :goto_a5
    nop

    .line 125
    .end local v6  # "ai":Landroid/apex/ApexInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 154
    .restart local v6  # "ai":Landroid/apex/ApexInfo;
    :catch_a9
    move-exception v4

    .line 155
    .local v4, "pe":Landroid/content/pm/PackageParser$PackageParserException;
    :try_start_aa
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/pm/ApexManager;
    throw v5
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_c1} :catch_c4
    .catchall {:try_start_aa .. :try_end_c1} :catchall_e5

    .line 161
    .end local v1  # "activePackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2  # "factoryPackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3  # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v4  # "pe":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v6  # "ai":Landroid/apex/ApexInfo;
    .restart local p0  # "this":Lcom/android/server/pm/ApexManager;
    :cond_c1
    :goto_c1
    nop

    .line 162
    :try_start_c2
    monitor-exit v0

    .line 163
    return-void

    .line 158
    :catch_c4
    move-exception v1

    .line 159
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "ApexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve packages from apexservice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/pm/ApexManager;
    throw v2

    .line 162
    .end local v1  # "re":Landroid/os/RemoteException;
    .restart local p0  # "this":Lcom/android/server/pm/ApexManager;
    :catchall_e5
    move-exception v1

    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_c2 .. :try_end_e7} :catchall_e5

    throw v1
.end method


# virtual methods
.method abortActiveSession()Z
    .registers 4

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-interface {v0}, Landroid/apex/IApexService;->abortActiveSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 363
    const/4 v0, 0x1

    return v0

    .line 364
    :catch_7
    move-exception v0

    .line 365
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v1, 0x0

    return v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 444
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 446
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 447
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 448
    const-string v1, "Active APEX packages:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getActivePackages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ApexManager;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 450
    const-string v1, "Inactive APEX packages:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getInactivePackages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ApexManager;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 452
    const-string v1, "Factory APEX packages:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getFactoryPackages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ApexManager;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 454
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 455
    const-string v1, "APEX session state:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 457
    iget-object v1, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-interface {v1}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v1

    .line 458
    .local v1, "sessions":[Landroid/apex/ApexSessionInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_c3

    aget-object v4, v1, v3

    .line 459
    .local v4, "si":Landroid/apex/ApexSessionInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 461
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v5, :cond_6d

    .line 462
    const-string v5, "State: UNKNOWN"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 463
    :cond_6d
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v5, :cond_77

    .line 464
    const-string v5, "State: VERIFIED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 465
    :cond_77
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v5, :cond_81

    .line 466
    const-string v5, "State: STAGED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 467
    :cond_81
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-eqz v5, :cond_8b

    .line 468
    const-string v5, "State: ACTIVATED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 469
    :cond_8b
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-eqz v5, :cond_95

    .line 470
    const-string v5, "State: ACTIVATION FAILED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 471
    :cond_95
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v5, :cond_9f

    .line 472
    const-string v5, "State: SUCCESS"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 473
    :cond_9f
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isRollbackInProgress:Z

    if-eqz v5, :cond_a9

    .line 474
    const-string v5, "State: ROLLBACK IN PROGRESS"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 475
    :cond_a9
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isRolledBack:Z

    if-eqz v5, :cond_b3

    .line 476
    const-string v5, "State: ROLLED BACK"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    .line 477
    :cond_b3
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isRollbackFailed:Z

    if-eqz v5, :cond_bc

    .line 478
    const-string v5, "State: ROLLBACK FAILED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    :cond_bc
    :goto_bc
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 458
    nop

    .end local v4  # "si":Landroid/apex/ApexSessionInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 482
    :cond_c3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c6} :catch_c8

    .line 485
    nop

    .end local v1  # "sessions":[Landroid/apex/ApexSessionInfo;
    goto :goto_ce

    .line 483
    :catch_c8
    move-exception v1

    .line 484
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Couldn\'t communicate with apexd."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 486
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_ce
    return-void
.end method

.method dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    .line 418
    .local p1, "packagesCache":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 419
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 421
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_21

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 422
    goto :goto_a

    .line 424
    :cond_21
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/ApexManager;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsFactory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 431
    .end local v1  # "pi":Landroid/content/pm/PackageInfo;
    goto/16 :goto_a

    .line 432
    :cond_8c
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 433
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 434
    return-void
.end method

.method getActivePackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    .line 214
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/-$$Lambda$ApexManager$9yA7boi20-T0AThVHsxq0Cfs1sk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ApexManager$9yA7boi20-T0AThVHsxq0Cfs1sk;

    .line 215
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 216
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 213
    return-object v0
.end method

.method getFactoryPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    .line 228
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ApexManager$KRyGqIC_rXI5fS6Qv87QmIXpa4k;

    .line 229
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 230
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 227
    return-object v0
.end method

.method getInactivePackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 241
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    .line 242
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ApexManager$FbNDnGihrL8WZzgNwB1-eOeYBpE;

    .line 243
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 244
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 241
    return-object v0
.end method

.method getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "flags"  # I

    .line 178
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 179
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    .line 180
    .local v0, "matchActive":Z
    :goto_c
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_11

    move v1, v2

    .line 181
    .local v1, "matchFactory":Z
    :cond_11
    iget-object v2, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 182
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 183
    goto :goto_17

    .line 185
    :cond_2c
    if-eqz v0, :cond_34

    invoke-static {v3}, Lcom/android/server/pm/ApexManager;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_3d

    :cond_34
    if-eqz v1, :cond_3e

    .line 186
    invoke-static {v3}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3e

    .line 189
    .end local v3  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3d
    goto :goto_17

    .line 187
    .restart local v3  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3e
    :goto_3e
    return-object v3

    .line 190
    .end local v3  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3f
    const/4 v2, 0x0

    return-object v2
.end method

.method getPackageInfoForApexName(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p1, "apexName"  # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mApexNameToPackageInfoCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .registers 5
    .param p1, "sessionId"  # I

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    .line 273
    .local v0, "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    iget-boolean v1, v0, Landroid/apex/ApexSessionInfo;->isUnknown:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_d

    if-eqz v1, :cond_c

    .line 274
    const/4 v1, 0x0

    return-object v1

    .line 276
    :cond_c
    return-object v0

    .line 277
    .end local v0  # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    :catch_d
    move-exception v0

    .line 278
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method isApexPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 254
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 256
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 257
    const/4 v0, 0x1

    return v0

    .line 259
    .end local v1  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1f
    goto :goto_9

    .line 260
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method isApexSupported()Z
    .registers 3

    .line 352
    invoke-static {}, Landroid/sysprop/ApexProperties;->updatable()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method markStagedSessionReady(I)Z
    .registers 5
    .param p1, "sessionId"  # I

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->markStagedSessionReady(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 319
    :catch_7
    move-exception v0

    .line 320
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method markStagedSessionSuccessful(I)V
    .registers 6
    .param p1, "sessionId"  # I

    .line 335
    const-string v0, "ApexManager"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-interface {v1, p1}, Landroid/apex/IApexService;->markStagedSessionSuccessful(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    .line 343
    goto :goto_22

    .line 339
    :catch_8
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to mark session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_22
    return-void

    .line 336
    :catch_23
    move-exception v1

    .line 337
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "Unable to contact apexservice"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onBootCompleted()V
    .registers 1

    .line 489
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;->populateAllPackagesCacheIfNeeded()V

    .line 490
    return-void
.end method

.method submitStagedSession(I[ILandroid/apex/ApexInfoList;)Z
    .registers 7
    .param p1, "sessionId"  # I
    .param p2, "childSessionIds"  # [I
    .param p3, "apexInfoList"  # Landroid/apex/ApexInfoList;

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-interface {v0, p1, p2, p3}, Landroid/apex/IApexService;->submitStagedSession(I[ILandroid/apex/ApexInfoList;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 303
    :catch_7
    move-exception v0

    .line 304
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method systemReady()V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/ApexManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ApexManager$1;-><init>(Lcom/android/server/pm/ApexManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method uninstallApex(Ljava/lang/String;)Z
    .registers 4
    .param p1, "apexPackagePath"  # Ljava/lang/String;

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ApexManager;->mApexService:Landroid/apex/IApexService;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/apex/IApexService;->unstagePackages(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 381
    const/4 v0, 0x1

    return v0

    .line 382
    :catch_b
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
