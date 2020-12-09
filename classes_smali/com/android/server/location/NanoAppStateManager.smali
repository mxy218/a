.class Lcom/android/server/location/NanoAppStateManager;
.super Ljava/lang/Object;
.source "NanoAppStateManager.java"


# static fields
.field private static final ENABLE_LOG_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NanoAppStateManager"


# instance fields
.field private final mNanoAppHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextHandle:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNextHandle:I

    return-void
.end method

.method private handleQueryAppEntry(IJI)V
    .registers 15

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v6

    .line 181
    const/4 v0, -0x1

    if-ne v6, v0, :cond_b

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/NanoAppStateManager;->addNanoAppInstance(IJI)V

    goto :goto_66

    .line 184
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 185
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    move-result v0

    if-eq v0, p4, :cond_66

    .line 186
    iget-object v7, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroid/hardware/location/NanoAppInstanceInfo;

    move-object v0, v9

    move v1, v6

    move-wide v2, p2

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(IJII)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated app instance with handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at hub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": ID=0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", version=0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    const-string p2, "NanoAppStateManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_66
    :goto_66
    return-void
.end method


# virtual methods
.method declared-synchronized addNanoAppInstance(IJI)V
    .registers 18

    move-object v1, p0

    monitor-enter p0

    .line 112
    :try_start_2
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/location/NanoAppStateManager;->removeNanoAppInstance(IJ)V

    .line 113
    iget-object v0, v1, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_19

    .line 114
    const-string v0, "NanoAppStateManager"

    const-string v2, "Error adding nanoapp instance: max limit exceeded"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_8a

    .line 115
    monitor-exit p0

    return-void

    .line 118
    :cond_19
    :try_start_19
    iget v0, v1, Lcom/android/server/location/NanoAppStateManager;->mNextHandle:I

    .line 119
    const/4 v3, 0x0

    move v10, v0

    move v0, v3

    :goto_1e
    if-gt v0, v2, :cond_51

    .line 120
    iget-object v4, v1, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 121
    iget-object v0, v1, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Landroid/hardware/location/NanoAppInstanceInfo;

    move-object v4, v12

    move v5, v10

    move-wide v6, p2

    move/from16 v8, p4

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(IJII)V

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    if-ne v10, v2, :cond_43

    goto :goto_45

    :cond_43
    add-int/lit8 v3, v10, 0x1

    :goto_45
    iput v3, v1, Lcom/android/server/location/NanoAppStateManager;->mNextHandle:I

    .line 124
    goto :goto_51

    .line 126
    :cond_48
    if-ne v10, v2, :cond_4c

    move v10, v3

    goto :goto_4e

    :cond_4c
    add-int/lit8 v10, v10, 0x1

    .line 119
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 130
    :cond_51
    :goto_51
    const-string v0, "NanoAppStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added app instance with handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to hub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": ID=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_19 .. :try_end_88} :catchall_8a

    .line 134
    monitor-exit p0

    return-void

    .line 111
    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 80
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    .line 81
    goto :goto_b

    .line 82
    :cond_1b
    monitor-exit p0

    return-void

    .line 78
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getNanoAppHandle(IJ)I
    .registers 8

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 92
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v2

    if-ne v2, p1, :cond_2b

    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_2b

    .line 93
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    monitor-exit p0

    return p1

    .line 95
    :cond_2b
    goto :goto_b

    .line 97
    :cond_2c
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 90
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 3

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeNanoAppInstance(IJ)V
    .registers 4

    monitor-enter p0

    .line 143
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result p1

    .line 144
    iget-object p2, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 145
    monitor-exit p0

    return-void

    .line 142
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateCache(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 157
    iget-wide v2, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget v4, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/location/NanoAppStateManager;->handleQueryAppEntry(IJI)V

    .line 158
    iget-wide v1, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_a

    .line 161
    :cond_27
    iget-object p2, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 162
    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 163
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 164
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v2

    if-ne v2, p1, :cond_54

    .line 165
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 166
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_57

    .line 168
    :cond_54
    goto :goto_31

    .line 169
    :cond_55
    monitor-exit p0

    return-void

    .line 154
    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method
