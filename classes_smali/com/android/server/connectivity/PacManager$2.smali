.class Lcom/android/server/connectivity/PacManager$2;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 318
    iget-object p1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p1}, Lcom/android/server/connectivity/PacManager;->access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 320
    :try_start_7
    const-string v0, "PacManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding service com.android.net.IProxyService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_24
    .catchall {:try_start_7 .. :try_end_21} :catchall_22

    .line 324
    goto :goto_2c

    .line 337
    :catchall_22
    move-exception p2

    goto :goto_6d

    .line 322
    :catch_24
    move-exception v0

    .line 323
    :try_start_25
    const-string v1, "PacManager"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    :goto_2c
    const-string v0, "com.android.net.IProxyService"

    invoke-static {v0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 326
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/connectivity/PacManager;->access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    .line 327
    iget-object p2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p2}, Lcom/android/server/connectivity/PacManager;->access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    move-result-object p2

    if-nez p2, :cond_4a

    .line 328
    const-string p2, "PacManager"

    const-string v0, "No proxy service"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_22

    goto :goto_6b

    .line 331
    :cond_4a
    :try_start_4a
    iget-object p2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p2}, Lcom/android/server/connectivity/PacManager;->access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/net/IProxyService;->startPacSystem()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_53} :catch_54
    .catchall {:try_start_4a .. :try_end_53} :catchall_22

    .line 334
    goto :goto_5c

    .line 332
    :catch_54
    move-exception p2

    .line 333
    :try_start_55
    const-string v0, "PacManager"

    const-string v1, "Unable to reach ProxyService - PAC will not be started"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    :goto_5c
    iget-object p2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p2}, Lcom/android/server/connectivity/PacManager;->access$1000(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :goto_6b
    monitor-exit p1

    .line 338
    return-void

    .line 337
    :goto_6d
    monitor-exit p1
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_22

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 311
    iget-object p1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p1}, Lcom/android/server/connectivity/PacManager;->access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 312
    :try_start_7
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/PacManager;->access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    .line 313
    monitor-exit p1

    .line 314
    return-void

    .line 313
    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
