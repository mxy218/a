.class Lcom/android/server/pm/PackageManagerService$PostInstallData;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PostInstallData"
.end annotation


# instance fields
.field public final args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field public final mPostInstallRunnable:Ljava/lang/Runnable;

.field public final res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "_a"  # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "_r"  # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .param p3, "postInstallRunnable"  # Ljava/lang/Runnable;

    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1430
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1431
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 1432
    return-void
.end method
