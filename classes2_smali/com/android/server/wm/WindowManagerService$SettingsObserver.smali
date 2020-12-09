.class final Lcom/android/server/wm/WindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAnimationDurationScaleUri:Landroid/net/Uri;

.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mImmersiveModeConfirmationsUri:Landroid/net/Uri;

.field private final mPointerLocationUri:Landroid/net/Uri;

.field private final mPolicyControlUri:Landroid/net/Uri;

.field private final mTransitionAnimationScaleUri:Landroid/net/Uri;

.field private final mWindowAnimationScaleUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 706
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 707
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 691
    nop

    .line 692
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    .line 693
    nop

    .line 694
    const-string v0, "window_animation_scale"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    .line 695
    nop

    .line 696
    const-string v0, "transition_animation_scale"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    .line 697
    nop

    .line 698
    const-string v0, "animator_duration_scale"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    .line 699
    nop

    .line 700
    const-string v0, "immersive_mode_confirmations"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    .line 701
    nop

    .line 702
    const-string v0, "policy_control"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    .line 703
    nop

    .line 704
    const-string v0, "pointer_location"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPointerLocationUri:Landroid/net/Uri;

    .line 708
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 709
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 720
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPointerLocationUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 721
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 725
    if-nez p2, :cond_3

    .line 726
    return-void

    .line 729
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_5f

    .line 734
    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 735
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->access$200(Lcom/android/server/wm/WindowManagerService;)V

    .line 736
    return-void

    .line 739
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPointerLocationUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 740
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updatePointerLocation()V

    .line 741
    return-void

    .line 746
    :cond_2e
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    .line 747
    move p1, v0

    goto :goto_4c

    .line 748
    :cond_39
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 749
    const/4 p1, 0x1

    goto :goto_4c

    .line 750
    :cond_43
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 751
    const/4 p1, 0x2

    .line 756
    :goto_4c
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x33

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 757
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 758
    return-void

    .line 754
    :cond_5e
    return-void

    .line 730
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings()V

    .line 731
    return-void
.end method

.method updatePointerLocation()V
    .registers 6

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 773
    const/4 v1, 0x0

    const-string v2, "pointer_location"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 776
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-ne v0, v1, :cond_1a

    .line 777
    return-void

    .line 779
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 780
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 781
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;

    .line 782
    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 783
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 781
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    .line 784
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 785
    return-void

    .line 784
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateSystemUiSettings()V
    .registers 4

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 763
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadSetting(ILandroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 764
    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->reloadFromSetting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_24

    :cond_22
    move v1, v2

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x1

    .line 765
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 766
    if-eqz v1, :cond_30

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 769
    :cond_30
    return-void

    .line 765
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
