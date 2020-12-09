.class Lcom/android/server/om/IdmapDaemon;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/IdmapDaemon$Connection;
    }
.end annotation


# static fields
.field private static final IDMAP_DAEMON:Ljava/lang/String; = "idmap2d"

.field private static final IDMAP_TOKEN:Ljava/lang/Object;

.field private static final SERVICE_CONNECT_TIMEOUT_MS:I = 0x1388

.field private static final SERVICE_TIMEOUT_MS:I = 0x2710

.field private static sInstance:Lcom/android/server/om/IdmapDaemon;


# instance fields
.field private final mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mService:Landroid/os/IIdmap2;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 110
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/om/IdmapDaemon;->IDMAP_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->IDMAP_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)Landroid/os/IIdmap2;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object p1
.end method

.method static synthetic access$300()V
    .registers 0

    .line 41
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->stopIdmapService()V

    return-void
.end method

.method private connect()Lcom/android/server/om/IdmapDaemon$Connection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->IDMAP_TOKEN:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/om/IdmapDaemon;->IDMAP_TOKEN:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 146
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon$1;)V

    monitor-exit v0

    return-object v1

    .line 150
    :cond_18
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->startIdmapService()V

    .line 153
    new-instance v1, Ljava/util/concurrent/FutureTask;

    sget-object v3, Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;->INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_5c

    .line 170
    :try_start_22
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 171
    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_52
    .catchall {:try_start_22 .. :try_end_33} :catchall_5c

    .line 175
    nop

    .line 178
    :try_start_34
    sget-object v3, Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;->INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3a} :catch_48
    .catchall {:try_start_34 .. :try_end_3a} :catchall_5c

    .line 184
    nop

    .line 186
    :try_start_3b
    invoke-static {v1}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 191
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon$1;)V

    monitor-exit v0

    return-object v1

    .line 181
    :catch_48
    move-exception v1

    .line 182
    const-string v2, "OverlayManager"

    const-string/jumbo v3, "service \'idmap\' failed to be bound"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    throw v1

    .line 172
    :catch_52
    move-exception v1

    .line 173
    const-string v2, "OverlayManager"

    const-string/jumbo v3, "service \'idmap\' not found;"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    throw v1

    .line 192
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method static getInstance()Lcom/android/server/om/IdmapDaemon;
    .registers 1

    .line 100
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    if-nez v0, :cond_b

    .line 101
    new-instance v0, Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v0}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    sput-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 103
    :cond_b
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    return-object v0
.end method

.method static synthetic lambda$connect$0()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    :goto_0
    :try_start_0
    const-string v0, "idmap"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_a

    .line 157
    if-eqz v0, :cond_9

    .line 158
    return-object v0

    .line 163
    :cond_9
    goto :goto_26

    .line 160
    :catch_a
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service \'idmap\' not retrieved; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_26
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method static synthetic lambda$connect$1()V
    .registers 2

    .line 179
    const-string v0, "OverlayManager"

    const-string/jumbo v1, "service \'idmap\' died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method private static startIdmapService()V
    .registers 2

    .line 133
    const-string v0, "ctl.start"

    const-string v1, "idmap2d"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private static stopIdmapService()V
    .registers 2

    .line 137
    const-string v0, "ctl.stop"

    const-string v1, "idmap2d"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 109
    :try_start_4
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_16

    .line 110
    if-eqz v0, :cond_15

    const/4 p2, 0x0

    invoke-static {p2, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 109
    :cond_15
    return-object p1

    .line 108
    :catchall_16
    move-exception p1

    :try_start_17
    throw p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 110
    :catchall_18
    move-exception p2

    if-eqz v0, :cond_1e

    invoke-static {p1, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1e
    throw p2
.end method

.method getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 128
    :try_start_4
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-interface {v1, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    .line 129
    if-eqz v0, :cond_10

    const/4 p2, 0x0

    invoke-static {p2, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 128
    :cond_10
    return-object p1

    .line 127
    :catchall_11
    move-exception p1

    :try_start_12
    throw p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    .line 129
    :catchall_13
    move-exception p2

    if-eqz v0, :cond_19

    invoke-static {p1, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_19
    throw p2
.end method

.method removeIdmap(Ljava/lang/String;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 115
    :try_start_4
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-interface {v1, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    .line 116
    if-eqz v0, :cond_10

    const/4 p2, 0x0

    invoke-static {p2, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 115
    :cond_10
    return p1

    .line 114
    :catchall_11
    move-exception p1

    :try_start_12
    throw p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    .line 116
    :catchall_13
    move-exception p2

    if-eqz v0, :cond_19

    invoke-static {p1, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_19
    throw p2
.end method

.method verifyIdmap(Ljava/lang/String;IZI)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0

    .line 122
    :try_start_4
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;IZI)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    .line 123
    if-eqz v0, :cond_10

    const/4 p2, 0x0

    invoke-static {p2, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 122
    :cond_10
    return p1

    .line 121
    :catchall_11
    move-exception p1

    :try_start_12
    throw p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    .line 123
    :catchall_13
    move-exception p2

    if-eqz v0, :cond_19

    invoke-static {p1, v0}, Lcom/android/server/om/IdmapDaemon;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_19
    throw p2
.end method
