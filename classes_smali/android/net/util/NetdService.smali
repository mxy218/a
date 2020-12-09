.class public Landroid/net/util/NetdService;
.super Ljava/lang/Object;
.source "NetdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/NetdService$NetdCommand;
    }
.end annotation


# static fields
.field private static final BASE_TIMEOUT_MS:J = 0x64L

.field private static final MAX_TIMEOUT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Landroid/net/util/NetdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/net/INetd;
    .registers 2

    .line 114
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public static get(J)Landroid/net/INetd;
    .registers 10

    .line 76
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_b

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object p0

    return-object p0

    .line 78
    :cond_b
    if-lez v2, :cond_13

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p0

    goto :goto_18

    .line 80
    :cond_13
    const-wide v2, 0x7fffffffffffffffL

    .line 82
    :goto_18
    move-wide p0, v0

    .line 84
    :goto_19
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_20

    .line 86
    return-object v4

    .line 89
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 90
    cmp-long v6, v4, v0

    if-gtz v6, :cond_2c

    .line 99
    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_2c
    const-wide/16 v6, 0x64

    add-long/2addr p0, v6

    const-wide/16 v6, 0x3e8

    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 94
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 96
    :try_start_39
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 97
    :goto_3c
    goto :goto_3f

    :catch_3d
    move-exception v4

    goto :goto_3c

    .line 98
    :goto_3f
    goto :goto_19
.end method

.method public static getInstance()Landroid/net/INetd;
    .registers 3

    .line 50
    nop

    .line 51
    const-string/jumbo v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    .line 52
    if-nez v0, :cond_15

    .line 53
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    const-string v2, "WARNING: returning null INetd instance."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_15
    return-object v0
.end method

.method public static run(Landroid/net/util/NetdService$NetdCommand;)V
    .registers 5

    .line 128
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/util/NetdService$NetdCommand;->run(Landroid/net/INetd;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 129
    return-void

    .line 130
    :catch_8
    move-exception v0

    .line 131
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error communicating with netd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    goto :goto_0
.end method
