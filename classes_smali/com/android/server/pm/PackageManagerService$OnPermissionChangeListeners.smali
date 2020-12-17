.class final Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnPermissionChangeListeners"
.end annotation


# static fields
.field private static final MSG_ON_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mPermissionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"  # Landroid/os/Looper;

    .line 25052
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25048
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 25053
    return-void
.end method

.method private handleOnPermissionsChanged(I)V
    .registers 8
    .param p1, "uid"  # I

    .line 25081
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 25083
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 25084
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 25085
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_20

    .line 25087
    .local v2, "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    :try_start_11
    invoke-interface {v2, p1}, Landroid/content/pm/IOnPermissionsChangeListener;->onPermissionsChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_20

    .line 25090
    goto :goto_1d

    .line 25088
    :catch_15
    move-exception v3

    .line 25089
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v4, "PackageManager"

    const-string v5, "Permission listener is dead"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_20

    .line 25083
    .end local v2  # "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 25093
    .end local v1  # "i":I
    :catchall_20
    move-exception v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 25094
    nop

    .line 25095
    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/content/pm/IOnPermissionsChangeListener;

    .line 25066
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 25068
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 25057
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    .line 25059
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 25060
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->handleOnPermissionsChanged(I)V

    .line 25063
    .end local v0  # "uid":I
    :goto_b
    return-void
.end method

.method public onPermissionsChanged(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 25075
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 25076
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 25078
    :cond_11
    return-void
.end method

.method public removeListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/content/pm/IOnPermissionsChangeListener;

    .line 25071
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 25072
    return-void
.end method
