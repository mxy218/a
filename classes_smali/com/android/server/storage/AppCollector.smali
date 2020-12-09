.class public Lcom/android/server/storage/AppCollector;
.super Ljava/lang/Object;
.source "AppCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/AppCollector$BackgroundHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

.field private mStats:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-string v0, "AppCollector"

    sput-object v0, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .registers 11

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v7, Lcom/android/server/storage/AppCollector$BackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 67
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/UserManager;

    .line 68
    const-string/jumbo v0, "storagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/storage/AppCollector$BackgroundHandler;-><init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/usage/StorageStatsManager;)V

    iput-object v7, p0, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    .line 69
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/storage/AppCollector;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method


# virtual methods
.method public getPackageStats(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_12

    .line 81
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    .line 82
    iget-object v0, p0, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppCollector$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 84
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_33

    .line 86
    const/4 v0, 0x0

    .line 88
    :try_start_14
    iget-object v1, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1e} :catch_28
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_1e} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_1e} :catch_1f

    .line 93
    goto :goto_32

    .line 91
    :catch_1f
    move-exception p1

    .line 92
    sget-object p1, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    const-string p2, "AppCollector timed out"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 89
    :catch_28
    move-exception p1

    .line 90
    sget-object p2, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    const-string v1, "An exception occurred while getting app storage"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    nop

    .line 94
    :goto_31
    move-object p1, v0

    :goto_32
    return-object p1

    .line 84
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method
