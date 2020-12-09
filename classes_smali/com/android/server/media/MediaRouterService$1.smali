.class Lcom/android/server/media/MediaRouterService$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final WAIT_MS:J = 0x1f4L


# instance fields
.field final mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance p1, Lcom/android/server/media/MediaRouterService$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaRouterService$1$1;-><init>(Lcom/android/server/media/MediaRouterService$1;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 10

    .line 131
    const/4 v0, 0x1

    if-nez p2, :cond_b

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result p2

    if-eqz p2, :cond_b

    move p2, v0

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 132
    :goto_c
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v1

    .line 133
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 137
    if-ltz v1, :cond_32

    .line 138
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 139
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 142
    :cond_32
    const/4 v1, -0x1

    .line 143
    if-eqz p2, :cond_4d

    .line 144
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 145
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 146
    move p1, v2

    goto :goto_70

    .line 147
    :cond_4d
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_6f

    .line 148
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 149
    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 148
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result p1

    goto :goto_70

    .line 147
    :cond_6f
    move p1, v1

    .line 152
    :goto_70
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    const-string v0, ", active="

    const-string/jumbo v1, "onAudioPlayerActiveStateChanged: uid="

    const-string v3, "MediaRouterService"

    if-ltz p1, :cond_b0

    .line 154
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v4, p1}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    .line 155
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->access$300()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", restoreUid="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 160
    :cond_b0
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$1;->mRestoreBluetoothA2dpRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->access$300()Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", delaying"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_e0
    :goto_e0
    return-void
.end method
