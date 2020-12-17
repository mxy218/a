.class public interface abstract Lcom/android/server/wm/FlymeInterceptWindowController;
.super Ljava/lang/Object;
.source "FlymeInterceptWindowController.java"


# virtual methods
.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 6
    return-void
.end method

.method public onFinishActivityWithKeyguard(ILcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "finishTask"  # I
    .param p2, "record"  # Lcom/android/server/wm/ActivityRecord;

    .line 14
    return-void
.end method

.method public shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z
    .registers 5
    .param p1, "wtoken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "win"  # Lcom/android/server/wm/WindowState;
    .param p3, "finishActivity"  # Z

    .line 9
    const/4 v0, 0x0

    return v0
.end method
