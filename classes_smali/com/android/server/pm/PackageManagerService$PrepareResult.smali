.class Lcom/android/server/pm/PackageManagerService$PrepareResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareResult"
.end annotation


# instance fields
.field public final childPackageSettings:[Lcom/android/server/pm/PackageSetting;

.field public final clearCodeCache:Z

.field public final disabledPs:Lcom/android/server/pm/PackageSetting;

.field public final existingPackage:Landroid/content/pm/PackageParser$Package;

.field public final freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field public final installReason:I

.field public final installerPackageName:Ljava/lang/String;

.field public final originalPs:Lcom/android/server/pm/PackageSetting;

.field public final packageToScan:Landroid/content/pm/PackageParser$Package;

.field public final parseFlags:I

.field public final renamedPackage:Ljava/lang/String;

.field public final replace:Z

.field public final scanFlags:I

.field public final system:Z

.field public final user:Landroid/os/UserHandle;

.field public final volumeUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;)V
    .registers 19

    .line 17323
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17324
    move v1, p1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->installReason:I

    .line 17325
    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->volumeUuid:Ljava/lang/String;

    .line 17326
    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->installerPackageName:Ljava/lang/String;

    .line 17327
    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->user:Landroid/os/UserHandle;

    .line 17328
    move v1, p5

    iput-boolean v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->replace:Z

    .line 17329
    move v1, p6

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->scanFlags:I

    .line 17330
    move v1, p7

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->parseFlags:I

    .line 17331
    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->existingPackage:Landroid/content/pm/PackageParser$Package;

    .line 17332
    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->packageToScan:Landroid/content/pm/PackageParser$Package;

    .line 17333
    move v1, p10

    iput-boolean v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->clearCodeCache:Z

    .line 17334
    move v1, p11

    iput-boolean v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->system:Z

    .line 17335
    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->renamedPackage:Ljava/lang/String;

    .line 17336
    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 17337
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->originalPs:Lcom/android/server/pm/PackageSetting;

    .line 17338
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->disabledPs:Lcom/android/server/pm/PackageSetting;

    .line 17339
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->childPackageSettings:[Lcom/android/server/pm/PackageSetting;

    .line 17340
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 18

    .line 17297
    invoke-direct/range {p0 .. p16}, Lcom/android/server/pm/PackageManagerService$PrepareResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method
