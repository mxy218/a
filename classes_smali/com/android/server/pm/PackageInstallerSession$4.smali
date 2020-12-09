.class Lcom/android/server/pm/PackageInstallerSession$4;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 1455
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1464
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->access$400(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1465
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerSession;->access$500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1466
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2

    .line 1458
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
