.class Lcom/android/server/pm/PackageInstallerSession$3;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
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

    .line 332
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 335
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_2e

    .line 340
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 341
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 342
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 343
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 344
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/IPackageInstallObserver2;

    .line 345
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 349
    :try_start_22
    invoke-interface {v4, v0, v5, v2, v3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    .line 351
    goto :goto_2e

    .line 350
    :catch_26
    move-exception p1

    goto :goto_2e

    .line 337
    :cond_28
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 338
    nop

    .line 356
    :goto_2e
    return v1
.end method
