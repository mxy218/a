.class final Lcom/android/systemui/media/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/NotificationPlayer;)V
    .registers 4

    .line 214
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 224
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/NotificationPlayer$Command;

    .line 225
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_ef

    .line 227
    iget v0, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_c5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    goto/16 :goto_ca

    .line 235
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$600(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 236
    :try_start_26
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v2}, Lcom/android/systemui/media/NotificationPlayer;->access$700(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 237
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v4, v3}, Lcom/android/systemui/media/NotificationPlayer;->access$702(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 238
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_c2

    if-eqz v2, :cond_b6

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v0, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, v4, v0

    if-lez v0, :cond_60

    .line 242
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "msecs"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_60
    :try_start_60
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_63

    .line 247
    :catch_63
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$100(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 249
    :try_start_6d
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 251
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 252
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1, v3}, Lcom/android/systemui/media/NotificationPlayer;->access$202(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 254
    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_6d .. :try_end_84} :catchall_b3

    .line 255
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$1000(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 256
    :try_start_8b
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 257
    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_ae

    .line 260
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$000(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 262
    :cond_ae
    monitor-exit v1

    goto :goto_ca

    :catchall_b0
    move-exception p0

    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_8b .. :try_end_b2} :catchall_b0

    throw p0

    :catchall_b3
    move-exception p0

    .line 254
    :try_start_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p0

    .line 264
    :cond_b6
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STOP command without a player"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    :catchall_c2
    move-exception p0

    .line 238
    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p0

    .line 230
    :cond_c5
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;->access$900(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 269
    :goto_ca
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 270
    :try_start_d1
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$800(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_e9

    .line 275
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0, v3}, Lcom/android/systemui/media/NotificationPlayer;->access$1102(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$CmdThread;)Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 276
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {p0}, Lcom/android/systemui/media/NotificationPlayer;->access$1200(Lcom/android/systemui/media/NotificationPlayer;)V

    .line 277
    monitor-exit v1

    return-void

    .line 279
    :cond_e9
    monitor-exit v1

    goto/16 :goto_0

    :catchall_ec
    move-exception p0

    monitor-exit v1
    :try_end_ee
    .catchall {:try_start_d1 .. :try_end_ee} :catchall_ec

    throw p0

    :catchall_ef
    move-exception p0

    .line 225
    :try_start_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw p0
.end method
