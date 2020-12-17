.class Lcom/android/systemui/volume/VolumePanel$23;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->startLongPressVibrateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 3114
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$23;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "debug.vp.vibrate.duration"

    const/4 v1, 0x5

    .line 3119
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_7
    int-to-long v1, v0

    .line 3122
    :try_start_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 3123
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$23;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$5000(Lcom/android/systemui/volume/VolumePanel;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 3124
    :goto_1c
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$23;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$5100(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_23} :catch_77

    .line 3125
    :try_start_23
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$23;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v3

    if-eqz v3, :cond_2d

    if-eqz v1, :cond_44

    :cond_2d
    const-string v1, "VolumePanel"

    const-string v3, "[VP_VIBRATE] volume vibrate thread wait -----"

    .line 3126
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$23;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$5100(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const-string v1, "VolumePanel"

    const-string v3, "[VP_VIBRATE] volume vibrate thread start +++++"

    .line 3128
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_74

    const/16 v1, 0x5820

    .line 3132
    :try_start_47
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$23;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$5200(Lcom/android/systemui/volume/VolumePanel;)Landroid/os/Vibrator;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "com.android.systemui"

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    const-string v2, "VolumePanel"

    .line 3133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VP_VIBRATE] Volume vibrate for CHANGE_WITH_LONG_PRESS with vibrateId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_73} :catch_77

    goto :goto_7

    :catchall_74
    move-exception v1

    .line 3130
    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v1
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_77} :catch_77

    :catch_77
    move-exception v1

    .line 3136
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7
.end method
