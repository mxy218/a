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

    .line 1684
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
    .registers 11

    .line 1687
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_5f

    .line 1690
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_5a

    if-nez v2, :cond_20

    .line 1712
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_5f

    .line 1691
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1697
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget v4, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1698
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_5a

    if-nez v2, :cond_4a

    .line 1702
    :try_start_36
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceIntent:Landroid/content/Intent;

    .line 1703
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$3;->val$callerFg:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1702
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_47} :catch_48
    .catchall {:try_start_36 .. :try_end_47} :catchall_5a

    goto :goto_49

    .line 1705
    :catch_48
    move-exception v2

    .line 1707
    :goto_49
    goto :goto_51

    .line 1709
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_5a

    .line 1712
    :goto_51
    :try_start_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1713
    nop

    .line 1714
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_5f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1715
    return-void

    .line 1712
    :catchall_5a
    move-exception v2

    :try_start_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1714
    :catchall_5f
    move-exception v0

    monitor-exit p1
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_5f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
