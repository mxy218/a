.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final ANIMATION_FAILSAFE:I = 0x3c

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FORCE_GC:I = 0xf

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final ON_POINTER_DOWN_OUTSIDE_FOCUS:I = 0x3e

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final RECOMPUTE_FOCUS:I = 0x3d

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESTORE_POINTER_ICON:I = 0x37

.field public static final SEAMLESS_ROTATION_TIMEOUT:I = 0x36

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SET_HAS_OVERLAY_UI:I = 0x3a

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_DOCKED_STACK_DIVIDER:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/WindowManagerService;

    .line 4608
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"  # Landroid/os/Message;

    .line 4659
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_1c

    .line 4660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: entry what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_520

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4ca

    const/16 v4, 0xb

    if-eq v0, v4, :cond_4af

    const/16 v4, 0x1e

    if-eq v0, v4, :cond_486

    const/16 v4, 0x29

    if-eq v0, v4, :cond_462

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_42c

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_41c

    const/16 v4, 0x33

    const/4 v5, 0x0

    if-eq v0, v4, :cond_3c4

    const/16 v4, 0x34

    if-eq v0, v4, :cond_397

    const/16 v4, 0x36

    if-eq v0, v4, :cond_37c

    const/16 v4, 0x37

    if-eq v0, v4, :cond_359

    packed-switch v0, :pswitch_data_608

    packed-switch v0, :pswitch_data_618

    packed-switch v0, :pswitch_data_624

    packed-switch v0, :pswitch_data_638

    goto/16 :goto_5ef

    .line 5039
    :pswitch_59  #0x3e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5040
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 5041
    .local v1, "touchedToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 5042
    .end local v1  # "touchedToken":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_5ef

    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5032
    :pswitch_76  #0x3d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5033
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5035
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_89

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5036
    goto/16 :goto_5ef

    .line 5035
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5024
    :pswitch_8f  #0x3c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5025
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 5026
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 5028
    :cond_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_94 .. :try_end_a9} :catchall_ae

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5029
    goto/16 :goto_5ef

    .line 5028
    :catchall_ae
    move-exception v1

    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4957
    :pswitch_b4  #0x27
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4958
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WallpaperController;

    .line 4960
    .local v1, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    if-eqz v1, :cond_cf

    .line 4961
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 4962
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4964
    .end local v1  # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    :cond_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_b9 .. :try_end_d0} :catchall_d5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4965
    goto/16 :goto_5ef

    .line 4964
    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4950
    :pswitch_db  #0x26
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4951
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 4952
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_f4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4953
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearSavedANRState()V

    .line 4954
    goto/16 :goto_5ef

    .line 4952
    :catchall_f4
    move-exception v1

    :try_start_f5
    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4940
    :pswitch_fa  #0x25
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_ff
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4941
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v1, :cond_10d

    const-string v1, "WindowManager"

    const-string v2, "CHECK_IF_BOOT_ANIMATION_FINISHED:"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    :cond_10d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    .line 4943
    .local v1, "bootAnimationComplete":Z
    monitor-exit v0
    :try_end_114
    .catchall {:try_start_ff .. :try_end_114} :catchall_120

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4944
    if-eqz v1, :cond_5ef

    .line 4945
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_5ef

    .line 4943
    .end local v1  # "bootAnimationComplete":Z
    :catchall_120
    move-exception v1

    :try_start_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4889
    :pswitch_126  #0x24
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    .line 4890
    goto/16 :goto_5ef

    .line 4884
    :pswitch_12d  #0x23
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_134

    move v2, v3

    :cond_134
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    .line 4885
    goto/16 :goto_5ef

    .line 4912
    :pswitch_139  #0x22
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v0

    .line 4913
    .local v0, "scale":F
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 4914
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/Session;

    .line 4915
    .local v1, "session":Lcom/android/server/wm/Session;
    if-eqz v1, :cond_151

    .line 4917
    :try_start_148
    iget-object v2, v1, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14d} :catch_14e

    goto :goto_14f

    .line 4918
    :catch_14e
    move-exception v2

    .line 4919
    :goto_14f
    goto/16 :goto_5ef

    .line 4921
    :cond_151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4923
    .local v3, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_15b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4924
    nop

    .local v2, "i":I
    :goto_15f
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_17b

    .line 4925
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Session;

    iget-object v5, v5, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4924
    add-int/lit8 v2, v2, 0x1

    goto :goto_15f

    .line 4928
    .end local v2  # "i":I
    :cond_17b
    monitor-exit v4
    :try_end_17c
    .catchall {:try_start_15b .. :try_end_17c} :catchall_196

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4929
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_180
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_194

    .line 4931
    :try_start_186
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindowSessionCallback;

    invoke-interface {v4, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_18f
    .catch Landroid/os/RemoteException; {:try_start_186 .. :try_end_18f} :catch_190

    .line 4933
    goto :goto_191

    .line 4932
    :catch_190
    move-exception v4

    .line 4929
    :goto_191
    add-int/lit8 v2, v2, 0x1

    goto :goto_180

    .line 4936
    .end local v2  # "i":I
    .end local v3  # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :cond_194
    goto/16 :goto_5ef

    .line 4928
    .restart local v3  # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :catchall_196
    move-exception v2

    :try_start_197
    monitor-exit v4
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 4902
    .end local v0  # "scale":F
    .end local v1  # "session":Lcom/android/server/wm/Session;
    .end local v3  # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :pswitch_19c  #0x21
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1a1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4903
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 4904
    .local v1, "callback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 4905
    monitor-exit v0
    :try_end_1ad
    .catchall {:try_start_1a1 .. :try_end_1ad} :catchall_1b7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4906
    if-eqz v1, :cond_5ef

    .line 4907
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5ef

    .line 4905
    .end local v1  # "callback":Ljava/lang/Runnable;
    :catchall_1b7
    move-exception v1

    :try_start_1b8
    monitor-exit v0
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4895
    :pswitch_1bd  #0x20
    :try_start_1bd
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_1c8
    .catch Landroid/os/RemoteException; {:try_start_1bd .. :try_end_1c8} :catch_1ca

    .line 4897
    goto/16 :goto_5ef

    .line 4896
    :catch_1ca
    move-exception v0

    .line 4898
    goto/16 :goto_5ef

    .line 4879
    :pswitch_1cd  #0x19
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;II)V

    .line 4880
    goto/16 :goto_5ef

    .line 4865
    :pswitch_1d8  #0x18
    const/4 v0, 0x0

    .line 4866
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1de
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4867
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4869
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object v0, v2

    .line 4870
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 4871
    monitor-exit v1
    :try_end_20c
    .catchall {:try_start_1de .. :try_end_20c} :catchall_216

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4872
    if-eqz v0, :cond_5ef

    .line 4873
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5ef

    .line 4871
    :catchall_216
    move-exception v2

    :try_start_217
    monitor-exit v1
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 4860
    .end local v0  # "callback":Ljava/lang/Runnable;
    :pswitch_21c  #0x17
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    .line 4861
    goto/16 :goto_5ef

    .line 4855
    :pswitch_223  #0x16
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    .line 4856
    goto/16 :goto_5ef

    .line 4845
    :pswitch_22a  #0x13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_5ef

    .line 4846
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4847
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4848
    monitor-exit v0
    :try_end_23d
    .catchall {:try_start_235 .. :try_end_23d} :catchall_247

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4849
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_5ef

    .line 4848
    :catchall_247
    move-exception v1

    :try_start_248
    monitor-exit v0
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_247

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4828
    :pswitch_24d  #0x12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 4829
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 4830
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v1

    if-eqz v1, :cond_267

    .line 4831
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    goto/16 :goto_5ef

    .line 4834
    :cond_267
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_5ef

    .line 4835
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_274

    .line 4836
    const-string v1, "detached"

    goto :goto_276

    :cond_274
    const-string v1, "unready"

    .line 4837
    .local v1, "reason":Ljava/lang/String;
    :goto_276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to send configuration to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    .end local v1  # "reason":Ljava/lang/String;
    goto/16 :goto_5ef

    .line 4806
    .end local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :pswitch_296  #0x11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_29b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4807
    const-string v2, "WindowManager"

    const-string v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v1, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 4809
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_2b2
    if-ltz v1, :cond_2c4

    .line 4810
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;->onAppFreezeTimeout()V

    .line 4809
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b2

    .line 4812
    .end local v1  # "i":I
    :cond_2c4
    monitor-exit v0
    :try_end_2c5
    .catchall {:try_start_29b .. :try_end_2c5} :catchall_2ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4813
    goto/16 :goto_5ef

    .line 4812
    :catchall_2ca
    move-exception v1

    :try_start_2cb
    monitor-exit v0
    :try_end_2cc
    .catchall {:try_start_2cb .. :try_end_2cc} :catchall_2ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4801
    :pswitch_2d0  #0x10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 4802
    goto/16 :goto_5ef

    .line 4781
    :pswitch_2d7  #0xf
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2dc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4784
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_30c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowAnimator;->isAnimationScheduled()Z

    move-result v1

    if-eqz v1, :cond_2f4

    goto :goto_30c

    .line 4792
    :cond_2f4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_2ff

    .line 4793
    monitor-exit v0
    :try_end_2fb
    .catchall {:try_start_2dc .. :try_end_2fb} :catchall_318

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4795
    :cond_2ff
    :try_start_2ff
    monitor-exit v0
    :try_end_300
    .catchall {:try_start_2ff .. :try_end_300} :catchall_318

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4796
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 4797
    goto/16 :goto_5ef

    .line 4787
    :cond_30c
    :goto_30c
    const/16 v1, 0xf

    const-wide/16 v2, 0x7d0

    :try_start_310
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4788
    monitor-exit v0
    :try_end_314
    .catchall {:try_start_310 .. :try_end_314} :catchall_318

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4795
    :catchall_318
    move-exception v1

    :try_start_319
    monitor-exit v0
    :try_end_31a
    .catchall {:try_start_319 .. :try_end_31a} :catchall_318

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4740
    :pswitch_31e  #0xe
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4741
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    .line 4740
    const-string v2, "window_animation_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 4742
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4744
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    .line 4742
    const-string v2, "transition_animation_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 4745
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4746
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    .line 4745
    const-string v2, "animator_duration_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 4747
    goto/16 :goto_5ef

    .line 5007
    :cond_359
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_35e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5008
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 5009
    monitor-exit v0
    :try_end_371
    .catchall {:try_start_35e .. :try_end_371} :catchall_376

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5010
    goto/16 :goto_5ef

    .line 5009
    :catchall_376
    move-exception v1

    :try_start_377
    monitor-exit v0
    :try_end_378
    .catchall {:try_start_377 .. :try_end_378} :catchall_376

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 5013
    :cond_37c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 5014
    .restart local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_385
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5015
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onSeamlessRotationTimeout()V

    .line 5016
    monitor-exit v1
    :try_end_38c
    .catchall {:try_start_385 .. :try_end_38c} :catchall_391

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5017
    goto/16 :goto_5ef

    .line 5016
    :catchall_391
    move-exception v2

    :try_start_392
    monitor-exit v1
    :try_end_393
    .catchall {:try_start_392 .. :try_end_393} :catchall_391

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 4986
    .end local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_397
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 4987
    .local v0, "window":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_3a0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4999
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5000
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 5001
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 5002
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5003
    monitor-exit v2
    :try_end_3b9
    .catchall {:try_start_3a0 .. :try_end_3b9} :catchall_3be

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5004
    goto/16 :goto_5ef

    .line 5003
    :catchall_3be
    move-exception v1

    :try_start_3bf
    monitor-exit v2
    :try_end_3c0
    .catchall {:try_start_3bf .. :try_end_3c0} :catchall_3be

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4752
    .end local v0  # "window":Lcom/android/server/wm/WindowState;
    :cond_3c4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4753
    .local v0, "mode":I
    if-eqz v0, :cond_402

    if-eq v0, v3, :cond_3ea

    if-eq v0, v1, :cond_3cd

    goto :goto_41a

    .line 4769
    :cond_3cd
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4770
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4772
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 4769
    const-string v4, "animator_duration_scale"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$902(Lcom/android/server/wm/WindowManagerService;F)F

    .line 4773
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto :goto_41a

    .line 4762
    :cond_3ea
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4763
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4765
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 4762
    const-string v4, "transition_animation_scale"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$802(Lcom/android/server/wm/WindowManagerService;F)F

    .line 4766
    goto :goto_41a

    .line 4755
    :cond_402
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4756
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4758
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 4755
    const-string v4, "window_animation_scale"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$702(Lcom/android/server/wm/WindowManagerService;F)F

    .line 4759
    nop

    .line 4777
    :goto_41a
    goto/16 :goto_5ef

    .line 5020
    .end local v0  # "mode":I
    :cond_41c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_427

    move v2, v3

    :cond_427
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    .line 5021
    goto/16 :goto_5ef

    .line 4976
    :cond_42c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_431
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4977
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .restart local v1  # "i":I
    :goto_43d
    if-ltz v1, :cond_44f

    .line 4978
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 4979
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->onWindowReplacementTimeout()V

    .line 4977
    .end local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_43d

    .line 4981
    .end local v1  # "i":I
    :cond_44f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4982
    monitor-exit v0
    :try_end_457
    .catchall {:try_start_431 .. :try_end_457} :catchall_45c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4983
    goto/16 :goto_5ef

    .line 4982
    :catchall_45c
    move-exception v1

    :try_start_45d
    monitor-exit v0
    :try_end_45e
    .catchall {:try_start_45d .. :try_end_45e} :catchall_45c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4968
    :cond_462
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_467
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4969
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4970
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 4971
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 4972
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_47b
    .catchall {:try_start_467 .. :try_end_47b} :catchall_480

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4973
    goto/16 :goto_5ef

    .line 4972
    :catchall_480
    move-exception v1

    :try_start_481
    monitor-exit v0
    :try_end_482
    .catchall {:try_start_481 .. :try_end_482} :catchall_480

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4817
    :cond_486
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_48b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4818
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_4a3

    .line 4819
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 4820
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "client-timeout"

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 4821
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 4823
    :cond_4a3
    monitor-exit v0
    :try_end_4a4
    .catchall {:try_start_48b .. :try_end_4a4} :catchall_4a9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4824
    goto/16 :goto_5ef

    .line 4823
    :catchall_4a9
    move-exception v1

    :try_start_4aa
    monitor-exit v0
    :try_end_4ab
    .catchall {:try_start_4aa .. :try_end_4ab} :catchall_4a9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4732
    :cond_4af
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 4733
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_4b8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4734
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onWindowFreezeTimeout()V

    .line 4735
    monitor-exit v1
    :try_end_4bf
    .catchall {:try_start_4b8 .. :try_end_4bf} :catchall_4c4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4736
    goto/16 :goto_5ef

    .line 4735
    :catchall_4c4
    move-exception v2

    :try_start_4c5
    monitor-exit v1
    :try_end_4c6
    .catchall {:try_start_4c5 .. :try_end_4c6} :catchall_4c4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 4714
    .end local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4ca
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 4717
    .restart local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_4d3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4718
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 4719
    .local v3, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 4720
    monitor-exit v1
    :try_end_4e0
    .catchall {:try_start_4d3 .. :try_end_4e0} :catchall_51a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4722
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4723
    .local v1, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e8
    if-ge v4, v1, :cond_518

    .line 4724
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v5, :cond_508

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Losing delayed focus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4725
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4724
    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    :cond_508
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v5, v2, v6}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 4723
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e8

    .line 4728
    .end local v4  # "i":I
    :cond_518
    goto/16 :goto_5ef

    .line 4720
    .end local v1  # "N":I
    .end local v3  # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_51a
    move-exception v2

    :try_start_51b
    monitor-exit v1
    :try_end_51c
    .catchall {:try_start_51b .. :try_end_51c} :catchall_51a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 4664
    .end local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_520
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 4668
    .restart local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    .line 4670
    .local v1, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_52a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4672
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v5, :cond_53c

    iget-boolean v5, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_53c

    .line 4673
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object v1, v5

    .line 4676
    :cond_53c
    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 4677
    .local v5, "lastFocus":Lcom/android/server/wm/WindowState;
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4678
    .local v6, "newFocus":Lcom/android/server/wm/WindowState;
    monitor-exit v4
    :try_end_541
    .catchall {:try_start_52a .. :try_end_541} :catchall_601

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4679
    if-ne v5, v6, :cond_547

    .line 4681
    return-void

    .line 4683
    :cond_547
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_54c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4684
    iput-object v6, v0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 4685
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_57f

    const-string v4, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Focus moving from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " displayId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4686
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4685
    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    :cond_57f
    if-eqz v6, :cond_59b

    if-eqz v5, :cond_59b

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    if-nez v4, :cond_59b

    .line 4688
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_594

    const-string v4, "WindowManager"

    const-string v8, "Delaying loss of focus..."

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    :cond_594
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4690
    const/4 v4, 0x0

    move-object v5, v4

    .line 4692
    :cond_59b
    monitor-exit v7
    :try_end_59c
    .catchall {:try_start_54c .. :try_end_59c} :catchall_5fb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4696
    if-eqz v1, :cond_5a4

    .line 4697
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 4700
    :cond_5a4
    if-eqz v6, :cond_5cc

    .line 4701
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_5c0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gaining focus: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "WindowManager"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4702
    :cond_5c0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v6, v3, v4}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 4703
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 4706
    :cond_5cc
    if-eqz v5, :cond_5ef

    .line 4707
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_5e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Losing focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    :cond_5e8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 5046
    .end local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1  # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v5  # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v6  # "newFocus":Lcom/android/server/wm/WindowState;
    :cond_5ef
    :goto_5ef
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_5fa

    .line 5047
    const-string v0, "WindowManager"

    const-string v1, "handleMessage: exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    :cond_5fa
    return-void

    .line 4692
    .restart local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v1  # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .restart local v5  # "lastFocus":Lcom/android/server/wm/WindowState;
    .restart local v6  # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_5fb
    move-exception v2

    :try_start_5fc
    monitor-exit v7
    :try_end_5fd
    .catchall {:try_start_5fc .. :try_end_5fd} :catchall_5fb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 4678
    .end local v5  # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v6  # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_601
    move-exception v2

    :try_start_602
    monitor-exit v4
    :try_end_603
    .catchall {:try_start_602 .. :try_end_603} :catchall_601

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    nop

    :pswitch_data_608
    .packed-switch 0xe
        :pswitch_31e  #0000000e
        :pswitch_2d7  #0000000f
        :pswitch_2d0  #00000010
        :pswitch_296  #00000011
        :pswitch_24d  #00000012
        :pswitch_22a  #00000013
    .end packed-switch

    :pswitch_data_618
    .packed-switch 0x16
        :pswitch_223  #00000016
        :pswitch_21c  #00000017
        :pswitch_1d8  #00000018
        :pswitch_1cd  #00000019
    .end packed-switch

    :pswitch_data_624
    .packed-switch 0x20
        :pswitch_1bd  #00000020
        :pswitch_19c  #00000021
        :pswitch_139  #00000022
        :pswitch_12d  #00000023
        :pswitch_126  #00000024
        :pswitch_fa  #00000025
        :pswitch_db  #00000026
        :pswitch_b4  #00000027
    .end packed-switch

    :pswitch_data_638
    .packed-switch 0x3c
        :pswitch_8f  #0000003c
        :pswitch_76  #0000003d
        :pswitch_59  #0000003e
    .end packed-switch
.end method

.method sendNewMessageDelayed(ILjava/lang/Object;J)V
    .registers 6
    .param p1, "what"  # I
    .param p2, "obj"  # Ljava/lang/Object;
    .param p3, "delayMillis"  # J

    .line 5053
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 5054
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5055
    return-void
.end method
