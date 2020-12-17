.class public Lcom/android/server/security/NameListManager;
.super Ljava/lang/Object;
.source "NameListManager.java"


# static fields
.field private static final ALL:I = 0x3

.field private static final FILE_PATH:Ljava/lang/String; = "/data/misc/trp"

.field private static final TRP_NAME_LIST:Ljava/lang/String; = "trp_name_list"

.field private static isInit:Z

.field private static final nameList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private listStateLast:I

.field private mPC:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private afterHandle()V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/security/NameListManager;->mPC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1e

    .line 132
    iget-object v0, p0, Lcom/android/server/security/NameListManager;->listState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    .line 133
    .local v0, "curState":I
    iget v1, p0, Lcom/android/server/security/NameListManager;->listStateLast:I

    if-le v0, v1, :cond_1e

    .line 134
    iput v0, p0, Lcom/android/server/security/NameListManager;->listStateLast:I

    .line 135
    sget-object v1, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "/data/misc/trp"

    const-string/jumbo v3, "trp_name_list"

    invoke-static {v2, v3, v1}, Lcom/android/server/security/TrpUtils;->save2File(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 138
    .end local v0  # "curState":I
    :cond_1e
    return-void
.end method

.method private beforeHandle()V
    .registers 3

    .line 125
    sget-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    if-eqz v0, :cond_a

    .line 126
    iget-object v0, p0, Lcom/android/server/security/NameListManager;->mPC:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 128
    :cond_a
    return-void
.end method

.method private onChange()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/server/security/NameListManager;->listState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 142
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "mode"  # I

    .line 58
    sget-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    if-nez v0, :cond_5

    .line 59
    return-void

    .line 61
    :cond_5
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->beforeHandle()V

    .line 62
    monitor-enter p0

    .line 63
    :try_start_9
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 64
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    .local v0, "state":I
    or-int v1, v0, p2

    .line 66
    .local v1, "newState":I
    if-eq v1, v0, :cond_2d

    .line 67
    sget-object v2, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->onChange()V

    .line 70
    .end local v0  # "state":I
    .end local v1  # "newState":I
    :cond_2d
    goto :goto_3a

    .line 71
    :cond_2e
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->onChange()V

    .line 74
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->afterHandle()V

    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 75
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public init()V
    .registers 4

    .line 23
    sget-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    if-eqz v0, :cond_5

    .line 24
    return-void

    .line 27
    :cond_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/NameListManager;->mPC:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/NameListManager;->listState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    iput v1, p0, Lcom/android/server/security/NameListManager;->listStateLast:I

    .line 32
    const-string v0, "NameList init"

    invoke-static {v0}, Lmeizu/security/TrpLog;->i(Ljava/lang/String;)V

    .line 33
    const-string v0, "/data/misc/trp"

    const-string/jumbo v1, "trp_name_list"

    invoke-static {v0, v1}, Lcom/android/server/security/TrpUtils;->read4File(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_33

    instance-of v1, v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_33

    .line 35
    sget-object v1, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_38

    .line 37
    :cond_33
    const-string v1, "NameList is NULL"

    invoke-static {v1}, Lmeizu/security/TrpLog;->i(Ljava/lang/String;)V

    .line 39
    :goto_38
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/security/NameListManager;->isInit:Z

    .line 40
    return-void
.end method

.method public isMonitor(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "mode"  # I

    .line 101
    sget-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 102
    return v1

    .line 104
    :cond_6
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    .line 105
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "state":I
    and-int v4, v0, p2

    if-lez v4, :cond_26

    .line 107
    if-ne p2, v2, :cond_23

    .line 108
    return v3

    .line 110
    :cond_23
    if-ne p2, v3, :cond_26

    .line 111
    return v1

    .line 115
    .end local v0  # "state":I
    :cond_26
    if-ne p2, v2, :cond_29

    .line 116
    return v1

    .line 118
    :cond_29
    if-ne p2, v3, :cond_2c

    .line 119
    return v3

    .line 121
    :cond_2c
    return v1
.end method

.method public release()V
    .registers 2

    .line 43
    const-string v0, "NameList release start"

    invoke-static {v0}, Lmeizu/security/TrpLog;->i(Ljava/lang/String;)V

    .line 44
    sget-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    if-nez v0, :cond_a

    .line 45
    return-void

    .line 47
    :cond_a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    .line 49
    monitor-enter p0

    .line 50
    :try_start_e
    iget-object v0, p0, Lcom/android/server/security/NameListManager;->mPC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_20

    .line 51
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 52
    const-string v0, "NameList release over"

    invoke-static {v0}, Lmeizu/security/TrpLog;->i(Ljava/lang/String;)V

    .line 54
    :cond_20
    monitor-exit p0

    .line 55
    return-void

    .line 54
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v0
.end method

.method public remove(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "mode"  # I

    .line 79
    sget-boolean v0, Lcom/android/server/security/NameListManager;->isInit:Z

    if-nez v0, :cond_5

    .line 80
    return-void

    .line 82
    :cond_5
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->beforeHandle()V

    .line 83
    monitor-enter p0

    .line 84
    :try_start_9
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 85
    sget-object v0, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    xor-int v1, v0, p2

    goto :goto_25

    :cond_23
    sub-int v1, v0, p2

    .line 87
    .local v1, "newState":I
    :goto_25
    if-lez v1, :cond_33

    .line 88
    sget-object v2, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->onChange()V

    .line 91
    :cond_33
    if-nez v1, :cond_3d

    .line 92
    sget-object v2, Lcom/android/server/security/NameListManager;->nameList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->onChange()V

    .line 96
    .end local v0  # "state":I
    .end local v1  # "newState":I
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/security/NameListManager;->afterHandle()V

    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 97
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_42

    throw v0
.end method
