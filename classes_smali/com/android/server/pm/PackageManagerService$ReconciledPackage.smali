.class Lcom/android/server/pm/PackageManagerService$ReconciledPackage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReconciledPackage"
.end annotation


# instance fields
.field public final allowedSharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public collectedSharedLibraryInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final deletePackageAction:Lcom/android/server/pm/PackageManagerService$DeletePackageAction;

.field public final installArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field public final installResult:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

.field public final pkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final prepareResult:Lcom/android/server/pm/PackageManagerService$PrepareResult;

.field public final removeAppKeySetData:Z

.field public final request:Lcom/android/server/pm/PackageManagerService$ReconcileRequest;

.field public final scanResult:Lcom/android/server/pm/PackageManagerService$ScanResult;

.field public final sharedUserSignaturesChanged:Z

.field public final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService$ReconcileRequest;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$PrepareResult;Lcom/android/server/pm/PackageManagerService$ScanResult;Lcom/android/server/pm/PackageManagerService$DeletePackageAction;Ljava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZ)V
    .registers 12
    .param p1, "request"  # Lcom/android/server/pm/PackageManagerService$ReconcileRequest;
    .param p2, "installArgs"  # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p3, "pkgSetting"  # Lcom/android/server/pm/PackageSetting;
    .param p4, "installResult"  # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .param p5, "prepareResult"  # Lcom/android/server/pm/PackageManagerService$PrepareResult;
    .param p6, "scanResult"  # Lcom/android/server/pm/PackageManagerService$ScanResult;
    .param p7, "deletePackageAction"  # Lcom/android/server/pm/PackageManagerService$DeletePackageAction;
    .param p9, "signingDetails"  # Landroid/content/pm/PackageParser$SigningDetails;
    .param p10, "sharedUserSignaturesChanged"  # Z
    .param p11, "removeAppKeySetData"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$ReconcileRequest;",
            "Lcom/android/server/pm/PackageManagerService$InstallArgs;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            "Lcom/android/server/pm/PackageManagerService$PrepareResult;",
            "Lcom/android/server/pm/PackageManagerService$ScanResult;",
            "Lcom/android/server/pm/PackageManagerService$DeletePackageAction;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "ZZ)V"
        }
    .end annotation

    .line 17131
    .local p8, "allowedSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17132
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->request:Lcom/android/server/pm/PackageManagerService$ReconcileRequest;

    .line 17133
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->installArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 17134
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 17135
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->installResult:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 17136
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->prepareResult:Lcom/android/server/pm/PackageManagerService$PrepareResult;

    .line 17137
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->scanResult:Lcom/android/server/pm/PackageManagerService$ScanResult;

    .line 17138
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->deletePackageAction:Lcom/android/server/pm/PackageManagerService$DeletePackageAction;

    .line 17139
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->allowedSharedLibraryInfos:Ljava/util/List;

    .line 17140
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 17141
    iput-boolean p10, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->sharedUserSignaturesChanged:Z

    .line 17142
    iput-boolean p11, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->removeAppKeySetData:Z

    .line 17143
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$ReconcileRequest;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$PrepareResult;Lcom/android/server/pm/PackageManagerService$ScanResult;Lcom/android/server/pm/PackageManagerService$DeletePackageAction;Ljava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZLcom/android/server/pm/PackageManagerService$1;)V
    .registers 13
    .param p1, "x0"  # Lcom/android/server/pm/PackageManagerService$ReconcileRequest;
    .param p2, "x1"  # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p3, "x2"  # Lcom/android/server/pm/PackageSetting;
    .param p4, "x3"  # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .param p5, "x4"  # Lcom/android/server/pm/PackageManagerService$PrepareResult;
    .param p6, "x5"  # Lcom/android/server/pm/PackageManagerService$ScanResult;
    .param p7, "x6"  # Lcom/android/server/pm/PackageManagerService$DeletePackageAction;
    .param p8, "x7"  # Ljava/util/List;
    .param p9, "x8"  # Landroid/content/pm/PackageParser$SigningDetails;
    .param p10, "x9"  # Z
    .param p11, "x10"  # Z
    .param p12, "x11"  # Lcom/android/server/pm/PackageManagerService$1;

    .line 17106
    invoke-direct/range {p0 .. p11}, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;-><init>(Lcom/android/server/pm/PackageManagerService$ReconcileRequest;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$PrepareResult;Lcom/android/server/pm/PackageManagerService$ScanResult;Lcom/android/server/pm/PackageManagerService$DeletePackageAction;Ljava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/PackageManagerService$ReconciledPackage;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageManagerService$ReconciledPackage;

    .line 17106
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->getCombinedPackages()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getCombinedPackages()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 17151
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->request:Lcom/android/server/pm/PackageManagerService$ReconcileRequest;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->allPackages:Ljava/util/Map;

    .line 17152
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->request:Lcom/android/server/pm/PackageManagerService$ReconcileRequest;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->scannedPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 17154
    .local v0, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->request:Lcom/android/server/pm/PackageManagerService$ReconcileRequest;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->allPackages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 17155
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ReconciledPackage;->request:Lcom/android/server/pm/PackageManagerService$ReconcileRequest;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->scannedPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$ScanResult;

    .line 17156
    .local v2, "scanResult":Lcom/android/server/pm/PackageManagerService$ScanResult;
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService$ScanResult;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$ScanResult;->request:Lcom/android/server/pm/PackageManagerService$ScanRequest;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$ScanRequest;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17157
    .end local v2  # "scanResult":Lcom/android/server/pm/PackageManagerService$ScanResult;
    goto :goto_29

    .line 17158
    :cond_41
    return-object v0
.end method
