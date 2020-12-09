.class Lcom/android/server/om/IdmapDaemon$Connection;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/IdmapDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mOpened:Z

.field final synthetic this$0:Lcom/android/server/om/IdmapDaemon;


# direct methods
.method private constructor <init>(Lcom/android/server/om/IdmapDaemon;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 65
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_d
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon$1;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 72
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 73
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    if-nez v1, :cond_b

    .line 74
    monitor-exit v0

    return-void

    .line 77
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 78
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 81
    monitor-exit v0

    return-void

    .line 84
    :cond_1c
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk;

    invoke-direct {v2, p0}, Lcom/android/server/om/-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk;-><init>(Lcom/android/server/om/IdmapDaemon$Connection;)V

    .line 94
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->access$000()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x2710

    .line 84
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public synthetic lambda$close$0$IdmapDaemon$Connection()V
    .registers 4

    .line 85
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 87
    :try_start_5
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->access$200(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->access$100(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_25

    .line 91
    :cond_1a
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->access$300()V

    .line 92
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/om/IdmapDaemon;->access$202(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)Landroid/os/IIdmap2;

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 88
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    .line 93
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method
