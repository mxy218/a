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

    .line 4554
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 4608
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4ab

    const/4 v5, 0x3

    if-eq v0, v5, :cond_473

    const/16 v5, 0xb

    if-eq v0, v5, :cond_458

    const/16 v5, 0x1e

    if-eq v0, v5, :cond_42f

    const/16 v5, 0x29

    if-eq v0, v5, :cond_40b

    const/16 v5, 0x2e

    if-eq v0, v5, :cond_3d5

    const/16 v5, 0x3a

    if-eq v0, v5, :cond_3c5

    const/16 v5, 0x33

    if-eq v0, v5, :cond_36d

    const/16 v5, 0x34

    if-eq v0, v5, :cond_340

    const/16 v5, 0x36

    if-eq v0, v5, :cond_325

    const/16 v5, 0x37

    if-eq v0, v5, :cond_302

    packed-switch v0, :pswitch_data_522

    packed-switch v0, :pswitch_data_532

    packed-switch v0, :pswitch_data_53e

    packed-switch v0, :pswitch_data_552

    goto/16 :goto_514

    .line 4988
    :pswitch_3d  #0x3e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4989
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 4990
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1, p1}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 4991
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_514

    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4981
    :pswitch_5a  #0x3d
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4982
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4984
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_6d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4985
    goto/16 :goto_514

    .line 4984
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4973
    :pswitch_73  #0x3c
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4974
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 4975
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 4977
    :cond_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_78 .. :try_end_8d} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4978
    goto/16 :goto_514

    .line 4977
    :catchall_92
    move-exception p1

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4906
    :pswitch_98  #0x27
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4907
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WallpaperController;

    .line 4909
    if-eqz p1, :cond_b3

    .line 4910
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 4911
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4913
    :cond_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_9d .. :try_end_b4} :catchall_b9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4914
    goto/16 :goto_514

    .line 4913
    :catchall_b9
    move-exception p1

    :try_start_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4899
    :pswitch_bf  #0x26
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_c4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4900
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 4901
    monitor-exit p1
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4902
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearSavedANRState()V

    .line 4903
    goto/16 :goto_514

    .line 4901
    :catchall_d8
    move-exception v0

    :try_start_d9
    monitor-exit p1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4889
    :pswitch_de  #0x25
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_e3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4891
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v0

    .line 4892
    monitor-exit p1
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4893
    if-eqz v0, :cond_514

    .line 4894
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_514

    .line 4892
    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit p1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4838
    :pswitch_ff  #0x24
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    .line 4839
    goto/16 :goto_514

    .line 4833
    :pswitch_106  #0x23
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_10d

    move v3, v4

    :cond_10d
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    .line 4834
    goto/16 :goto_514

    .line 4861
    :pswitch_112  #0x22
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v0

    .line 4862
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 4863
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/Session;

    .line 4864
    if-eqz p1, :cond_12a

    .line 4866
    :try_start_121
    iget-object p1, p1, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {p1, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_126} :catch_127

    goto :goto_128

    .line 4867
    :catch_127
    move-exception p1

    .line 4868
    :goto_128
    goto/16 :goto_514

    .line 4870
    :cond_12a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4872
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_134
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4873
    move v2, v3

    :goto_138
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_154

    .line 4874
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Session;

    iget-object v4, v4, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4873
    add-int/lit8 v2, v2, 0x1

    goto :goto_138

    .line 4877
    :cond_154
    monitor-exit v1
    :try_end_155
    .catchall {:try_start_134 .. :try_end_155} :catchall_16f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4878
    nop

    :goto_159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_16d

    .line 4880
    :try_start_15f
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSessionCallback;

    invoke-interface {v1, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_168} :catch_169

    .line 4882
    goto :goto_16a

    .line 4881
    :catch_169
    move-exception v1

    .line 4878
    :goto_16a
    add-int/lit8 v3, v3, 0x1

    goto :goto_159

    .line 4885
    :cond_16d
    goto/16 :goto_514

    .line 4877
    :catchall_16f
    move-exception p1

    :try_start_170
    monitor-exit v1
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4851
    :pswitch_175  #0x21
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4852
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 4853
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 4854
    monitor-exit v0
    :try_end_186
    .catchall {:try_start_17a .. :try_end_186} :catchall_190

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4855
    if-eqz p1, :cond_514

    .line 4856
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_514

    .line 4854
    :catchall_190
    move-exception p1

    :try_start_191
    monitor-exit v0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4844
    :pswitch_196  #0x20
    :try_start_196
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_1a1
    .catch Landroid/os/RemoteException; {:try_start_196 .. :try_end_1a1} :catch_1a3

    .line 4846
    goto/16 :goto_514

    .line 4845
    :catch_1a3
    move-exception p1

    .line 4847
    goto/16 :goto_514

    .line 4828
    :pswitch_1a6  #0x19
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;II)V

    .line 4829
    goto/16 :goto_514

    .line 4814
    :pswitch_1b1  #0x18
    nop

    .line 4815
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1b7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4816
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4818
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 4819
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 4820
    monitor-exit p1
    :try_end_1e4
    .catchall {:try_start_1b7 .. :try_end_1e4} :catchall_1ee

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4821
    if-eqz v0, :cond_514

    .line 4822
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_514

    .line 4820
    :catchall_1ee
    move-exception v0

    :try_start_1ef
    monitor-exit p1
    :try_end_1f0
    .catchall {:try_start_1ef .. :try_end_1f0} :catchall_1ee

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4809
    :pswitch_1f4  #0x17
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    .line 4810
    goto/16 :goto_514

    .line 4804
    :pswitch_1fb  #0x16
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    .line 4805
    goto/16 :goto_514

    .line 4794
    :pswitch_202  #0x13
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz p1, :cond_514

    .line 4795
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_20d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4796
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4797
    monitor-exit p1
    :try_end_215
    .catchall {:try_start_20d .. :try_end_215} :catchall_21f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4798
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_514

    .line 4797
    :catchall_21f
    move-exception v0

    :try_start_220
    monitor-exit p1
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_21f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4777
    :pswitch_225  #0x12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 4778
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 4779
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_514

    .line 4780
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    goto/16 :goto_514

    .line 4755
    :pswitch_23f  #0x11
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_244
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4756
    const-string v0, "WindowManager"

    const-string v2, "App freeze timeout expired."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 4758
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_25b
    if-ltz v0, :cond_26d

    .line 4759
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;->onAppFreezeTimeout()V

    .line 4758
    add-int/lit8 v0, v0, -0x1

    goto :goto_25b

    .line 4761
    :cond_26d
    monitor-exit p1
    :try_end_26e
    .catchall {:try_start_244 .. :try_end_26e} :catchall_273

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4762
    goto/16 :goto_514

    .line 4761
    :catchall_273
    move-exception v0

    :try_start_274
    monitor-exit p1
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_273

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4750
    :pswitch_279  #0x10
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)V

    .line 4751
    goto/16 :goto_514

    .line 4730
    :pswitch_280  #0xf
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_285
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4733
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2b5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->isAnimationScheduled()Z

    move-result v0

    if-eqz v0, :cond_29d

    goto :goto_2b5

    .line 4741
    :cond_29d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_2a8

    .line 4742
    monitor-exit p1
    :try_end_2a4
    .catchall {:try_start_285 .. :try_end_2a4} :catchall_2c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4744
    :cond_2a8
    :try_start_2a8
    monitor-exit p1
    :try_end_2a9
    .catchall {:try_start_2a8 .. :try_end_2a9} :catchall_2c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4745
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 4746
    goto/16 :goto_514

    .line 4736
    :cond_2b5
    :goto_2b5
    const/16 v0, 0xf

    const-wide/16 v1, 0x7d0

    :try_start_2b9
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4737
    monitor-exit p1
    :try_end_2bd
    .catchall {:try_start_2b9 .. :try_end_2bd} :catchall_2c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4744
    :catchall_2c1
    move-exception v0

    :try_start_2c2
    monitor-exit p1
    :try_end_2c3
    .catchall {:try_start_2c2 .. :try_end_2c3} :catchall_2c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4689
    :pswitch_2c7  #0xe
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4690
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)F

    move-result v0

    .line 4689
    const-string v1, "window_animation_scale"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 4691
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4693
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v0

    .line 4691
    const-string v1, "transition_animation_scale"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 4694
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4695
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)F

    move-result v0

    .line 4694
    const-string v1, "animator_duration_scale"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 4696
    goto/16 :goto_514

    .line 4956
    :cond_302
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_307
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4957
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-float p1, p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 4958
    monitor-exit v0
    :try_end_31a
    .catchall {:try_start_307 .. :try_end_31a} :catchall_31f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4959
    goto/16 :goto_514

    .line 4958
    :catchall_31f
    move-exception p1

    :try_start_320
    monitor-exit v0
    :try_end_321
    .catchall {:try_start_320 .. :try_end_321} :catchall_31f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4962
    :cond_325
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 4963
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_32e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4964
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->onSeamlessRotationTimeout()V

    .line 4965
    monitor-exit v0
    :try_end_335
    .catchall {:try_start_32e .. :try_end_335} :catchall_33a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4966
    goto/16 :goto_514

    .line 4965
    :catchall_33a
    move-exception p1

    :try_start_33b
    monitor-exit v0
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_33a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4935
    :cond_340
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4936
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_349
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4948
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4949
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 4950
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 4951
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4952
    monitor-exit v0
    :try_end_362
    .catchall {:try_start_349 .. :try_end_362} :catchall_367

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4953
    goto/16 :goto_514

    .line 4952
    :catchall_367
    move-exception p1

    :try_start_368
    monitor-exit v0
    :try_end_369
    .catchall {:try_start_368 .. :try_end_369} :catchall_367

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4701
    :cond_36d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4702
    if-eqz p1, :cond_3ab

    if-eq p1, v4, :cond_393

    if-eq p1, v1, :cond_376

    goto :goto_3c3

    .line 4718
    :cond_376
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4719
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4721
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    .line 4718
    const-string v3, "animator_duration_scale"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/WindowManagerService;->access$1002(Lcom/android/server/wm/WindowManagerService;F)F

    .line 4722
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto :goto_3c3

    .line 4711
    :cond_393
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4712
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4714
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    .line 4711
    const-string v2, "transition_animation_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/WindowManagerService;->access$902(Lcom/android/server/wm/WindowManagerService;F)F

    .line 4715
    goto :goto_3c3

    .line 4704
    :cond_3ab
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4705
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 4707
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)F

    move-result v1

    .line 4704
    const-string v2, "window_animation_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/WindowManagerService;->access$802(Lcom/android/server/wm/WindowManagerService;F)F

    .line 4708
    nop

    .line 4726
    :goto_3c3
    goto/16 :goto_514

    .line 4969
    :cond_3c5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_3d0

    move v3, v4

    :cond_3d0
    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    .line 4970
    goto/16 :goto_514

    .line 4925
    :cond_3d5
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_3da
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4926
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_3e6
    if-ltz v0, :cond_3f8

    .line 4927
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 4928
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->onWindowReplacementTimeout()V

    .line 4926
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e6

    .line 4930
    :cond_3f8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4931
    monitor-exit p1
    :try_end_400
    .catchall {:try_start_3da .. :try_end_400} :catchall_405

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4932
    goto/16 :goto_514

    .line 4931
    :catchall_405
    move-exception v0

    :try_start_406
    monitor-exit p1
    :try_end_407
    .catchall {:try_start_406 .. :try_end_407} :catchall_405

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4917
    :cond_40b
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_410
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4918
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4919
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 4920
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 4921
    monitor-exit p1
    :try_end_424
    .catchall {:try_start_410 .. :try_end_424} :catchall_429

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4922
    goto/16 :goto_514

    .line 4921
    :catchall_429
    move-exception v0

    :try_start_42a
    monitor-exit p1
    :try_end_42b
    .catchall {:try_start_42a .. :try_end_42b} :catchall_429

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4766
    :cond_42f
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_434
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4767
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz p1, :cond_44c

    .line 4768
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, p1, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 4769
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "client-timeout"

    iput-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 4770
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 4772
    :cond_44c
    monitor-exit v0
    :try_end_44d
    .catchall {:try_start_434 .. :try_end_44d} :catchall_452

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4773
    goto/16 :goto_514

    .line 4772
    :catchall_452
    move-exception p1

    :try_start_453
    monitor-exit v0
    :try_end_454
    .catchall {:try_start_453 .. :try_end_454} :catchall_452

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4681
    :cond_458
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 4682
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_461
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4683
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->onWindowFreezeTimeout()V

    .line 4684
    monitor-exit v0
    :try_end_468
    .catchall {:try_start_461 .. :try_end_468} :catchall_46d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4685
    goto/16 :goto_514

    .line 4684
    :catchall_46d
    move-exception p1

    :try_start_46e
    monitor-exit v0
    :try_end_46f
    .catchall {:try_start_46e .. :try_end_46f} :catchall_46d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4663
    :cond_473
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 4666
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_47c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4667
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 4668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 4669
    monitor-exit v0
    :try_end_489
    .catchall {:try_start_47c .. :try_end_489} :catchall_4a5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4671
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 4672
    move v0, v3

    :goto_491
    if-ge v0, p1, :cond_4a3

    .line 4675
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 4672
    add-int/lit8 v0, v0, 0x1

    goto :goto_491

    .line 4677
    :cond_4a3
    goto/16 :goto_514

    .line 4669
    :catchall_4a5
    move-exception p1

    :try_start_4a6
    monitor-exit v0
    :try_end_4a7
    .catchall {:try_start_4a6 .. :try_end_4a7} :catchall_4a5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4610
    :cond_4ab
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 4614
    nop

    .line 4616
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_4b5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4619
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_4cd

    iget-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_4c8

    .line 4621
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_4cd

    .line 4622
    :cond_4c8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    goto :goto_4ce

    .line 4625
    :cond_4cd
    move-object v1, v2

    :goto_4ce
    iget-object v5, p1, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 4626
    iget-object v6, p1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 4627
    monitor-exit v0
    :try_end_4d3
    .catchall {:try_start_4b5 .. :try_end_4d3} :catchall_51b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4628
    if-ne v5, v6, :cond_4d9

    .line 4630
    return-void

    .line 4632
    :cond_4d9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_4de
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4633
    iput-object v6, p1, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 4636
    if-eqz v6, :cond_4f3

    if-eqz v5, :cond_4f3

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v0

    if-nez v0, :cond_4f3

    .line 4638
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4639
    goto :goto_4f4

    .line 4641
    :cond_4f3
    move-object v2, v5

    :goto_4f4
    monitor-exit v7
    :try_end_4f5
    .catchall {:try_start_4de .. :try_end_4f5} :catchall_515

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4645
    if-eqz v1, :cond_4fd

    .line 4646
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 4649
    :cond_4fd
    if-eqz v6, :cond_50b

    .line 4651
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v6, v4, p1}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 4652
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)V

    .line 4655
    :cond_50b
    if-eqz v2, :cond_514

    .line 4657
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 4998
    :cond_514
    :goto_514
    return-void

    .line 4641
    :catchall_515
    move-exception p1

    :try_start_516
    monitor-exit v7
    :try_end_517
    .catchall {:try_start_516 .. :try_end_517} :catchall_515

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4627
    :catchall_51b
    move-exception p1

    :try_start_51c
    monitor-exit v0
    :try_end_51d
    .catchall {:try_start_51c .. :try_end_51d} :catchall_51b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    nop

    :pswitch_data_522
    .packed-switch 0xe
        :pswitch_2c7  #0000000e
        :pswitch_280  #0000000f
        :pswitch_279  #00000010
        :pswitch_23f  #00000011
        :pswitch_225  #00000012
        :pswitch_202  #00000013
    .end packed-switch

    :pswitch_data_532
    .packed-switch 0x16
        :pswitch_1fb  #00000016
        :pswitch_1f4  #00000017
        :pswitch_1b1  #00000018
        :pswitch_1a6  #00000019
    .end packed-switch

    :pswitch_data_53e
    .packed-switch 0x20
        :pswitch_196  #00000020
        :pswitch_175  #00000021
        :pswitch_112  #00000022
        :pswitch_106  #00000023
        :pswitch_ff  #00000024
        :pswitch_de  #00000025
        :pswitch_bf  #00000026
        :pswitch_98  #00000027
    .end packed-switch

    :pswitch_data_552
    .packed-switch 0x3c
        :pswitch_73  #0000003c
        :pswitch_5a  #0000003d
        :pswitch_3d  #0000003e
    .end packed-switch
.end method

.method sendNewMessageDelayed(ILjava/lang/Object;J)V
    .registers 5

    .line 5002
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 5003
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5004
    return-void
.end method
