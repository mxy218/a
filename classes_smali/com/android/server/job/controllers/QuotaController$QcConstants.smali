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

.field private static final DEFAULT_MAX_JOB_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_JOB_COUNT_FREQUENT:I = 0xc8

.field private static final DEFAULT_MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_JOB_COUNT_RARE:I = 0x30

.field private static final DEFAULT_MAX_JOB_COUNT_WORKING:I = 0x78

.field private static final DEFAULT_MAX_SESSION_COUNT_ACTIVE:I = 0x4b

.field private static final DEFAULT_MAX_SESSION_COUNT_FREQUENT:I = 0x8

.field private static final DEFAULT_MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I = 0x14

.field private static final DEFAULT_MAX_SESSION_COUNT_RARE:I = 0x3

.field private static final DEFAULT_MAX_SESSION_COUNT_WORKING:I = 0xa

.field private static final DEFAULT_RATE_LIMITING_WINDOW_MS:J = 0xea60L

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
    .registers 5

    .line 2194
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2195
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1997
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    .line 2059
    const-wide/32 p1, 0x927c0

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2065
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2072
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2079
    const-wide/32 p1, 0x6ddd00

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2086
    const-wide/32 p1, 0x1b77400

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2093
    const-wide/32 p1, 0x5265c00

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2098
    const-wide/32 p1, 0xdbba00

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2104
    const/16 p1, 0x4b

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2110
    const/16 p2, 0x78

    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2116
    const/16 p2, 0xc8

    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2122
    const/16 p2, 0x30

    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2125
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2130
    const/16 p2, 0x14

    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2137
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2143
    const/16 p1, 0xa

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2149
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2155
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2161
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2168
    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2196
    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/job/controllers/QuotaController$QcConstants;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/content/ContentResolver;)V
    .registers 2

    .line 1995
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    .line 2426
    const-wide v0, 0x10b00000018L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2427
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

    const-string v1, "in_quota_buffer_ms"

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

    const-string v1, "max_execution_time_ms"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2407
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_job_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2408
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_job_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2409
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2410
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_job_count_rare"

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
    const-string v1, "max_job_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    .line 2413
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2414
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_session_count_active"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2415
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_session_count_working"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2416
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_session_count_frequent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2417
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "max_session_count_rare"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2418
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2418
    const-string v1, "max_session_count_per_rate_limiting_window"

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
    .registers 4

    .line 2199
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    .line 2200
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "job_scheduler_quota_controller_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2202
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->onChange(ZLandroid/net/Uri;)V

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
    .registers 7

    .line 2207
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mResolver:Landroid/content/ContentResolver;

    const-string p2, "job_scheduler_quota_controller_constants"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2211
    :try_start_8
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    .line 2215
    goto :goto_16

    .line 2212
    :catch_e
    move-exception p1

    .line 2214
    const-string p2, "JobScheduler.Quota"

    const-string v0, "Bad jobscheduler quota controller settings"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2217
    :goto_16
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v0, 0x927c0

    const-string p2, "allowed_time_per_period_ms"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2219
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v2, 0x7530

    const-string p2, "in_quota_buffer_ms"

    invoke-virtual {p1, p2, v2, v3}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2221
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo p2, "window_size_active_ms"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2223
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v0, 0x6ddd00

    const-string/jumbo p2, "window_size_working_ms"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2225
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v0, 0x1b77400

    const-string/jumbo p2, "window_size_frequent_ms"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2227
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v0, 0x5265c00

    const-string/jumbo p2, "window_size_rare_ms"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2229
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v0, 0xdbba00

    const-string p2, "max_execution_time_ms"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2231
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0x4b

    const-string v0, "max_job_count_active"

    invoke-virtual {p1, v0, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    .line 2233
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v0, 0x78

    const-string v1, "max_job_count_working"

    invoke-virtual {p1, v1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    .line 2235
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v0, 0xc8

    const-string v1, "max_job_count_frequent"

    invoke-virtual {p1, v1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    .line 2237
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v0, 0x30

    const-string v1, "max_job_count_rare"

    invoke-virtual {p1, v1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    .line 2239
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v0, 0xea60

    const-string/jumbo v2, "rate_limiting_window_ms"

    invoke-virtual {p1, v2, v0, v1}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2241
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 v0, 0x14

    const-string v1, "max_job_count_per_rate_limiting_window"

    invoke-virtual {p1, v1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2244
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "max_session_count_active"

    invoke-virtual {p1, v1, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2246
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0xa

    const-string v1, "max_session_count_working"

    invoke-virtual {p1, v1, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2248
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0x8

    const-string v1, "max_session_count_frequent"

    invoke-virtual {p1, v1, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2250
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 p2, 0x3

    const-string v1, "max_session_count_rare"

    invoke-virtual {p1, v1, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2252
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "max_session_count_per_rate_limiting_window"

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    .line 2255
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v0, 0x1388

    const-string/jumbo p2, "timing_session_coalescing_duration_ms"

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->updateConstants()V

    .line 2260
    return-void
.end method

.method updateConstants()V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2264
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2265
    nop

    .line 2267
    const-wide/32 v1, 0x36ee80

    :try_start_9
    iget-wide v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    .line 2268
    const-wide/32 v5, 0x5265c00

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 2267
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2269
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3b

    .line 2270
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$2502(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2271
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2272
    move v1, v7

    goto :goto_3c

    .line 2269
    :cond_3b
    move v1, v4

    .line 2274
    :goto_3c
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    const-wide/32 v8, 0xea60

    iget-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_MS:J

    .line 2275
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2274
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2276
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-eqz v8, :cond_71

    .line 2277
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$2802(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2278
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2279
    move v1, v7

    .line 2281
    :cond_71
    const-wide/32 v2, 0x493e0

    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    .line 2282
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2281
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2283
    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-eqz v10, :cond_b4

    .line 2284
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$2702(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2285
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    sub-long/2addr v2, v10

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$2902(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2286
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2500(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$2700(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    sub-long/2addr v2, v10

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$2602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2287
    move v1, v7

    .line 2289
    :cond_b4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    .line 2290
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 2289
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2291
    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v10

    aget-wide v10, v10, v4

    cmp-long v10, v10, v2

    if-eqz v10, :cond_d9

    .line 2292
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v1

    aput-wide v2, v1, v4

    .line 2293
    move v1, v7

    .line 2295
    :cond_d9
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    .line 2296
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 2295
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2297
    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v10

    aget-wide v10, v10, v7

    cmp-long v10, v10, v2

    if-eqz v10, :cond_fe

    .line 2298
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v1

    aput-wide v2, v1, v7

    .line 2299
    move v1, v7

    .line 2301
    :cond_fe
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-wide v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    .line 2302
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 2301
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2303
    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v10

    const/4 v11, 0x2

    aget-wide v12, v10, v11

    cmp-long v10, v12, v2

    if-eqz v10, :cond_124

    .line 2304
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v1

    aput-wide v2, v1, v11

    .line 2305
    move v1, v7

    .line 2307
    :cond_124
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v2

    iget-wide v12, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    .line 2308
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 2307
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2309
    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v10

    const/4 v12, 0x3

    aget-wide v13, v10, v12

    cmp-long v10, v13, v2

    if-eqz v10, :cond_14a

    .line 2310
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)[J

    move-result-object v1

    aput-wide v2, v1, v12

    .line 2311
    move v1, v7

    .line 2313
    :cond_14a
    const-wide/16 v2, 0x7530

    iget-wide v13, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    .line 2314
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2313
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2315
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$3100(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_166

    .line 2316
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$3102(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2317
    move v1, v7

    .line 2319
    :cond_166
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v3, 0xa

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2322
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$3200(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v5

    if-eq v5, v2, :cond_17c

    .line 2323
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$3202(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2324
    move v1, v7

    .line 2326
    :cond_17c
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2327
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aget v5, v5, v4

    if-eq v5, v2, :cond_195

    .line 2328
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v4

    .line 2329
    move v1, v7

    .line 2331
    :cond_195
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2332
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aget v5, v5, v7

    if-eq v5, v2, :cond_1ae

    .line 2333
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v7

    .line 2334
    move v1, v7

    .line 2336
    :cond_1ae
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2337
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aget v5, v5, v11

    if-eq v5, v2, :cond_1c7

    .line 2338
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v11

    .line 2339
    move v1, v7

    .line 2341
    :cond_1c7
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2342
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v5

    aget v5, v5, v12

    if-eq v5, v2, :cond_1e0

    .line 2343
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3300(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v12

    .line 2344
    move v1, v7

    .line 2346
    :cond_1e0
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2349
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$3400(Lcom/android/server/job/controllers/QuotaController;)I

    move-result v3

    if-eq v3, v2, :cond_1f4

    .line 2350
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$3402(Lcom/android/server/job/controllers/QuotaController;I)I

    .line 2351
    move v1, v7

    .line 2353
    :cond_1f4
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    .line 2354
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2355
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v3

    aget v3, v3, v4

    if-eq v3, v2, :cond_20d

    .line 2356
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v4

    .line 2357
    move v1, v7

    .line 2359
    :cond_20d
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    .line 2360
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2361
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v3

    aget v3, v3, v7

    if-eq v3, v2, :cond_226

    .line 2362
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v7

    .line 2363
    move v1, v7

    .line 2365
    :cond_226
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    .line 2366
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2367
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v3

    aget v3, v3, v11

    if-eq v3, v2, :cond_23f

    .line 2368
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v11

    .line 2369
    move v1, v7

    .line 2371
    :cond_23f
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    .line 2372
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2373
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v3

    aget v3, v3, v12

    if-eq v3, v2, :cond_258

    .line 2374
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$3500(Lcom/android/server/job/controllers/QuotaController;)[I

    move-result-object v1

    aput v2, v1, v12

    .line 2375
    move v1, v7

    .line 2377
    :cond_258
    const-wide/32 v2, 0xdbba0

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    .line 2378
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2377
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2379
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$3600(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_275

    .line 2380
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$3602(Lcom/android/server/job/controllers/QuotaController;J)J

    .line 2381
    move v1, v7

    .line 2384
    :cond_275
    if-eqz v1, :cond_28b

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$2100(Lcom/android/server/job/controllers/QuotaController;)Z

    move-result v1

    if-eqz v1, :cond_28b

    .line 2386
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;-><init>(Lcom/android/server/job/controllers/QuotaController$QcConstants;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2393
    :cond_28b
    monitor-exit v0

    .line 2394
    return-void

    .line 2393
    :catchall_28d
    move-exception v1

    monitor-exit v0
    :try_end_28f
    .catchall {:try_start_9 .. :try_end_28f} :catchall_28d

    throw v1
.end method
