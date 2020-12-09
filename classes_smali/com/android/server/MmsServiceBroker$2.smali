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

    .line 92
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 95
    const-string p1, "MmsServiceBroker"

    const-string v0, "MmsService connected"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter p1

    .line 97
    :try_start_a
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/MmsServiceBroker;->access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    .line 98
    iget-object p2, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 99
    monitor-exit p1

    .line 100
    return-void

    .line 99
    :catchall_1e
    move-exception p2

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 104
    const-string p1, "MmsServiceBroker"

    const-string v0, "MmsService unexpectedly disconnected"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    monitor-enter p1

    .line 106
    :try_start_a
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/MmsServiceBroker;->access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;

    .line 107
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 108
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_2d

    .line 111
    iget-object p1, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {p1}, Lcom/android/server/MmsServiceBroker;->access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$2;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 112
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 111
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void

    .line 108
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method
