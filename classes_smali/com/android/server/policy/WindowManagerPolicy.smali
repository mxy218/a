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

    .line 1454
    if-eqz p0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 1460
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1458
    :cond_a
    const-string p0, "USER_ROTATION_LOCKED"

    return-object p0

    .line 1456
    :cond_d
    const-string p0, "USER_ROTATION_FREE"

    return-object p0
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

.method public abstract createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
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

    .line 1491
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 4

    .line 912
    packed-switch p1, :pswitch_data_26

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub-window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 p1, 0x0

    return p1

    .line 923
    :pswitch_1b  #0x3ed
    const/4 p1, 0x3

    return p1

    .line 919
    :pswitch_1d  #0x3ec
    const/4 p1, -0x1

    return p1

    .line 921
    :pswitch_1f  #0x3ea
    const/4 p1, 0x2

    return p1

    .line 917
    :pswitch_21  #0x3e9
    const/4 p1, -0x2

    return p1

    .line 915
    :pswitch_23  #0x3e8, 0x3eb
    const/4 p1, 0x1

    return p1

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
    .registers 3

    .line 776
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 780
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p1

    return p1

    .line 777
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 6

    .line 798
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-lt p1, v0, :cond_9

    const/16 v2, 0x63

    if-gt p1, v2, :cond_9

    .line 799
    return v1

    .line 802
    :cond_9
    const/16 v2, 0xa

    packed-switch p1, :pswitch_data_84

    .line 897
    :pswitch_e  #0x7d4, 0x7e9, 0x7ec, 0x7ed
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown window type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return v1

    .line 837
    :pswitch_25  #0x7f6
    const/16 p1, 0xc

    return p1

    .line 872
    :pswitch_28  #0x7f4
    const/16 p1, 0x19

    return p1

    .line 812
    :pswitch_2b  #0x7f3
    return v1

    .line 810
    :pswitch_2c  #0x7f2
    return v1

    .line 888
    :pswitch_2d  #0x7f0
    const/16 p1, 0x1e

    return p1

    .line 820
    :pswitch_30  #0x7ef
    const/4 p1, 0x5

    return p1

    .line 808
    :pswitch_32  #0x7ee, 0x7f5
    return v1

    .line 878
    :pswitch_33  #0x7eb
    const/16 p1, 0x1b

    return p1

    .line 881
    :pswitch_36  #0x7ea
    const/16 p1, 0x1c

    return p1

    .line 868
    :pswitch_39  #0x7e8
    const/16 p1, 0x18

    return p1

    .line 840
    :pswitch_3c  #0x7e7
    const/16 p1, 0xe

    return p1

    .line 822
    :pswitch_3f  #0x7e6
    const/4 p1, 0x6

    return p1

    .line 892
    :pswitch_41  #0x7e5
    const/16 p1, 0x20

    return p1

    .line 858
    :pswitch_44  #0x7e4
    const/16 p1, 0x15

    return p1

    .line 865
    :pswitch_47  #0x7e3
    const/16 p1, 0x17

    return p1

    .line 895
    :pswitch_4a  #0x7e2
    const/16 p1, 0x21

    return p1

    .line 852
    :pswitch_4d  #0x7e1
    const/16 p1, 0x13

    return p1

    .line 885
    :pswitch_50  #0x7e0
    const/16 p1, 0x1d

    return p1

    .line 890
    :pswitch_53  #0x7df
    const/16 p1, 0x1f

    return p1

    .line 850
    :pswitch_56  #0x7de
    const/16 p1, 0x12

    return p1

    .line 805
    :pswitch_59  #0x7dd
    return v0

    .line 846
    :pswitch_5a  #0x7dc
    const/16 p1, 0x10

    return p1

    .line 843
    :pswitch_5d  #0x7db
    const/16 p1, 0xf

    return p1

    .line 875
    :pswitch_60  #0x7da
    if-eqz p2, :cond_64

    const/16 v2, 0x1a

    :cond_64
    return v2

    .line 854
    :pswitch_65  #0x7d9
    const/16 p1, 0x14

    return p1

    .line 824
    :pswitch_68  #0x7d8
    const/4 p1, 0x7

    return p1

    .line 830
    :pswitch_6a  #0x7d7
    const/16 p1, 0x9

    return p1

    .line 862
    :pswitch_6d  #0x7d6
    if-eqz p2, :cond_72

    const/16 p1, 0x16

    goto :goto_74

    :cond_72
    const/16 p1, 0xb

    :goto_74
    return p1

    .line 827
    :pswitch_75  #0x7d5
    const/16 p1, 0x8

    return p1

    .line 835
    :pswitch_78  #0x7d3
    if-eqz p2, :cond_7c

    const/16 v2, 0xd

    :cond_7c
    return v2

    .line 814
    :pswitch_7d  #0x7d2
    const/4 p1, 0x3

    return p1

    .line 817
    :pswitch_7f  #0x7d1, 0x7f1
    const/4 p1, 0x4

    return p1

    .line 848
    :pswitch_81  #0x7d0
    const/16 p1, 0x11

    return p1

    :pswitch_data_84
    .packed-switch 0x7d0
        :pswitch_81  #000007d0
        :pswitch_7f  #000007d1
        :pswitch_7d  #000007d2
        :pswitch_78  #000007d3
        :pswitch_e  #000007d4
        :pswitch_75  #000007d5
        :pswitch_6d  #000007d6
        :pswitch_6a  #000007d7
        :pswitch_68  #000007d8
        :pswitch_65  #000007d9
        :pswitch_60  #000007da
        :pswitch_5d  #000007db
        :pswitch_5a  #000007dc
        :pswitch_59  #000007dd
        :pswitch_56  #000007de
        :pswitch_53  #000007df
        :pswitch_50  #000007e0
        :pswitch_4d  #000007e1
        :pswitch_4a  #000007e2
        :pswitch_47  #000007e3
        :pswitch_44  #000007e4
        :pswitch_41  #000007e5
        :pswitch_3f  #000007e6
        :pswitch_3c  #000007e7
        :pswitch_39  #000007e8
        :pswitch_e  #000007e9
        :pswitch_36  #000007ea
        :pswitch_33  #000007eb
        :pswitch_e  #000007ec
        :pswitch_e  #000007ed
        :pswitch_32  #000007ee
        :pswitch_30  #000007ef
        :pswitch_2d  #000007f0
        :pswitch_7f  #000007f1
        :pswitch_2c  #000007f2
        :pswitch_2b  #000007f3
        :pswitch_28  #000007f4
        :pswitch_32  #000007f5
        :pswitch_25  #000007f6
    .end packed-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 3

    .line 765
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p1

    return p1
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

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2

    .line 1497
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

    .line 1473
    return-void
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
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

    .line 1360
    return-void
.end method

.method public abstract setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 1485
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

    .line 1478
    return-void
.end method

.method public abstract userActivity()V
.end method

.method public abstract writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
.end method
