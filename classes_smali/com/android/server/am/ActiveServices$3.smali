.class Lcom/android/server/am/ActiveServices$3;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field final synthetic val$callerFg:Z

.field final synthetic val$connection:Landroid/app/IServiceConnection;

.field final synthetic val$serviceIntent:Landroid/content/Intent;

.field final synthetic val$serviceRecord:Lcom/android/server/am/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/am/ActiveServices;

    .line 1785
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceIntent:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/android/server/am/ActiveServices$3;->val$callerFg:Z

    iput-object p5, p0, Lcom/android/server/am/ActiveServices$3;->val$connection:Landroid/app/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "result"  # Landroid/os/Bundle;

    .line 1788
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_5f

    .line 1791
    .local v1, "identity":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_5a

    if-nez v3, :cond_20

    .line 1813
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_5f

    .line 1792
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1798
    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1799
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_5a

    if-nez v3, :cond_4a

    .line 1803
    :try_start_36
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceIntent:Landroid/content/Intent;

    .line 1804
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$3;->val$callerFg:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1803
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->access$400(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_47} :catch_48
    .catchall {:try_start_36 .. :try_end_47} :catchall_5a

    goto :goto_49

    .line 1806
    :catch_48
    move-exception v3

    .line 1808
    :goto_49
    goto :goto_51

    .line 1810
    :cond_4a
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_5a

    .line 1813
    :goto_51
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1814
    nop

    .line 1815
    .end local v1  # "identity":J
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_5f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1816
    return-void

    .line 1813
    .restart local v1  # "identity":J
    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/am/ActiveServices$3;
    .end local p1  # "result":Landroid/os/Bundle;
    throw v3

    .line 1815
    .end local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/am/ActiveServices$3;
    .restart local p1  # "result":Landroid/os/Bundle;
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_5f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
