.class public final Lcom/android/server/timedetector/TimeDetectorService;
.super Landroid/app/timedetector/ITimeDetectorService$Stub;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timedetector.TimeDetectorService"


# instance fields
.field private final mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mStrategyLock:Ljava/lang/Object;

.field private final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStrategyLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 95
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/timedetector/TimeDetectorStrategy;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 96
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/android/server/timedetector/TimeDetectorService;->create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;

    move-result-object p0

    return-object p0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .registers 5

    .line 69
    new-instance v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;

    invoke-direct {v0}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;-><init>()V

    .line 70
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-interface {v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V

    .line 74
    new-instance v2, Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 79
    nop

    .line 80
    const-string v0, "auto_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$1;

    .line 81
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/server/timedetector/TimeDetectorService$1;-><init>(Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorService;)V

    .line 79
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    return-object v2
.end method

.method private enforceSetTimePermission()V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "set time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 124
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "timedetector.TimeDetectorService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 126
    :cond_c
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter p1

    .line 127
    :try_start_f
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 128
    monitor-exit p1

    .line 129
    return-void

    .line 128
    :catchall_16
    move-exception p2

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p2
.end method

.method public handleAutoTimeDetectionToggle()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isTimeDetectionEnabled()Z

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->handleAutoTimeDetectionToggle(Z)V

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public suggestTime(Landroid/app/timedetector/TimeSignal;)V
    .registers 6

    .line 100
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSetTimePermission()V

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    :try_start_a
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    .line 106
    :try_start_d
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v3, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestTime(Landroid/app/timedetector/TimeSignal;)V

    .line 107
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_18

    .line 109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    nop

    .line 111
    return-void

    .line 107
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    .line 109
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
