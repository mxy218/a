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

.field private static final DEFAULT_USE_NON_WAKEUP_ALARM_FOR_DELAY:Z = true

.field private static final KEY_SKIP_NOT_READY_JOBS:Ljava/lang/String; = "skip_not_ready_jobs"

.field private static final KEY_USE_NON_WAKEUP_ALARM_FOR_DELAY:Ljava/lang/String; = "use_non_wakeup_delay_alarm"


# instance fields
.field public SKIP_NOT_READY_JOBS:Z

.field public USE_NON_WAKEUP_ALARM_FOR_DELAY:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;Landroid/os/Handler;)V
    .registers 3

    .line 493
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    .line 494
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 467
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 480
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 486
    iput-boolean p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->USE_NON_WAKEUP_ALARM_FOR_DELAY:Z

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/content/ContentResolver;)V
    .registers 2

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/TimeController$TcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/TimeController$TcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/TimeController$TcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 544
    const-wide v0, 0x10b00000019L  # 5.665728762E-312

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 545
    iget-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 546
    iget-boolean v2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->USE_NON_WAKEUP_ALARM_FOR_DELAY:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 548
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 549
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 534
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 535
    const-string v0, "TimeController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 537
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "skip_not_ready_jobs"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 538
    iget-boolean v0, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->USE_NON_WAKEUP_ALARM_FOR_DELAY:Z

    .line 539
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 538
    const-string/jumbo v1, "use_non_wakeup_delay_alarm"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 540
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 541
    return-void
.end method

.method private start(Landroid/content/ContentResolver;)V
    .registers 4

    .line 498
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    .line 499
    iget-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "job_scheduler_time_controller_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 501
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/TimeController$TcConstants;->onChange(ZLandroid/net/Uri;)V

    .line 502
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 506
    iget-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "job_scheduler_time_controller_constants"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 510
    :try_start_8
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 514
    goto :goto_16

    .line 511
    :catch_e
    move-exception p1

    .line 513
    const-string p2, "JobScheduler.Time"

    const-string v0, "Bad jobscheduler time controller settings"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :goto_16
    iget-boolean p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 517
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v0, 0x1

    const-string/jumbo v1, "skip_not_ready_jobs"

    invoke-virtual {p2, v1, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    .line 520
    iget-boolean p2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->SKIP_NOT_READY_JOBS:Z

    if-eq p1, p2, :cond_37

    .line 521
    iget-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    iget-object p1, p1, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 522
    :try_start_2d
    iget-object p2, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/TimeController;->recheckAlarmsLocked()V

    .line 523
    monitor-exit p1

    goto :goto_37

    :catchall_34
    move-exception p2

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw p2

    .line 526
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo p2, "use_non_wakeup_delay_alarm"

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/job/controllers/TimeController$TcConstants;->USE_NON_WAKEUP_ALARM_FOR_DELAY:Z

    .line 531
    return-void
.end method
