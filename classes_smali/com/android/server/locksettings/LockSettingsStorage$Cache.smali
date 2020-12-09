.class Lcom/android/server/locksettings/LockSettingsStorage$Cache;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

.field private mVersion:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 815
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V
    .registers 2

    .line 813
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I
    .registers 1

    .line 813
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->getVersion()I

    move-result p0

    return p0
.end method

.method private declared-synchronized contains(ILjava/lang/String;I)Z
    .registers 6

    monitor-enter p0

    .line 874
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private copyOf([B)[B
    .registers 3

    .line 897
    if-eqz p1, :cond_8

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return-object p1
.end method

.method private declared-synchronized getVersion()I
    .registers 2

    monitor-enter p0

    .line 882
    :try_start_1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized peek(ILjava/lang/String;I)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    .line 878
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized put(ILjava/lang/String;Ljava/lang/Object;I)V
    .registers 8

    monitor-enter p0

    .line 862
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 864
    monitor-exit p0

    return-void

    .line 861
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V
    .registers 7

    monitor-enter p0

    .line 868
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    if-ne v0, p5, :cond_e

    .line 869
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 871
    :cond_e
    monitor-exit p0

    return-void

    .line 867
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 911
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 912
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 913
    monitor-exit p0

    return-void

    .line 910
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method hasFile(Ljava/lang/String;)Z
    .registers 4

    .line 840
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method hasKeyValue(Ljava/lang/String;I)Z
    .registers 4

    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method isFetched(I)Z
    .registers 4

    .line 856
    const/4 v0, 0x2

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method peekFile(Ljava/lang/String;)[B
    .registers 4

    .line 836
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->copyOf([B)[B

    move-result-object p1

    return-object p1
.end method

.method peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 819
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 820
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage;->access$500()Ljava/lang/Object;

    move-result-object p3

    if-ne p1, p3, :cond_c

    goto :goto_f

    :cond_c
    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :goto_f
    return-object p2
.end method

.method declared-synchronized purgePath(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 901
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_27

    .line 902
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 903
    iget v3, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    if-ne v3, v1, :cond_24

    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 904
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 901
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 907
    :cond_27
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 908
    monitor-exit p0

    return-void

    .line 900
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method putFile(Ljava/lang/String;[B)V
    .registers 5

    .line 844
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->copyOf([B)[B

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 845
    return-void
.end method

.method putFileIfUnchanged(Ljava/lang/String;[BI)V
    .registers 10

    .line 848
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->copyOf([B)[B

    move-result-object v3

    const/4 v1, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 849
    return-void
.end method

.method putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 829
    return-void
.end method

.method putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 11

    .line 832
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 833
    return-void
.end method

.method declared-synchronized removeUser(I)V
    .registers 4

    monitor-enter p0

    .line 886
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1f

    .line 887
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    iget v1, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    if-ne v1, p1, :cond_1c

    .line 888
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 886
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 893
    :cond_1f
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 894
    monitor-exit p0

    return-void

    .line 885
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setFetched(I)V
    .registers 5

    .line 852
    const/4 v0, 0x2

    const-string v1, "isFetched"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 853
    return-void
.end method
