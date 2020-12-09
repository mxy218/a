.class final Lcom/android/server/appop/AppOpsService$Constants;
.super Landroid/database/ContentObserver;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Constants"
.end annotation


# static fields
.field private static final KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field private static final KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field private static final KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"


# instance fields
.field public BG_STATE_SETTLE_TIME:J

.field public FG_SERVICE_STATE_SETTLE_TIME:J

.field public TOP_STATE_SETTLE_TIME:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V
    .registers 3

    .line 266
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 267
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 263
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 268
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    .line 269
    return-void
.end method

.method private updateConstants()V
    .registers 6

    .line 285
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_b

    const-string v1, "app_ops_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 286
    :cond_b
    const-string v0, ""

    .line 288
    :goto_d
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Constants;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    .line 290
    :try_start_10
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_15} :catch_18
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    .line 295
    goto :goto_20

    .line 302
    :catchall_16
    move-exception v0

    goto :goto_47

    .line 291
    :catch_18
    move-exception v0

    .line 294
    :try_start_19
    const-string v2, "AppOps"

    const-string v3, "Bad app ops settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :goto_20
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "top_state_settle_time"

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .line 298
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "fg_service_state_settle_time"

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .line 300
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "bg_state_settle_time"

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 302
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_19 .. :try_end_48} :catchall_16

    throw v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 306
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "top_state_settle_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 310
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 311
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fg_service_state_settle_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 313
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bg_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 316
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 317
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 281
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    .line 282
    return-void
.end method

.method public startMonitoring(Landroid/content/ContentResolver;)V
    .registers 4

    .line 272
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 273
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 274
    const-string v0, "app_ops_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService$Constants;->updateConstants()V

    .line 277
    return-void
.end method
