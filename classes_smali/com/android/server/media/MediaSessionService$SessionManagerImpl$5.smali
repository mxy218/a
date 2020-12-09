.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V
    .registers 2

    .line 2216
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2219
    if-nez p2, :cond_3

    .line 2220
    return-void

    .line 2222
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 2223
    if-nez p1, :cond_a

    .line 2224
    return-void

    .line 2226
    :cond_a
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p2, p2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2227
    :try_start_13
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2228
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 2229
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2231
    :cond_34
    monitor-exit p2

    .line 2232
    return-void

    .line 2231
    :catchall_36
    move-exception p1

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_36

    throw p1
.end method
