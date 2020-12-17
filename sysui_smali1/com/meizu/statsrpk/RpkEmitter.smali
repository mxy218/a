.class public Lcom/meizu/statsrpk/RpkEmitter;
.super Ljava/lang/Object;
.source "RpkEmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RpkEmitter"


# instance fields
.field private context:Landroid/content/Context;

.field private rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

.field private rpkStatsInterface:Lcom/meizu/statsrpk/IRpkStatsInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkEmitter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/meizu/statsrpk/RpkEmitter;->rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    .line 26
    invoke-direct {p0}, Lcom/meizu/statsrpk/RpkEmitter;->bindService()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 16
    sget-object v0, Lcom/meizu/statsrpk/RpkEmitter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/statsrpk/RpkEmitter;Lcom/meizu/statsrpk/IRpkStatsInterface;)Lcom/meizu/statsrpk/IRpkStatsInterface;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkEmitter;->rpkStatsInterface:Lcom/meizu/statsrpk/IRpkStatsInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/statsrpk/RpkEmitter;)Landroid/content/Context;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkEmitter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private bindService()V
    .registers 5

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/statsrpk/RpkEmitter;->context:Landroid/content/Context;

    const-class v2, Lcom/meizu/statsrpk/service/RpkUsageStatsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    new-instance v1, Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/statsrpk/RpkEmitter$ServiceConn;-><init>(Lcom/meizu/statsrpk/RpkEmitter;Lcom/meizu/statsrpk/RpkEmitter$1;)V

    .line 43
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkEmitter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    .line 44
    sget-object v0, Lcom/meizu/statsrpk/RpkEmitter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_68

    .line 46
    monitor-enter v1

    .line 48
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3d
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_64

    :catchall_3b
    move-exception p0

    goto :goto_66

    :catch_3d
    move-exception p0

    .line 50
    :try_start_3e
    sget-object v0, Lcom/meizu/statsrpk/RpkEmitter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -Cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_64
    monitor-exit v1

    goto :goto_68

    :goto_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_3e .. :try_end_67} :catchall_3b

    throw p0

    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
.method public track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 6

    .line 30
    sget-object v0, Lcom/meizu/statsrpk/RpkEmitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rpk track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkEmitter;->rpkStatsInterface:Lcom/meizu/statsrpk/IRpkStatsInterface;

    if-eqz p0, :cond_2a

    .line 33
    :try_start_22
    invoke-interface {p0, p1, p2}, Lcom/meizu/statsrpk/IRpkStatsInterface;->track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    .line 35
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-void
.end method
