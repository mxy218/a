.class Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;
.super Ljava/lang/Thread;
.source "CustomRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "stopLocalMusicThread"
.end annotation


# instance fields
.field abandonAudioFocus:Z

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Z)V
    .registers 3

    .line 452
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 453
    iput-boolean p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->abandonAudioFocus:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 458
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 459
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$900(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/media/RingtoneManager;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 460
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$900(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/media/RingtoneManager;

    move-result-object v0

    monitor-enter v0

    .line 461
    :try_start_12
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$900(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/media/RingtoneManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 462
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw p0

    .line 464
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$800(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Lcom/meizu/settings/utils/RingtoneExt;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 465
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$800(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Lcom/meizu/settings/utils/RingtoneExt;

    move-result-object v0

    monitor-enter v0

    .line 466
    :try_start_2f
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$800(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Lcom/meizu/settings/utils/RingtoneExt;

    move-result-object v1

    iget-boolean p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;->abandonAudioFocus:Z

    invoke-virtual {v1, p0}, Lcom/meizu/settings/utils/RingtoneExt;->stop(Z)V

    .line 467
    monitor-exit v0

    goto :goto_3f

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_3c

    throw p0

    :cond_3f
    :goto_3f
    return-void
.end method
