.class Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;
.super Ljava/lang/Object;
.source "RpkEmitter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/RpkEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/RpkEmitter;


# direct methods
.method private constructor <init>(Lcom/meizu/statsrpk/RpkEmitter;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;->this$0:Lcom/meizu/statsrpk/RpkEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsrpk/RpkEmitter;Lcom/meizu/statsrpk/RpkEmitter$1;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;-><init>(Lcom/meizu/statsrpk/RpkEmitter;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 60
    :try_start_0
    invoke-static {}, Lcom/meizu/statsrpk/RpkEmitter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;->this$0:Lcom/meizu/statsrpk/RpkEmitter;

    invoke-static {p2}, Lcom/meizu/statsrpk/IRpkStatsInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/statsrpk/IRpkStatsInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsrpk/RpkEmitter;->access$202(Lcom/meizu/statsrpk/RpkEmitter;Lcom/meizu/statsrpk/IRpkStatsInterface;)Lcom/meizu/statsrpk/IRpkStatsInterface;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_4b

    :catch_22
    move-exception p1

    .line 63
    invoke-static {}, Lcom/meizu/statsrpk/RpkEmitter;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -Cause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_4b
    monitor-enter p0

    .line 66
    :try_start_4c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_51

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 72
    invoke-static {}, Lcom/meizu/statsrpk/RpkEmitter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;->this$0:Lcom/meizu/statsrpk/RpkEmitter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/statsrpk/RpkEmitter;->access$202(Lcom/meizu/statsrpk/RpkEmitter;Lcom/meizu/statsrpk/IRpkStatsInterface;)Lcom/meizu/statsrpk/IRpkStatsInterface;

    .line 74
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;->this$0:Lcom/meizu/statsrpk/RpkEmitter;

    invoke-static {p1}, Lcom/meizu/statsrpk/RpkEmitter;->access$300(Lcom/meizu/statsrpk/RpkEmitter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
