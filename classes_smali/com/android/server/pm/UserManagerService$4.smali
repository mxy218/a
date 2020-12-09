.class Lcom/android/server/pm/UserManagerService$4;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 1849
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1855
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_23

    .line 1859
    nop

    .line 1864
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1865
    const/4 v2, 0x0

    :goto_11
    :try_start_11
    array-length v3, v0

    if-ge v2, v3, :cond_1e

    .line 1866
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1865
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1868
    :cond_1e
    monitor-exit v1

    .line 1869
    return-void

    .line 1868
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v0

    .line 1856
    :catch_23
    move-exception v0

    .line 1857
    const-string v0, "UserManagerService"

    const-string v1, "Unable to access ActivityManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    return-void
.end method
