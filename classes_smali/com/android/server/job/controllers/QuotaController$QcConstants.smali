.class Lcom/android/server/job/controllers/QuotaController$QcConstants;
.super Landroid/database/ContentObserver;
.source "QuotaController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QcConstants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOWED_TIME_PER_PERIOD_MS:J = 0x927c0L

.field private static final DEFAULT_IN_QUOTA_BUFFER_MS:J = 0x7530L

.field private static final DEFAULT_MAX_EXECUTION_TIME_MS:J = 0xdbba00L

.field private static final DEFAULT_MAX_JOB_COUNT_ACTIVE:I = 0x14

.field private static final DEFAULT_MAX_JOB_COUNT_FREQUENT:I = 0xc8

.field private static final DEFAULT_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_JOB_COUNT_RARE:I = 0x30

.field private static final DEFAULT_MAX_JOB_COUNT_WORKING:I = 0x78

.field private static final DEFAULT_MAX_SESSION_COUNT_ACTIVE:I = 0x14

.field private static final DEFAULT_MAX_SESSION_COUNT_FREQUENT:I = 0x8

.field private static final DEFAULT_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_SESSION_COUNT_RARE:I = 0x3

.field private static final DEFAULT_MAX_SESSION_COUNT_WORKING:I = 0xa

.field private static final DEFAULT_RATE_LIMITING_WINDOW_MS:J = 0x927c0L

.field private static final DEFAULT_TIMING_SESSION_COALESCING_DURATION_MS:J = 0x1388L

.field private static final DEFAULT_WINDOW_SIZE_ACTIVE_MS:J = 0x927c0L

.field private static final DEFAULT_WINDOW_SIZE_FREQUENT_MS:J = 0x1b77400L

.field private static final DEFAULT_WINDOW_SIZE_RARE_MS:J = 0x5265c00L

.field private static final DEFAULT_WINDOW_SIZE_WORKING_MS:J = 0x6ddd00L

.field private static final KEY_ALLOWED_TIME_PER_PERIOD_MS:Ljava/lang/String; = "allowed_time_per_period_ms"

.field private static final KEY_IN_QUOTA_BUFFER_MS:Ljava/lang/String; = "in_quota_buffer_ms"

.field private static final KEY_MAX_EXECUTION_TIME_MS:Ljava/lang/String; = "max_execution_time_ms"

.field private static final KEY_MAX_JOB_COUNT_ACTIVE:Ljava/lang/String; = "max_job_count_active"

.field private static final KEY_MAX_JOB_COUNT_FREQUENT:Ljava/lang/String; = "max_job_count_frequent"

.field private static final KEY_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "max_job_count_per_rate_limiting_window"

.field private static final KEY_MAX_JOB_COUNT_RARE:Ljava/lang/String; = "max_job_count_rare"

.field private static final KEY_MAX_JOB_COUNT_WORKING:Ljava/lang/String; = "max_job_count_working"

.field private static final KEY_MAX_SESSION_COUNT_ACTIVE:Ljava/lang/String; = "max_session_count_active"

.field private static final KEY_MAX_SESSION_COUNT_FREQUENT:Ljava/lang/String; = "max_session_count_frequent"

.field private static final KEY_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:Ljava/lang/String; = "max_session_count_per_rate_limiting_window"

.field private static final KEY_MAX_SESSION_COUNT_RARE:Ljava/lang/String; = "max_session_count_rare"

.field private static final KEY_MAX_SESSION_COUNT_WORKING:Ljava/lang/String; = "max_session_count_working"

.field private static final KEY_RATE_LIMITING_WINDOW_MS:Ljava/lang/String; = "rate_limiting_window_ms"

.field private static final KEY_TIMING_SESSION_COALESCING_DURATION_MS:Ljava/lang/String; = "timing_session_coalescing_duration_ms"

.field private static final KEY_WINDOW_SIZE_ACTIVE_MS:Ljava/lang/String; = "window_size_active_ms"

.field private static final KEY_WINDOW_SIZE_FREQUENT_MS:Ljava/lang/String; = "window_size_frequent_ms"

.field private static final KEY_WINDOW_SIZE_RARE_MS:Ljava/lang/String; = "window_size_rare_ms"

.field private static final KEY_WINDOW_SIZE_WORKING_MS:Ljava/lang/String; = "window_size_working_ms"

.field private static final MIN_BUCKET_JOB_COUNT:I = 0xa

.field private static final MIN_BUCKET_SESSION_COUNT:I = 0x1

.field private static final MIN_MAX_EXECUTION_TIME_MS:J = 0x36ee80L

.field private static final MIN_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0xa

.field private static final MIN_RATE_LIMITING_WINDOW_MS:J = 0x7530L


# instance fields
.field public ALLOWED_TIME_PER_PERIOD_MS:J

.field public IN_QUOTA_BUFFER_MS:J

.field public MAX_EXECUTION_TIME_MS:J

.field public MAX_JOB_COUNT_ACTIVE:I

.field public MAX_JOB_COUNT_FREQUENT:I

.field public MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_JOB_COUNT_RARE:I

.field public MAX_JOB_COUNT_WORKING:I

.field public MAX_SESSION_COUNT_ACTIVE:I

.field public MAX_SESSION_COUNT_FREQUENT:I

.field public MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

.field public MAX_SESSION_COUNT_RARE:I

.field public MAX_SESSION_COUNT_WORKING:I

.field public RATE_LIMITING_WINDOW_MS:J

.field public TIMING_SESSION_COALESCING_DURATION_MS:J

.field public WINDOW_SIZE_ACTIVE_MS:J

.field public WINDOW_SIZE_FREQUENT_MS:J

.field public WINDOW_SIZE_RARE_MS:J

.field public WINDOW_SIZE_WORKING_MS:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Handler;)V
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/job/controllers/QuotaController;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 2194
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2195
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1997
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 2059
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2065
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2072
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2079
    const-wide/32 v2, 0x6ddd00

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2086
    const-wide/32 v2, 0x1b77400

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2093
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2098
    const-wide/32 v2, 0xdbba00

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2104
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2110
    const/16 v3, 0x78

    iput v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2116
    const/16 v3, 0xc8

    iput v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2122
    const/16 v3, 0x30

    iput v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2125
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2130
    iput v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2137
    iput v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2143
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2149
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2155
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2161
    iput v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2168
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2196
    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"  # Landroid/util/proto/ProtoOutputStream;

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .param p1, "x1"  # Landroid/content/ContentResolver;

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 2426
    const-wide v0, 0x10b00000018L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2427
    .local v0, "qcToken":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2429
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2430
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2432
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2434
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2436
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-wide v4, 0x10300000006L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2437
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-wide v4, 0x10300000007L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2439
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2440
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2442
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2444
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2445
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-wide v4, 0x10500000013L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2447
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2449
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-wide v3, 0x1050000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2451
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-wide v3, 0x1050000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2453
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-wide v3, 0x1050000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2455
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-wide v3, 0x10500000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2457
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-wide v3, 0x10500000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2459
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-wide v4, 0x10300000012L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2461
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2462
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2397
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2398
    const-string v0, "QuotaController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2400
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "allowed_time_per_period_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2401
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "in_quota_buffer_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2402
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_active_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2403
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_working_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2404
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_frequent_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2405
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "window_size_rare_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2406
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "max_execution_time_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2407
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2408
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2409
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2410
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_job_count_rare"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2411
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "rate_limiting_window_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2412
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2413
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2412
    const-string/jumbo v1, "max_job_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2413
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2414
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2415
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2416
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2417
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "max_session_count_rare"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2418
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2418
    const-string/jumbo v1, "max_session_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2419
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2420
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2421
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2420
    const-string/jumbo v1, "timing_session_coalescing_duration_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2421
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2422
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2423
    return-void
.end method

.method private start(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 2199
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    .line 2200
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_quota_controller_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateConstants()V

    .line 2203
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateConstants$0$QuotaController$QcConstants()V
    .registers 3

    .line 2387
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2388
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 2389
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$1800(Lcom/android/server/job/controllers/QuotaController;)V

    .line 2390
    monitor-exit v0

    .line 2391
    return-void

    .line 2390
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 10
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 2207
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "job_scheduler_quota_controller_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2211
    .local v0, "constants":Ljava/lang/String;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 2215
    goto :goto_17

    .line 2212
    :catch_f
    move-exception v1

    .line 2214
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "JobScheduler.Quota"

    const-string v3, "Bad jobscheduler quota controller settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2217
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_17
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v2, 0x927c0

    const-string v4, "allowed_time_per_period_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2219
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v4, 0x7530

    const-string/jumbo v6, "in_quota_buffer_ms"

    invoke-virtual {v1, v6, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2221
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "window_size_active_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2223
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v4, 0x6ddd00

    const-string/jumbo v6, "window_size_working_ms"

    invoke-virtual {v1, v6, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2225
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v4, 0x1b77400

    const-string/jumbo v6, "window_size_frequent_ms"

    invoke-virtual {v1, v6, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2227
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v4, 0x5265c00

    const-string/jumbo v6, "window_size_rare_ms"

    invoke-virtual {v1, v6, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2229
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v4, 0xdbba00

    const-string/jumbo v6, "max_execution_time_ms"

    invoke-virtual {v1, v6, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2231
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v4, 0x14

    const-string/jumbo v5, "max_job_count_active"

    invoke-virtual {v1, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2233
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v5, 0x78

    const-string/jumbo v6, "max_job_count_working"

    invoke-virtual {v1, v6, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2235
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v5, 0xc8

    const-string/jumbo v6, "max_job_count_frequent"

    invoke-virtual {v1, v6, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2237
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v5, 0x30

    const-string/jumbo v6, "max_job_count_rare"

    invoke-virtual {v1, v6, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2239
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "rate_limiting_window_ms"

    invoke-virtual {v1, v5, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2241
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_job_count_per_rate_limiting_window"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2244
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_active"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2246
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0xa

    const-string/jumbo v3, "max_session_count_working"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2248
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v2, 0x8

    const-string/jumbo v3, "max_session_count_frequent"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2250
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v2, 0x3

    const-string/jumbo v3, "max_session_count_rare"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2252
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_session_count_per_rate_limiting_window"

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2255
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v2, 0x1388

    const-string/jumbo v4, "timing_session_coalescing_duration_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateConstants()V

    .line 2260
    return-void
.end method

.method updateConstants()V
    .registers 36
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2264
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2265
    const/4 v0, 0x0

    .line 2267
    .local v0, "changed":Z
    const-wide/32 v3, 0x36ee80

    :try_start_b
    iget-wide v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2268
    const-wide/32 v7, 0x5265c00

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2267
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2269
    .local v3, "newMaxExecutionTimeMs":J
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_3a

    .line 2270
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$2502(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2271
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    iget-object v6, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v5, v9, v10}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2272
    const/4 v0, 0x1

    .line 2274
    :cond_3a
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    const-wide/32 v9, 0xea60

    iget-wide v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2275
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2274
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2276
    .local v5, "newAllowedTimeMs":J
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-eqz v9, :cond_6f

    .line 2277
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v9, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->access$2802(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2278
    iget-object v9, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v10, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v9, v10, v11}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2279
    const/4 v0, 0x1

    .line 2281
    :cond_6f
    const-wide/32 v9, 0x493e0

    iget-wide v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2282
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 2281
    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2283
    .local v9, "newQuotaBufferMs":J
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-eqz v13, :cond_b2

    .line 2284
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13, v9, v10}, Lcom/android/server/job/controllers/QuotaController;->access$2702(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2285
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    sub-long/2addr v14, v11

    invoke-static {v13, v14, v15}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2286
    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v12

    iget-object v14, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v14}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v11, v12, v13}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2287
    const/4 v0, 0x1

    .line 2289
    :cond_b2
    iget-object v11, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v11}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2290
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 2289
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 2291
    .local v11, "newActivePeriodMs":J
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v13

    const/4 v14, 0x0

    aget-wide v16, v13, v14

    cmp-long v13, v16, v11

    if-eqz v13, :cond_d8

    .line 2292
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v13

    aput-wide v11, v13, v14

    .line 2293
    const/4 v0, 0x1

    .line 2295
    :cond_d8
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v14

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2296
    move-wide/from16 v19, v3

    const-wide/32 v3, 0x5265c00

    .end local v3  # "newMaxExecutionTimeMs":J
    .local v19, "newMaxExecutionTimeMs":J
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2295
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2297
    .local v3, "newWorkingPeriodMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x1

    aget-wide v13, v7, v8

    cmp-long v7, v13, v3

    if-eqz v7, :cond_103

    .line 2298
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v3, v7, v8

    .line 2299
    const/4 v0, 0x1

    .line 2301
    :cond_103
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    move-wide/from16 v21, v9

    .end local v9  # "newQuotaBufferMs":J
    .local v21, "newQuotaBufferMs":J
    iget-wide v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2302
    move-wide/from16 v23, v3

    const-wide/32 v3, 0x5265c00

    .end local v3  # "newWorkingPeriodMs":J
    .local v23, "newWorkingPeriodMs":J
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2301
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2303
    .local v3, "newFrequentPeriodMs":J
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    const/4 v9, 0x2

    aget-wide v13, v8, v9

    cmp-long v8, v13, v3

    if-eqz v8, :cond_130

    .line 2304
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v8

    aput-wide v3, v8, v9

    .line 2305
    const/4 v0, 0x1

    .line 2307
    :cond_130
    iget-object v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    iget-wide v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2308
    move-wide/from16 v25, v11

    const-wide/32 v10, 0x5265c00

    .end local v11  # "newActivePeriodMs":J
    .local v25, "newActivePeriodMs":J
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2307
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide v10, v7

    .line 2309
    .local v10, "newRarePeriodMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    const/4 v8, 0x3

    aget-wide v13, v7, v8

    cmp-long v7, v13, v10

    if-eqz v7, :cond_15c

    .line 2310
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v7

    aput-wide v10, v7, v8

    .line 2311
    const/4 v0, 0x1

    .line 2313
    :cond_15c
    const-wide/16 v13, 0x7530

    iget-wide v8, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2314
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 2313
    const-wide/32 v13, 0x5265c00

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v8, v7

    .line 2315
    .local v8, "newRateLimitingWindowMs":J
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3100(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v13

    cmp-long v7, v13, v8

    if-eqz v7, :cond_17c

    .line 2316
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v8, v9}, Lcom/android/server/job/controllers/QuotaController;->access$3102(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2317
    const/4 v0, 0x1

    .line 2319
    :cond_17c
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v13, 0xa

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v14, v7

    .line 2322
    .local v14, "newMaxJobCountPerRateLimitingWindow":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3200(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v7

    if-eq v7, v14, :cond_193

    .line 2323
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7, v14}, Lcom/android/server/job/controllers/QuotaController;->access$3202(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2324
    const/4 v0, 0x1

    .line 2326
    :cond_193
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2327
    .local v7, "newActiveMaxJobCount":I
    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v12

    const/16 v16, 0x0

    aget v12, v12, v16

    if-eq v12, v7, :cond_1b0

    .line 2328
    iget-object v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v12

    const/16 v16, 0x0

    aput v7, v12, v16

    .line 2329
    const/4 v0, 0x1

    .line 2331
    :cond_1b0
    iget v12, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2332
    .local v12, "newWorkingMaxJobCount":I
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    const/16 v17, 0x1

    aget v15, v15, v17

    move/from16 v17, v7

    .end local v7  # "newActiveMaxJobCount":I
    .local v17, "newActiveMaxJobCount":I
    if-eq v15, v12, :cond_1ce

    .line 2333
    iget-object v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v15}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v15

    const/4 v7, 0x1

    aput v12, v15, v7

    .line 2334
    const/4 v0, 0x1

    .line 2336
    :cond_1ce
    iget v15, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2337
    .local v15, "newFrequentMaxJobCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v18, 0x2

    aget v7, v7, v18

    if-eq v7, v15, :cond_1eb

    .line 2338
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v18, 0x2

    aput v15, v7, v18

    .line 2339
    const/4 v0, 0x1

    .line 2341
    :cond_1eb
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2342
    .local v7, "newRareMaxJobCount":I
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v13

    const/16 v27, 0x3

    aget v13, v13, v27

    if-eq v13, v7, :cond_208

    .line 2343
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v13

    const/16 v27, 0x3

    aput v7, v13, v27

    .line 2344
    const/4 v0, 0x1

    .line 2346
    :cond_208
    iget v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    move/from16 v30, v0

    const/16 v0, 0xa

    .end local v0  # "changed":Z
    .local v30, "changed":Z
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2349
    .local v0, "newMaxSessionCountPerRateLimitPeriod":I
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13}, Lcom/android/server/job/controllers/QuotaController;->access$3400(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v13

    if-eq v13, v0, :cond_222

    .line 2350
    iget-object v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v13, v0}, Lcom/android/server/job/controllers/QuotaController;->access$3402(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2351
    const/4 v13, 0x1

    move/from16 v30, v13

    .line 2353
    :cond_222
    iget v13, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2354
    move/from16 v29, v0

    const/4 v0, 0x1

    .end local v0  # "newMaxSessionCountPerRateLimitPeriod":I
    .local v29, "newMaxSessionCountPerRateLimitPeriod":I
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v0, v7

    .line 2355
    .end local v7  # "newRareMaxJobCount":I
    .local v0, "newRareMaxJobCount":I
    .local v13, "newActiveMaxSessionCount":I
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v16, 0x0

    aget v7, v7, v16

    if-eq v7, v13, :cond_244

    .line 2356
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v7

    const/16 v16, 0x0

    aput v13, v7, v16

    .line 2357
    const/16 v30, 0x1

    .line 2359
    :cond_244
    iget v7, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2360
    move/from16 v16, v0

    const/4 v0, 0x1

    .end local v0  # "newRareMaxJobCount":I
    .local v16, "newRareMaxJobCount":I
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2361
    .local v7, "newWorkingMaxSessionCount":I
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v0

    const/16 v28, 0x1

    aget v0, v0, v28

    if-eq v0, v7, :cond_265

    .line 2362
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v0

    const/16 v28, 0x1

    aput v7, v0, v28

    .line 2363
    const/16 v30, 0x1

    .line 2365
    :cond_265
    iget v0, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2366
    move-wide/from16 v31, v3

    const/4 v3, 0x1

    .end local v3  # "newFrequentPeriodMs":J
    .local v31, "newFrequentPeriodMs":J
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2367
    .local v0, "newFrequentMaxSessionCount":I
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/16 v18, 0x2

    aget v4, v4, v18

    if-eq v4, v0, :cond_286

    .line 2368
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/16 v18, 0x2

    aput v0, v4, v18

    .line 2369
    const/16 v30, 0x1

    .line 2371
    :cond_286
    iget v4, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2372
    const/4 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2373
    .local v3, "newRareMaxSessionCount":I
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/16 v18, 0x3

    aget v4, v4, v18

    if-eq v4, v3, :cond_2a5

    .line 2374
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v4

    const/16 v18, 0x3

    aput v3, v4, v18

    .line 2375
    const/16 v30, 0x1

    .line 2377
    :cond_2a5
    move/from16 v18, v3

    .end local v3  # "newRareMaxSessionCount":I
    .local v18, "newRareMaxSessionCount":I
    iget-wide v3, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2378
    move-wide/from16 v33, v5

    const-wide/16 v5, 0x0

    .end local v5  # "newAllowedTimeMs":J
    .local v33, "newAllowedTimeMs":J
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2377
    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2379
    .local v3, "newSessionCoalescingDurationMs":J
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$3600(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2c9

    .line 2380
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->access$3602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2381
    const/16 v30, 0x1

    .line 2384
    :cond_2c9
    if-eqz v30, :cond_2df

    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2100(Lcom/android/server/job/controllers/QuotaController;)Z

    move-result v5

    if-eqz v5, :cond_2df

    .line 2386
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;

    invoke-direct {v6, v1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;-><init>(Lcom/android/server/job/controllers/QuotaController$QcConstants;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2393
    .end local v0  # "newFrequentMaxSessionCount":I
    .end local v3  # "newSessionCoalescingDurationMs":J
    .end local v7  # "newWorkingMaxSessionCount":I
    .end local v8  # "newRateLimitingWindowMs":J
    .end local v10  # "newRarePeriodMs":J
    .end local v12  # "newWorkingMaxJobCount":I
    .end local v13  # "newActiveMaxSessionCount":I
    .end local v14  # "newMaxJobCountPerRateLimitingWindow":I
    .end local v15  # "newFrequentMaxJobCount":I
    .end local v16  # "newRareMaxJobCount":I
    .end local v17  # "newActiveMaxJobCount":I
    .end local v18  # "newRareMaxSessionCount":I
    .end local v19  # "newMaxExecutionTimeMs":J
    .end local v21  # "newQuotaBufferMs":J
    .end local v23  # "newWorkingPeriodMs":J
    .end local v25  # "newActivePeriodMs":J
    .end local v29  # "newMaxSessionCountPerRateLimitPeriod":I
    .end local v30  # "changed":Z
    .end local v31  # "newFrequentPeriodMs":J
    .end local v33  # "newAllowedTimeMs":J
    :cond_2df
    monitor-exit v2

    .line 2394
    return-void

    .line 2393
    :catchall_2e1
    move-exception v0

    monitor-exit v2
    :try_end_2e3
    .catchall {:try_start_b .. :try_end_2e3} :catchall_2e1

    throw v0
.end method
