.class public Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BinderCallsStatsService$LifeCycle;,
        Lcom/android/server/BinderCallsStatsService$Internal;,
        Lcom/android/server/BinderCallsStatsService$SettingsObserver;,
        Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
    }
.end annotation


# static fields
.field private static final PERSIST_SYS_BINDER_CALLS_DETAILED_TRACKING:Ljava/lang/String; = "persist.sys.binder_calls_detailed_tracking"

.field private static final SERVICE_NAME:Ljava/lang/String; = "binder_calls_stats"

.field private static final TAG:Ljava/lang/String; = "BinderCallsStatsService"


# instance fields
.field private final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

.field private final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .registers 3

    .line 283
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 285
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 286
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 299
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "binder_calls_stats"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 301
    return-void

    .line 304
    :cond_d
    nop

    .line 305
    const/4 p1, 0x0

    if-eqz p3, :cond_e8

    .line 306
    array-length v0, p3

    move v1, p1

    move v2, v1

    :goto_14
    if-ge v1, v0, :cond_e7

    aget-object v3, p3, v1

    .line 307
    const-string v4, "-a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_24

    .line 308
    move v2, v5

    goto/16 :goto_e3

    .line 309
    :cond_24
    const-string v4, "--reset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 310
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService;->reset()V

    .line 311
    const-string p1, "binder_calls_stats reset."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    return-void

    .line 313
    :cond_35
    const-string v4, "--enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 314
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {p1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 315
    return-void

    .line 316
    :cond_43
    const-string v4, "--disable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 317
    const/4 p1, 0x0

    invoke-static {p1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 318
    return-void

    .line 319
    :cond_50
    const-string v4, "--no-sampling"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 320
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p1, v5}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 321
    return-void

    .line 322
    :cond_5e
    const-string v4, "--enable-detailed-tracking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v6, "persist.sys.binder_calls_detailed_tracking"

    if-eqz v4, :cond_79

    .line 323
    const-string p1, "1"

    invoke-static {v6, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p1, v5}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 325
    const-string p1, "Detailed tracking enabled"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    return-void

    .line 327
    :cond_79
    const-string v4, "--disable-detailed-tracking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 328
    const-string p3, ""

    invoke-static {v6, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object p3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p3, p1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 330
    const-string p1, "Detailed tracking disabled"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    return-void

    .line 332
    :cond_91
    const-string v4, "--dump-worksource-provider"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 333
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    .line 334
    return-void

    .line 335
    :cond_a3
    const-string v4, "-h"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 336
    const-string p1, "binder_calls_stats commands:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string p1, "  --reset: Reset stats"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const-string p1, "  --enable: Enable tracking binder calls"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string p1, "  --disable: Disables tracking binder calls"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string p1, "  --no-sampling: Tracks all calls"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const-string p1, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    const-string p1, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    return-void

    .line 345
    :cond_cf
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    :goto_e3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    :cond_e7
    move p1, v2

    .line 349
    :cond_e8
    iget-object p3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v0

    invoke-virtual {p3, p2, v0, p1}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;Z)V

    .line 350
    return-void
.end method

.method public reset()V
    .registers 3

    .line 293
    const-string v0, "BinderCallsStatsService"

    const-string v1, "Resetting stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 295
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 5

    .line 289
    new-instance v0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    .line 290
    return-void
.end method
