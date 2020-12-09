.class Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveInstallSession"
.end annotation


# instance fields
.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mInstallerUid:I

.field private final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private final mPackageName:Ljava/lang/String;

.field private final mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field private final mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mStagedDir:Ljava/io/File;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V
    .registers 9

    .line 25797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25798
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    .line 25799
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    .line 25800
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 25801
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 25802
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerPackageName:Ljava/lang/String;

    .line 25803
    iput p6, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    .line 25804
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    .line 25805
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 25806
    return-void
.end method


# virtual methods
.method public getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 25825
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerUid()I
    .registers 2

    .line 25829
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mInstallerUid:I

    return v0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .registers 2

    .line 25817
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 25809
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 2

    .line 25821
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .registers 2

    .line 25837
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method public getStagedDir()Ljava/io/File;
    .registers 2

    .line 25813
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mStagedDir:Ljava/io/File;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 25833
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
