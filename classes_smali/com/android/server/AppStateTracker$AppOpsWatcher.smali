.class final Lcom/android/server/AppStateTracker$AppOpsWatcher;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .registers 2

    .line 660
    iput-object p1, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .registers 3

    .line 660
    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    nop

    .line 665
    const/4 p1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v0, v0, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x46

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_10

    if-eqz v0, :cond_f

    const/4 p1, 0x1

    .line 669
    :cond_f
    goto :goto_11

    .line 667
    :catch_10
    move-exception v0

    .line 670
    :goto_11
    iget-object v0, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 671
    :try_start_18
    iget-object v1, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-virtual {v1, p2, p3, p1}, Lcom/android/server/AppStateTracker;->updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 672
    iget-object p1, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyRunAnyAppOpsChanged(ILjava/lang/String;)V

    .line 674
    :cond_29
    monitor-exit v0

    .line 675
    return-void

    .line 674
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2b

    throw p1
.end method
