.class public Lcom/android/server/hips/intercept/AutoRunInterception;
.super Lcom/android/server/hips/intercept/Interception;
.source "AutoRunInterception.java"


# static fields
.field private static final AUTO_RUN_VERSION:I = 0x1

.field private static final CURRENT_LIST_NAME:Ljava/lang/String; = "current_auto_run_white_list"

.field private static final LIST_NAME:Ljava/lang/String; = "auto_run_white_list"

.field private static final STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field private static mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

.field private static mAutoRunTimeStamp:J

.field private static mAutoRunWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mWhiteActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteList:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    .line 35
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string v1, "com.insdio.aqicn.airwidget.intent.action.CLICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "/data/system/auto_run_white_list"

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_62

    .line 47
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/AutoRunInterception;->setAutoRunWhiteList(Ljava/util/ArrayList;Z)I

    .line 49
    .end local v0  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_62
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/server/hips/intercept/Interception;-><init>()V

    .line 52
    return-void
.end method

.method public static getAutoRunVersion()I
    .registers 1

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public static getAutoRunWhiteListTimeStamp()J
    .registers 2

    .line 67
    sget-wide v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunTimeStamp:J

    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/AutoRunInterception;
    .registers 2

    .line 55
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    if-nez v0, :cond_17

    .line 56
    const-class v0, Lcom/android/server/hips/intercept/AutoRunInterception;

    monitor-enter v0

    .line 57
    :try_start_7
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    if-nez v1, :cond_12

    .line 58
    new-instance v1, Lcom/android/server/hips/intercept/AutoRunInterception;

    invoke-direct {v1}, Lcom/android/server/hips/intercept/AutoRunInterception;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    .line 60
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 63
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    return-object v0
.end method

.method public static isAutoRunSwitchOn(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 258
    const-string/jumbo v0, "isAutoRunSwitchOn, E2:"

    const-string v1, "Interception"

    const/4 v2, 0x0

    .line 260
    .local v2, "contains":Z
    :try_start_6
    sget-object v3, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 262
    sget-object v3, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_3a
    .catchall {:try_start_6 .. :try_end_15} :catchall_38

    move v2, v3

    .line 267
    :try_start_16
    sget-object v3, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    .line 271
    :goto_1f
    goto :goto_65

    .line 268
    :catch_20
    move-exception v3

    .line 269
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v3  # "e2":Ljava/lang/Exception;
    goto :goto_65

    .line 266
    :catchall_38
    move-exception v3

    goto :goto_66

    .line 263
    :catch_3a
    move-exception v3

    .line 264
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAutoRunSwitchOn, E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_38

    .line 267
    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_54
    sget-object v3, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_1f

    .line 268
    :catch_5e
    move-exception v3

    .line 269
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_26

    .line 273
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_65
    return v2

    .line 267
    :goto_66
    :try_start_66
    sget-object v4, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70

    .line 271
    goto :goto_87

    .line 268
    :catch_70
    move-exception v4

    .line 269
    .local v4, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v4  # "e2":Ljava/lang/Exception;
    :goto_87
    throw v3
.end method

.method public static setAutoRunWhiteList(Ljava/util/ArrayList;Z)I
    .registers 12
    .param p1, "fromStorage"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 76
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Interception"

    if-eqz p0, :cond_b8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_b8

    .line 81
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v1, "usefulWhiteListSb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v2, "currentWhiteListSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 84
    .local v3, "usefulCount":I
    const/4 v4, 0x0

    .line 85
    .local v4, "currentCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 88
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_54

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_36

    goto :goto_54

    .line 93
    :cond_36
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "###"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 96
    invoke-static {v7}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_47

    .line 97
    goto :goto_21

    .line 100
    :cond_47
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    nop

    .end local v7  # "pkgName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 104
    goto :goto_21

    .line 89
    .restart local v7  # "pkgName":Ljava/lang/String;
    :cond_54
    :goto_54
    const-string/jumbo v8, "setAutoRunWhiteList, the pkgName is null or empty, continue."

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_21

    .line 106
    .end local v7  # "pkgName":Ljava/lang/String;
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoRunInterception temp list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v5}, Lcom/android/server/hips/intercept/AutoRunInterception;->updateAutoRunWhiteListInner(Ljava/util/ArrayList;)V

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoRunWhiteList, set list successfully, currentCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " usefulCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "usefulWhiteList":Ljava/lang/String;
    if-nez p1, :cond_a6

    if-eqz v0, :cond_a6

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a6

    .line 115
    const-string v6, "/data/system/auto_run_white_list"

    invoke-static {v0, v6}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_a6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "currentWhiteList":Ljava/lang/String;
    if-eqz v6, :cond_b7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b7

    .line 121
    const-string v7, "/data/system/current_auto_run_white_list"

    invoke-static {v6, v7}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_b7
    return v3

    .line 77
    .end local v0  # "usefulWhiteList":Ljava/lang/String;
    .end local v1  # "usefulWhiteListSb":Ljava/lang/StringBuilder;
    .end local v2  # "currentWhiteListSb":Ljava/lang/StringBuilder;
    .end local v3  # "usefulCount":I
    .end local v4  # "currentCount":I
    .end local v5  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6  # "currentWhiteList":Ljava/lang/String;
    :cond_b8
    :goto_b8
    const-string/jumbo v1, "setAutoRunWhiteList, the list is null or empty, return -1."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, -0x1

    return v0
.end method

.method public static setAutoRunWhiteListTimeStamp(J)V
    .registers 2
    .param p0, "timeStamp"  # J

    .line 71
    sput-wide p0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunTimeStamp:J

    .line 72
    return-void
.end method

.method public static updateAutoRunWhiteList(Ljava/lang/String;Z)V
    .registers 7
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "isReadAllList"  # Z

    .line 153
    const-string v0, "Interception"

    if-eqz p0, :cond_53

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_53

    .line 158
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v1, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_15

    .line 161
    const-string v2, "/data/system/auto_run_white_list"

    .local v2, "ruleFilePath":Ljava/lang/String;
    goto :goto_17

    .line 163
    .end local v2  # "ruleFilePath":Ljava/lang/String;
    :cond_15
    const-string v2, "/data/system/current_auto_run_white_list"

    .line 165
    .restart local v2  # "ruleFilePath":Ljava/lang/String;
    :goto_17
    invoke-static {v2}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_4c

    .line 171
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoRunWhiteList, begin to update the auto run white list, pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isReadAllList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 174
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/android/server/hips/intercept/AutoRunInterception;->setAutoRunWhiteList(Ljava/util/ArrayList;Z)I

    .line 176
    :cond_4b
    return-void

    .line 167
    :cond_4c
    :goto_4c
    const-string/jumbo v3, "updateAutoRunWhiteList, the whiteList is null or empty, return."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 154
    .end local v1  # "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2  # "ruleFilePath":Ljava/lang/String;
    :cond_53
    :goto_53
    const-string/jumbo v1, "updateAutoRunWhiteList, the pkgName is null or empty, return."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private static updateAutoRunWhiteListInner(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "updateAutoRunWhiteListInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 132
    if-nez p0, :cond_16

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v2

    .line 135
    :cond_16
    sput-object p0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteList:Ljava/util/ArrayList;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_3c
    .catchall {:try_start_5 .. :try_end_18} :catchall_3a

    .line 140
    :try_start_18
    sget-object v2, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22

    .line 143
    :goto_21
    goto :goto_67

    .line 141
    :catch_22
    move-exception v2

    .line 142
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_67

    .line 139
    :catchall_3a
    move-exception v2

    goto :goto_68

    .line 136
    :catch_3c
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoRunWhiteListInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_3a

    .line 140
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_56
    sget-object v2, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_21

    .line 141
    :catch_60
    move-exception v2

    .line 142
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_28

    .line 145
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_67
    return-void

    .line 140
    :goto_68
    :try_start_68
    sget-object v3, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteListRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_72

    .line 143
    goto :goto_89

    .line 141
    :catch_72
    move-exception v3

    .line 142
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_89
    throw v2
.end method


# virtual methods
.method public isInterceptAsUsual(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;IZZ)Z
    .registers 33
    .param p1, "isFgAction"  # Z
    .param p2, "callerPkg"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeUid"  # I
    .param p5, "intent"  # Landroid/content/Intent;
    .param p6, "processName"  # Ljava/lang/String;
    .param p7, "runType"  # I
    .param p8, "delayed"  # Z
    .param p9, "isProviderRunning"  # Z

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    const-string v1, ""

    .line 182
    .local v1, "calleeClass":Ljava/lang/String;
    if-eqz v15, :cond_1b

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 183
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_1d

    .line 185
    :cond_1b
    move-object/from16 v16, v1

    .end local v1  # "calleeClass":Ljava/lang/String;
    .local v16, "calleeClass":Ljava/lang/String;
    :goto_1d
    const/4 v1, 0x1

    .line 186
    .local v1, "startProc":Z
    if-eqz p9, :cond_24

    .line 187
    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_27

    .line 189
    :cond_24
    const/4 v1, 0x1

    move/from16 v17, v1

    .line 192
    .end local v1  # "startProc":Z
    .local v17, "startProc":Z
    :goto_27
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v1

    const-string v2, ""

    const/4 v13, 0x0

    invoke-virtual {v1, v2, v2, v2, v13}, Lcom/android/server/hips/security/SecurityMargin;->isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    const/16 v18, 0x1

    if-eqz v1, :cond_6d

    .line 194
    const/4 v1, 0x1

    const/16 v9, 0xc

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 195
    new-instance v19, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0xc

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, v19

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move/from16 v11, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 196
    .local v1, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 197
    return v18

    .line 200
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_6d
    const/4 v1, 0x3

    move/from16 v12, p7

    if-ne v12, v1, :cond_cf

    .line 201
    if-eqz v15, :cond_cc

    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 202
    if-eqz p9, :cond_b5

    if-eqz p2, :cond_b5

    if-eqz v14, :cond_b5

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 203
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0xe

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move/from16 v11, p1

    move/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 204
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_b7

    .line 202
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_b5
    move/from16 v19, v13

    .line 206
    :goto_b7
    const/4 v1, 0x0

    const/16 v9, 0xe

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 207
    return v19

    .line 201
    :cond_cc
    move/from16 v19, v13

    goto :goto_d1

    .line 200
    :cond_cf
    move/from16 v19, v13

    .line 211
    :goto_d1
    invoke-virtual {v0, v14}, Lcom/android/server/hips/intercept/AutoRunInterception;->getInterceptionItemState(Ljava/lang/String;)I

    move-result v20

    .line 213
    .local v20, "mode":I
    if-nez v20, :cond_121

    invoke-static/range {p3 .. p3}, Lcom/android/server/hips/intercept/AutoRunInterception;->isAutoRunSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 214
    if-eqz p9, :cond_10c

    if-eqz p2, :cond_10c

    if-eqz v14, :cond_10c

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10c

    .line 215
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0xd

    const/4 v12, 0x0

    move-object/from16 v1, v18

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move/from16 v11, p1

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 216
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 218
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_10c
    const/4 v1, 0x0

    const/16 v9, 0xd

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 219
    return v19

    .line 224
    :cond_121
    const/4 v1, -0x1

    .line 225
    .local v1, "flag":I
    if-eqz v15, :cond_131

    iget-object v2, v15, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    if-eqz v2, :cond_131

    .line 226
    iget-object v2, v15, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v1

    move/from16 v21, v1

    goto :goto_133

    .line 228
    :cond_131
    move/from16 v21, v1

    .end local v1  # "flag":I
    .local v21, "flag":I
    :goto_133
    const/high16 v1, 0x200000

    and-int v1, v21, v1

    if-eqz v1, :cond_13c

    move/from16 v1, v18

    goto :goto_13e

    :cond_13c
    move/from16 v1, v19

    :goto_13e
    move/from16 v22, v1

    .line 229
    .local v22, "isFromNotification":Z
    if-eqz v22, :cond_186

    .line 230
    if-eqz p9, :cond_171

    if-eqz p2, :cond_171

    if-eqz v14, :cond_171

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_171

    .line 231
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0xf

    const/4 v12, 0x0

    move-object/from16 v1, v18

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move/from16 v11, p1

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 232
    .local v1, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 234
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_171
    const/4 v1, 0x0

    const/16 v9, 0xf

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 235
    return v19

    .line 239
    :cond_186
    move/from16 v13, p4

    invoke-virtual {v0, v14, v13}, Lcom/android/server/hips/intercept/AutoRunInterception;->isCalleeRunning(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 240
    if-eqz p9, :cond_1bd

    if-eqz p2, :cond_1bd

    if-eqz v14, :cond_1bd

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bd

    .line 241
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x11

    const/4 v12, 0x0

    move-object/from16 v1, v18

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move/from16 v11, p1

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 242
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 244
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_1bd
    const/4 v1, 0x0

    const/16 v9, 0x11

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 245
    return v19

    .line 248
    :cond_1d2
    sget-boolean v1, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    if-eqz v1, :cond_20c

    .line 249
    const/4 v1, 0x1

    const/16 v9, 0x19

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v7, v17

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 250
    new-instance v19, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x19

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, v19

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v16

    move/from16 v11, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 251
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 254
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_20c
    return v18
.end method
