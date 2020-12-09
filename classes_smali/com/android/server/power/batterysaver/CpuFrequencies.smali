.class public Lcom/android/server/power/batterysaver/CpuFrequencies;
.super Ljava/lang/Object;
.source "CpuFrequencies.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CpuFrequencies"


# instance fields
.field private final mCoreAndFrequencies:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    .line 47
    return-void
.end method


# virtual methods
.method public addToSysFileMap(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 94
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_48

    .line 95
    iget-object v3, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 96
    iget-object v4, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cpufreq/scaling_max_freq"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 103
    :cond_48
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;
    .registers 11

    .line 53
    iget-object v0, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6e

    .line 56
    :try_start_8
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_4f

    aget-object v5, v1, v4

    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_20

    .line 59
    goto :goto_44

    .line 61
    :cond_20
    const-string v6, ":"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 63
    array-length v6, v5

    if-ne v6, v7, :cond_47

    .line 66
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 67
    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 69
    iget-object v5, p0, Lcom/android/server/power/batterysaver/CpuFrequencies;->mCoreAndFrequencies:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 64
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_4f} :catch_50
    .catchall {:try_start_8 .. :try_end_4f} :catchall_6e

    .line 73
    :cond_4f
    goto :goto_6c

    .line 71
    :catch_50
    move-exception v1

    .line 72
    :try_start_51
    const-string v1, "CpuFrequencies"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid configuration: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_6c
    monitor-exit v0

    .line 75
    return-object p0

    .line 74
    :catchall_6e
    move-exception p1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public toSysFileMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->addToSysFileMap(Ljava/util/Map;)V

    .line 84
    return-object v0
.end method
