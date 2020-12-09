.class Lcom/android/server/job/controllers/DeviceIdleJobsController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_116

    :cond_f
    goto :goto_38

    :sswitch_10
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v3

    goto :goto_39

    :sswitch_1a
    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v2

    goto :goto_39

    :sswitch_24
    const-string p2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v1

    goto :goto_39

    :sswitch_2e
    const-string p2, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v0

    goto :goto_39

    :goto_38
    const/4 p1, -0x1

    :goto_39
    if-eqz p1, :cond_ee

    if-eq p1, v3, :cond_ee

    if-eq p1, v1, :cond_af

    if-eq p1, v0, :cond_43

    goto/16 :goto_115

    .line 99
    :cond_43
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p1, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 100
    :try_start_48
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 101
    invoke-static {v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$200(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveTempWhitelistAppIds()[I

    move-result-object v0

    .line 100
    invoke-static {p2, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$402(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I

    .line 102
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$300()Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 103
    const-string p2, "JobScheduler.DeviceIdle"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got temp whitelist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 104
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$400(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_7d
    nop

    .line 107
    move p2, v2

    :goto_7f
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$500(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v2, v0, :cond_a1

    .line 108
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$500(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$600(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    or-int/2addr p2, v0

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 110
    :cond_a1
    if-eqz p2, :cond_aa

    .line 111
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p2, p2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 113
    :cond_aa
    monitor-exit p1

    goto :goto_115

    :catchall_ac
    move-exception p2

    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_48 .. :try_end_ae} :catchall_ac

    throw p2

    .line 89
    :cond_af
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p1, p1, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 90
    :try_start_b4
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 91
    invoke-static {v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$200(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    .line 90
    invoke-static {p2, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$102(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I

    .line 92
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$300()Z

    move-result p2

    if-eqz p2, :cond_e9

    .line 93
    const-string p2, "JobScheduler.DeviceIdle"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got whitelist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 94
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$100(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_e9
    monitor-exit p1

    .line 97
    goto :goto_115

    .line 96
    :catchall_eb
    move-exception p2

    monitor-exit p1
    :try_end_ed
    .catchall {:try_start_b4 .. :try_end_ed} :catchall_eb

    throw p2

    .line 85
    :cond_ee
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object p2

    if-eqz p2, :cond_110

    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p2

    if-nez p2, :cond_10e

    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 86
    invoke-static {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p2

    if-eqz p2, :cond_110

    :cond_10e
    move v2, v3

    goto :goto_111

    :cond_110
    nop

    .line 85
    :goto_111
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateIdleMode(Z)V

    .line 87
    nop

    .line 116
    :goto_115
    return-void

    :sswitch_data_116
    .sparse-switch
        -0x2a729674 -> :sswitch_2e
        -0x3e97d1f -> :sswitch_24
        0x1dbb32d0 -> :sswitch_1a
        0x33e5d967 -> :sswitch_10
    .end sparse-switch
.end method
