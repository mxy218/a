.class Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 921
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 2

    .line 925
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionCancelled()V

    .line 926
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 5

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionFinished()V

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 932
    if-nez p1, :cond_12

    .line 933
    return-void

    .line 935
    :cond_12
    iget-boolean v0, p1, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 937
    :try_start_17
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    .line 939
    goto :goto_22

    .line 938
    :catch_21
    move-exception v0

    .line 940
    :goto_22
    iput-boolean v1, p1, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    goto :goto_4e

    .line 942
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 943
    iget-boolean v0, p1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v0, :cond_4e

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 945
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 950
    return-void

    .line 952
    :cond_41
    iput-boolean v1, p1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 954
    :try_start_43
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object p1, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4d

    .line 956
    goto :goto_4e

    .line 955
    :catch_4d
    move-exception p1

    .line 960
    :cond_4e
    :goto_4e
    return-void
.end method
