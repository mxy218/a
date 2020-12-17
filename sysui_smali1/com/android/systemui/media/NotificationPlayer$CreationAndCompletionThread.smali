.class final Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 84
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;->access$002(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_d
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v1, "audio"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_127

    const/4 v1, 0x0

    .line 94
    :try_start_1a
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_d9
    .catchall {:try_start_1a .. :try_end_1f} :catchall_127

    .line 95
    :try_start_1f
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    if-nez v3, :cond_3c

    .line 96
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x5

    .line 97
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v5, 0x4

    .line 98
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    .line 101
    :cond_3c
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 102
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 103
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 104
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 105
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 106
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 107
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 108
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_bc

    .line 109
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v3

    if-nez v3, :cond_bc

    .line 110
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$100(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_8d} :catch_d7
    .catchall {:try_start_1f .. :try_end_8d} :catchall_127

    .line 111
    :try_start_8d
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v4}, Lcom/android/systemui/media/NotificationPlayer;->access$200(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v4

    if-nez v4, :cond_b7

    const/4 v4, 0x3

    .line 114
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-boolean v5, v5, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    if-eqz v5, :cond_9d

    const/4 v4, 0x1

    .line 117
    :cond_9d
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v6, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v6, v6, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v4, v6}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/media/NotificationPlayer;->access$302(Lcom/android/systemui/media/NotificationPlayer;I)I

    .line 119
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v5, v5, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    .line 121
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v4, v0}, Lcom/android/systemui/media/NotificationPlayer;->access$202(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 125
    :cond_b7
    monitor-exit v3

    goto :goto_bc

    :catchall_b9
    move-exception v0

    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_8d .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v0
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bc} :catch_d7
    .catchall {:try_start_bb .. :try_end_bc} :catchall_127

    .line 136
    :cond_bc
    :goto_bc
    :try_start_bc
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$300(Lcom/android/systemui/media/NotificationPlayer;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c6
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_c6} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c6} :catch_d7
    .catchall {:try_start_bc .. :try_end_c6} :catchall_127

    goto :goto_d3

    :catch_c7
    move-exception v0

    .line 138
    :try_start_c8
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v3}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception while sleeping to sync notification playback with ducking"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :goto_d3
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d6} :catch_d7
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_127

    goto :goto_104

    :catch_d7
    move-exception v0

    goto :goto_db

    :catch_d9
    move-exception v0

    move-object v2, v1

    :goto_db
    if-eqz v2, :cond_e1

    .line 145
    :try_start_dd
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    move-object v2, v1

    .line 148
    :cond_e1
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$400(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading sound for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/systemui/media/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$500(Lcom/android/systemui/media/NotificationPlayer;)V

    .line 153
    :goto_104
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v0}, Lcom/android/systemui/media/NotificationPlayer;->access$600(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_10b
    .catchall {:try_start_dd .. :try_end_10b} :catchall_127

    .line 154
    :try_start_10b
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v1}, Lcom/android/systemui/media/NotificationPlayer;->access$700(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 155
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    invoke-static {v3, v2}, Lcom/android/systemui/media/NotificationPlayer;->access$702(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 156
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_10b .. :try_end_117} :catchall_124

    if-eqz v1, :cond_11c

    .line 159
    :try_start_119
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 161
    :cond_11c
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 162
    monitor-exit p0
    :try_end_120
    .catchall {:try_start_119 .. :try_end_120} :catchall_127

    .line 163
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_124
    move-exception v1

    .line 156
    :try_start_125
    monitor-exit v0
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    :try_start_126
    throw v1

    :catchall_127
    move-exception v0

    .line 162
    monitor-exit p0
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_127

    throw v0
.end method
