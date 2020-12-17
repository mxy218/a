.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;
.super Ljava/lang/Object;
.source "V3RemoteServiceRequester.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;


# direct methods
.method private constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$1;)V
    .registers 3

    .line 255
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 260
    :try_start_0
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$202(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    .line 264
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 265
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;->onServiceConnected()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_5c

    :catch_33
    move-exception p1

    .line 268
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Cause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_5c
    :goto_5c
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    move-result-object p1

    monitor-enter p1

    .line 271
    :try_start_63
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p1

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit p1
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 277
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$202(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    .line 279
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 280
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;->onServiceDisconnected()V

    .line 282
    :cond_2f
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->access$500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
