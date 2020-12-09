.class Lcom/android/server/wm/HighRefreshRateBlacklist;
.super Ljava/lang/Object;
.source "HighRefreshRateBlacklist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertyChangedListener;,
        Lcom/android/server/wm/HighRefreshRateBlacklist$DeviceConfigInterface;
    }
.end annotation


# instance fields
.field private final mBlacklistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/android/server/wm/HighRefreshRateBlacklist$DeviceConfigInterface;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    .line 60
    const v0, 0x107004a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDefaultBlacklist:[Ljava/lang/String;

    .line 61
    nop

    .line 62
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertyChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertyChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateBlacklist;Lcom/android/server/wm/HighRefreshRateBlacklist$1;)V

    .line 61
    const-string v1, "display_manager"

    invoke-interface {p2, v1, p1, v0}, Lcom/android/server/wm/HighRefreshRateBlacklist$DeviceConfigInterface;->addOnPropertyChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertyChangedListener;)V

    .line 63
    const-string p1, "high_refresh_rate_blacklist"

    invoke-interface {p2, v1, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist$DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist;->updateBlacklist(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/HighRefreshRateBlacklist;Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist;->updateBlacklist(Ljava/lang/String;)V

    return-void
.end method

.method static create(Landroid/content/res/Resources;)Lcom/android/server/wm/HighRefreshRateBlacklist;
    .registers 3

    .line 45
    new-instance v0, Lcom/android/server/wm/HighRefreshRateBlacklist;

    new-instance v1, Lcom/android/server/wm/HighRefreshRateBlacklist$1;

    invoke-direct {v1}, Lcom/android/server/wm/HighRefreshRateBlacklist$1;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/HighRefreshRateBlacklist;-><init>(Landroid/content/res/Resources;Lcom/android/server/wm/HighRefreshRateBlacklist$DeviceConfigInterface;)V

    return-object v0
.end method

.method private updateBlacklist(Ljava/lang/String;)V
    .registers 7

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 71
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 72
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 73
    array-length v2, p1

    :goto_12
    if-ge v1, v2, :cond_28

    aget-object v3, p1, v1

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 76
    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 79
    :cond_28
    goto :goto_38

    .line 82
    :cond_29
    iget-object p1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDefaultBlacklist:[Ljava/lang/String;

    array-length v2, p1

    :goto_2c
    if-ge v1, v2, :cond_38

    aget-object v3, p1, v1

    .line 83
    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 86
    :cond_38
    :goto_38
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 95
    const-string v0, "High Refresh Rate Blacklist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v0, "  Packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    goto :goto_13

    .line 101
    :cond_34
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_36

    throw p1
.end method

.method isBlacklisted(Ljava/lang/String;)Z
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 92
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method
