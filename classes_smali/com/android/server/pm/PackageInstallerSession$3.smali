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
    .param p1, "this$0"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 340
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_2e

    .line 348
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 349
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 350
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 351
    .local v3, "message":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 352
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/IPackageInstallObserver2;

    .line 353
    .local v5, "observer":Landroid/content/pm/IPackageInstallObserver2;
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 354
    .local v6, "returnCode":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 357
    :try_start_22
    invoke-interface {v5, v2, v6, v3, v4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    .line 359
    goto :goto_2e

    .line 358
    :catch_26
    move-exception v7

    goto :goto_2e

    .line 345
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "message":Ljava/lang/String;
    .end local v4  # "extras":Landroid/os/Bundle;
    .end local v5  # "observer":Landroid/content/pm/IPackageInstallObserver2;
    .end local v6  # "returnCode":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$3;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$000(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 346
    nop

    .line 364
    :goto_2e
    return v1
.end method
