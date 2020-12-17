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
    .param p1, "this$0"  # Lcom/android/server/wm/WindowManagerService;

    .line 925
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 3
    .param p1, "transit"  # I

    .line 929
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionCancelled()V

    .line 930
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 934
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionFinished()V

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 936
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_12

    .line 937
    return-void

    .line 939
    :cond_12
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 941
    :try_start_17
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/app/IActivityTaskManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    .line 943
    goto :goto_22

    .line 942
    :catch_21
    move-exception v1

    .line 944
    :goto_22
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    goto :goto_4e

    .line 946
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 947
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v1, :cond_4e

    .line 948
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 949
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 954
    return-void

    .line 956
    :cond_41
    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 958
    :try_start_43
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4c} :catch_4d

    .line 960
    goto :goto_4e

    .line 959
    :catch_4d
    move-exception v1

    .line 964
    :cond_4e
    :goto_4e
    return-void
.end method
