.class Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;
.super Ljava/lang/Thread;
.source "CustomRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "playLocalMusicThread"
.end annotation


# instance fields
.field clickUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Landroid/net/Uri;)V
    .registers 3

    .line 434
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;->clickUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 440
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 442
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$800(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Lcom/meizu/settings/utils/RingtoneExt;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_a
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$800(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Lcom/meizu/settings/utils/RingtoneExt;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;->clickUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Lcom/meizu/settings/utils/RingtoneExt;->play(Landroid/net/Uri;)V

    .line 444
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw p0
.end method
