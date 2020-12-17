.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;,
        Lcom/android/server/policy/WindowManagerPolicy$RotationSource;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;,
        Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"  # I

    .line 1477
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 1483
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1481
    :cond_a
    const-string v0, "USER_ROTATION_LOCKED"

    return-object v0

    .line 1479
    :cond_d
    const-string v0, "USER_ROTATION_FREE"

    return-object v0
.end method


# virtual methods
.method public abstract addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
.end method

.method public abstract checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp(I)V
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 1514
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 4
    .param p1, "type"  # I

    .line 935
    packed-switch p1, :pswitch_data_26

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub-window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    return v0

    .line 946
    :pswitch_1b  #0x3ed
    const/4 v0, 0x3

    return v0

    .line 942
    :pswitch_1d  #0x3ec
    const/4 v0, -0x1

    return v0

    .line 944
    :pswitch_1f  #0x3ea
    const/4 v0, 0x2

    return v0

    .line 940
    :pswitch_21  #0x3e9
    const/4 v0, -0x2

    return v0

    .line 938
    :pswitch_23  #0x3e8, 0x3eb
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_23  #000003e8
        :pswitch_21  #000003e9
        :pswitch_1f  #000003ea
        :pswitch_23  #000003eb
        :pswitch_1d  #000003ec
        :pswitch_1b  #000003ed
    .end packed-switch
.end method

.method public abstract getUiMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .registers 4
    .param p1, "type"  # I

    .line 786
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 790
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0

    .line 787
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 6
    .param p1, "type"  # I
    .param p2, "canAddInternalSystemWindow"  # Z

    .line 808
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v0, :cond_9

    const/16 v2, 0x63

    if-gt p1, v2, :cond_9

    .line 809
    return v1

    .line 812
    :cond_9
    const/16 v2, 0x7ea

    if-eq p1, v2, :cond_9f

    const/16 v2, 0x7eb

    if-eq p1, v2, :cond_9c

    const/16 v2, 0xa

    packed-switch p1, :pswitch_data_a2

    packed-switch p1, :pswitch_data_ae

    packed-switch p1, :pswitch_data_da

    packed-switch p1, :pswitch_data_f0

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return v1

    .line 908
    :pswitch_36  #0x807
    const/16 v0, 0x31

    return v0

    .line 917
    :pswitch_39  #0x806
    const/16 v0, 0x36

    return v0

    .line 915
    :pswitch_3c  #0x805, 0x808
    return v1

    .line 912
    :pswitch_3d  #0x804
    const/16 v0, 0x34

    return v0

    .line 910
    :pswitch_40  #0x803
    const/16 v0, 0x33

    return v0

    .line 847
    :pswitch_43  #0x7f6
    const/16 v0, 0xc

    return v0

    .line 882
    :pswitch_46  #0x7f4
    const/16 v0, 0x19

    return v0

    .line 822
    :pswitch_49  #0x7f3
    return v1

    .line 820
    :pswitch_4a  #0x7f2
    return v1

    .line 898
    :pswitch_4b  #0x7f0
    const/16 v0, 0x1e

    return v0

    .line 830
    :pswitch_4e  #0x7ef
    const/4 v0, 0x5

    return v0

    .line 818
    :pswitch_50  #0x7ee, 0x7f5
    return v1

    .line 878
    :pswitch_51  #0x7e8
    const/16 v0, 0x18

    return v0

    .line 850
    :pswitch_54  #0x7e7
    const/16 v0, 0xe

    return v0

    .line 832
    :pswitch_57  #0x7e6
    const/4 v0, 0x6

    return v0

    .line 902
    :pswitch_59  #0x7e5
    const/16 v0, 0x20

    return v0

    .line 868
    :pswitch_5c  #0x7e4
    const/16 v0, 0x15

    return v0

    .line 875
    :pswitch_5f  #0x7e3
    const/16 v0, 0x17

    return v0

    .line 905
    :pswitch_62  #0x7e2
    const/16 v0, 0x21

    return v0

    .line 862
    :pswitch_65  #0x7e1
    const/16 v0, 0x13

    return v0

    .line 895
    :pswitch_68  #0x7e0
    const/16 v0, 0x1d

    return v0

    .line 900
    :pswitch_6b  #0x7df
    const/16 v0, 0x1f

    return v0

    .line 860
    :pswitch_6e  #0x7de
    const/16 v0, 0x12

    return v0

    .line 815
    :pswitch_71  #0x7dd
    return v0

    .line 856
    :pswitch_72  #0x7dc
    const/16 v0, 0x10

    return v0

    .line 853
    :pswitch_75  #0x7db
    const/16 v0, 0xf

    return v0

    .line 885
    :pswitch_78  #0x7da
    if-eqz p2, :cond_7c

    const/16 v2, 0x1a

    :cond_7c
    return v2

    .line 864
    :pswitch_7d  #0x7d9
    const/16 v0, 0x14

    return v0

    .line 834
    :pswitch_80  #0x7d8
    const/4 v0, 0x7

    return v0

    .line 840
    :pswitch_82  #0x7d7
    const/16 v0, 0x9

    return v0

    .line 872
    :pswitch_85  #0x7d6
    if-eqz p2, :cond_8a

    const/16 v0, 0x16

    goto :goto_8c

    :cond_8a
    const/16 v0, 0xb

    :goto_8c
    return v0

    .line 837
    :pswitch_8d  #0x7d5
    const/16 v0, 0x8

    return v0

    .line 845
    :pswitch_90  #0x7d3
    if-eqz p2, :cond_94

    const/16 v2, 0xd

    :cond_94
    return v2

    .line 824
    :pswitch_95  #0x7d2
    const/4 v0, 0x3

    return v0

    .line 827
    :pswitch_97  #0x7d1, 0x7f1
    const/4 v0, 0x4

    return v0

    .line 858
    :pswitch_99  #0x7d0
    const/16 v0, 0x11

    return v0

    .line 888
    :cond_9c
    const/16 v0, 0x1b

    return v0

    .line 891
    :cond_9f
    const/16 v0, 0x1c

    return v0

    :pswitch_data_a2
    .packed-switch 0x7d0
        :pswitch_99  #000007d0
        :pswitch_97  #000007d1
        :pswitch_95  #000007d2
        :pswitch_90  #000007d3
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x7d5
        :pswitch_8d  #000007d5
        :pswitch_85  #000007d6
        :pswitch_82  #000007d7
        :pswitch_80  #000007d8
        :pswitch_7d  #000007d9
        :pswitch_78  #000007da
        :pswitch_75  #000007db
        :pswitch_72  #000007dc
        :pswitch_71  #000007dd
        :pswitch_6e  #000007de
        :pswitch_6b  #000007df
        :pswitch_68  #000007e0
        :pswitch_65  #000007e1
        :pswitch_62  #000007e2
        :pswitch_5f  #000007e3
        :pswitch_5c  #000007e4
        :pswitch_59  #000007e5
        :pswitch_57  #000007e6
        :pswitch_54  #000007e7
        :pswitch_51  #000007e8
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x7ee
        :pswitch_50  #000007ee
        :pswitch_4e  #000007ef
        :pswitch_4b  #000007f0
        :pswitch_97  #000007f1
        :pswitch_4a  #000007f2
        :pswitch_49  #000007f3
        :pswitch_46  #000007f4
        :pswitch_50  #000007f5
        :pswitch_43  #000007f6
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x803
        :pswitch_40  #00000803
        :pswitch_3d  #00000804
        :pswitch_3c  #00000805
        :pswitch_39  #00000806
        :pswitch_36  #00000807
        :pswitch_3c  #00000808
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 4
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 775
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IJI)I
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public isKeyguardShowingOrOccluded()Z
    .registers 2

    .line 1539
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract isUserSetupComplete()Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "newFocus"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1520
    return-void
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2
    .param p1, "listener"  # Landroid/view/IDisplayFoldListener;

    .line 1496
    return-void
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestUserActivityNotification()V
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract setAllowLockscreenWhenOn(IZ)V
.end method

.method public abstract setAodShowing(Z)Z
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2
    .param p1, "newValue"  # Z

    .line 1383
    return-void
.end method

.method public abstract setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "area"  # Landroid/graphics/Rect;

    .line 1508
    return-void
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setTopFocusedDisplay(I)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp(I)V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 2
    .param p1, "listener"  # Landroid/view/IDisplayFoldListener;

    .line 1501
    return-void
.end method

.method public abstract unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
.end method

.method public abstract userActivity()V
.end method

.method public abstract writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
.end method
