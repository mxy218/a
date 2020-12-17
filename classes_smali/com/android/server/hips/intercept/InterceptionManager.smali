.class public Lcom/android/server/hips/intercept/InterceptionManager;
.super Ljava/lang/Object;
.source "InterceptionManager.java"


# static fields
.field public static DEBUG_DETAIL_ENABLE:Z = false

.field public static DEBUG_INTERCEPTION:Z = false

.field public static DEBUG_INTERCEPT_RULES:Z = false

.field public static INTERCEPT_ENABLE:Z = false

.field public static INTERCEPT_MONKEY:Z = false

.field private static final TAG:Ljava/lang/String; = "InterceptionManager"

.field public static V4_ENABLE:Z

.field private static sInstance:Lcom/android/server/hips/intercept/InterceptionManager;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/intercept/InterceptionManager;->sInstance:Lcom/android/server/hips/intercept/InterceptionManager;

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    .line 18
    sput-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    .line 19
    sput-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPTION:Z

    .line 20
    sput-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_ENABLE:Z

    .line 22
    sput-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_MONKEY:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/InterceptionManager;
    .registers 2

    .line 29
    const-class v0, Lcom/android/server/hips/intercept/InterceptionManager;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lcom/android/server/hips/intercept/InterceptionManager;->sInstance:Lcom/android/server/hips/intercept/InterceptionManager;

    if-nez v1, :cond_e

    .line 31
    new-instance v1, Lcom/android/server/hips/intercept/InterceptionManager;

    invoke-direct {v1}, Lcom/android/server/hips/intercept/InterceptionManager;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/InterceptionManager;->sInstance:Lcom/android/server/hips/intercept/InterceptionManager;

    .line 33
    :cond_e
    sget-object v1, Lcom/android/server/hips/intercept/InterceptionManager;->sInstance:Lcom/android/server/hips/intercept/InterceptionManager;

    monitor-exit v0

    return-object v1

    .line 34
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 84
    const-string v0, "InterceptionManager"

    const-string v1, "dump"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 86
    :try_start_a
    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getInstance()Lcom/android/server/hips/intercept/LinkWakenInterception;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/hips/intercept/LinkWakenInterception;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 87
    monitor-exit v0

    return-void

    .line 90
    :cond_16
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/InterceptionStats;

    .line 91
    .local v2, "l":Lcom/android/server/hips/intercept/InterceptionStats;
    iget v3, v2, Lcom/android/server/hips/intercept/InterceptionStats;->mType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_49

    const/4 v4, 0x2

    if-eq v3, v4, :cond_43

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x4

    if-eq v3, v4, :cond_37

    goto :goto_4f

    .line 102
    :cond_37
    const-string v3, "PROVIDER:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4f

    .line 99
    :cond_3d
    const-string v3, "BROADCAST:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    goto :goto_4f

    .line 96
    :cond_43
    const-string v3, "SERVICE:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    goto :goto_4f

    .line 93
    :cond_49
    const-string v3, "ACTIVITY:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    nop

    .line 105
    :goto_4f
    invoke-virtual {v2, p1, p2}, Lcom/android/server/hips/intercept/InterceptionStats;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 106
    .end local v2  # "l":Lcom/android/server/hips/intercept/InterceptionStats;
    goto :goto_1c

    .line 107
    :cond_53
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_a .. :try_end_57} :catchall_55

    throw v1
.end method

.method public getDebugDetailsEnable()Z
    .registers 2

    .line 64
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    return v0
.end method

.method public getDebugInterceptRules()Z
    .registers 2

    .line 72
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    return v0
.end method

.method public getInterceptV4Enable()Z
    .registers 2

    .line 80
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    return v0
.end method

.method public getInterceptVersion()I
    .registers 2

    .line 56
    const/4 v0, 0x4

    return v0
.end method

.method public registerCollectionListener(Lcom/android/server/hips/intercept/InterceptionStats;)V
    .registers 4
    .param p1, "listener"  # Lcom/android/server/hips/intercept/InterceptionStats;

    .line 38
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 39
    if-eqz p1, :cond_a

    .line 40
    :try_start_5
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_a
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setDebugDetailsEnable(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 60
    sput-boolean p1, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    .line 61
    return-void
.end method

.method public setDebugInterceptRules(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 68
    sput-boolean p1, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    .line 69
    return-void
.end method

.method public setInterceptV4Enable(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 76
    sput-boolean p1, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    .line 77
    return-void
.end method

.method public unregisterCollectionListener(Lcom/android/server/hips/intercept/InterceptionStats;)V
    .registers 6
    .param p1, "listener"  # Lcom/android/server/hips/intercept/InterceptionStats;

    .line 46
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 47
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/InterceptionStats;

    .line 48
    .local v2, "l":Lcom/android/server/hips/intercept/InterceptionStats;
    if-ne p1, v2, :cond_1c

    .line 49
    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    .end local v2  # "l":Lcom/android/server/hips/intercept/InterceptionStats;
    :cond_1c
    goto :goto_9

    .line 52
    :cond_1d
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method
