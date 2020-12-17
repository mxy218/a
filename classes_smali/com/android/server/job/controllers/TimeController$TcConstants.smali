.class Lcom/android/server/job/controllers/TimeController$TcConstants;
.super Landroid/database/ContentObserver;
.source "TimeController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcConstants"
.end annotation


# static fields
.field private static final DEFAULT_SKIP_NOT_READY_JOBS:Z = true

.field private static final KEY_SKIP_NOT_READY_JOBS:Ljava/lang/String; = "skip_not_ready_jobs"


# instance fields
.field public SKIP_NOT_READY_JOBS:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;Landroid/os/Handler;)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/job/controllers/TimeController;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 483
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 484
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 466
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 485
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/TimeController$TcConstants;
    .param p1, "x1"  # Landroid/content/ContentResolver;

    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/TimeController$TcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/TimeController$TcConstants;
    .param p1, "x1"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/TimeController$TcConstants;
    .param p1, "x1"  # Landroid/util/proto/ProtoOutputStream;

    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 526
    const-wide v0, 0x10b00000019L  # 5.665728762E-312

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 527
    .local v0, "tcToken":J
    iget-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 528
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 529
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 518
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 519
    const-string v0, "TimeController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 521
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "skip_not_ready_jobs"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 522
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 523
    return-void
.end method

.method private start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 488
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    .line 489
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_time_controller_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 491
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->onChange(ZLandroid/net/Uri;)V

    .line 492
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 496
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_time_controller_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "constants":Ljava/lang/String;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 504
    goto :goto_17

    .line 501
    :catch_f
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "JobScheduler.Time"

    const-string v3, "Bad jobscheduler time controller settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_17
    iget-boolean v1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 507
    .local v1, "oldVal":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v3, 0x1

    const-string/jumbo v4, "skip_not_ready_jobs"

    invoke-virtual {v2, v4, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 510
    iget-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eq v1, v2, :cond_38

    .line 511
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    iget-object v2, v2, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 512
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/TimeController;->recheckAlarmsLocked()V

    .line 513
    monitor-exit v2

    goto :goto_38

    :catchall_35
    move-exception v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v3

    .line 515
    :cond_38
    :goto_38
    return-void
.end method
