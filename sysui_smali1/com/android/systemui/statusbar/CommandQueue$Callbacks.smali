.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .registers 3

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .registers 1

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public appTransitionCancelled(I)V
    .registers 2

    return-void
.end method

.method public appTransitionFinished(I)V
    .registers 2

    return-void
.end method

.method public appTransitionPending(IZ)V
    .registers 3

    return-void
.end method

.method public appTransitionStarting(IJJZ)V
    .registers 7

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .registers 1

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public disable(IIIZ)V
    .registers 5

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 1

    return-void
.end method

.method public handleShowGlobalActionsMenu()V
    .registers 1

    return-void
.end method

.method public handleShowShutdownUi(ZLjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public handleSystemKey(I)V
    .registers 2

    return-void
.end method

.method public hideBiometricDialog()V
    .registers 1

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .registers 3

    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 2

    return-void
.end method

.method public onDisplayReady(I)V
    .registers 2

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onRotationProposal(IZ)V
    .registers 3

    return-void
.end method

.method public preloadRecentApps()V
    .registers 1

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .registers 6

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 9

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .registers 2

    return-void
.end method

.method public setWindowState(III)V
    .registers 4

    return-void
.end method

.method public showAssistDisclosure()V
    .registers 1

    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .registers 6

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 1

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 2

    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 1

    return-void
.end method

.method public showRecentApps(Z)V
    .registers 2

    return-void
.end method

.method public showScreenPinningRequest(I)V
    .registers 2

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .registers 2

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 2

    return-void
.end method

.method public togglePanel()V
    .registers 1

    return-void
.end method

.method public toggleRecentApps()V
    .registers 1

    return-void
.end method

.method public toggleSplitScreen()V
    .registers 1

    return-void
.end method
