.class Lcom/android/server/MmsServiceBroker$2;
.super Ljava/lang/Object;
.source "MmsServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/MmsServiceBroker;

    .line 95
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 98
    const-string v0, "MmsServiceBroker"

    const-string v1, "MmsService connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter v0

    .line 100
    :try_start_a
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MmsServiceBroker;->access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    .line 101
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 107
    const-string v0, "MmsServiceBroker"

    const-string v1, "MmsService unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter v0

    .line 109
    :try_start_a
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/MmsServiceBroker;->access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    .line 110
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2d

    .line 114
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 115
    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    return-void

    .line 111
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method
