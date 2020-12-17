.class public Lcom/android/server/am/AmsInjector;
.super Ljava/lang/Object;
.source "AmsInjector.java"


# static fields
.field private static final LAST_DIED_FAVORITE_APPS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final MY_PID:I

.field private static final RESTART_FOR_KILL_REASON:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "AmsInjector"

.field private static sAms:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/am/AmsInjector;->MY_PID:I

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AmsInjector;->LAST_DIED_FAVORITE_APPS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    const-string v0, "crash"

    const-string v1, "anr"

    const-string v2, "from pid"

    const-string/jumbo v3, "remove task"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AmsInjector;->RESTART_FOR_KILL_REASON:[Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/android/server/am/AmsInjector;->initSystemproperties()V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProcess(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p0, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p1, "process"  # Ljava/lang/String;
    .param p2, "pid"  # I
    .param p3, "reason"  # Ljava/lang/String;

    .line 60
    if-gtz p2, :cond_3

    return-void

    .line 61
    :cond_3
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSProcessManager;->add(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public static final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 1
    .param p0, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 111
    return-void
.end method

.method public static clearProcessWindow(I)V
    .registers 2
    .param p0, "pid"  # I

    .line 195
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/pps/observer/PPSProcessManager;->clearProcessWindow(I)V

    .line 196
    return-void
.end method

.method public static initSystemproperties()V
    .registers 7

    .line 199
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.flyme.published"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 200
    .local v1, "isPublishedVersion":Z
    const/4 v2, -0x1

    const-string/jumbo v3, "persist.sys.force_close_log"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 201
    .local v4, "force_close_log":I
    const-string/jumbo v5, "persist.sys.log_reject_level"

    const/4 v6, 0x1

    if-ne v4, v6, :cond_29

    if-eqz v1, :cond_29

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 205
    :cond_29
    nop

    .line 206
    if-eqz v1, :cond_2d

    const/4 v0, 0x3

    :cond_2d
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 205
    const-string/jumbo v3, "ro.flyme.log_default_level"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "level":I
    if-gtz v0, :cond_3c

    .line 208
    const/4 v0, 0x0

    goto :goto_43

    .line 209
    :cond_3c
    const/4 v3, 0x6

    if-le v0, v3, :cond_42

    .line 210
    const/16 v0, 0x64

    goto :goto_43

    .line 212
    :cond_42
    const/4 v0, 0x3

    .line 214
    :goto_43
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_6b

    .line 215
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the first persist.sys.log_reject_level is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AmsInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0  # "level":I
    :cond_6b
    :goto_6b
    const-string v0, ""

    const-string/jumbo v2, "persist.log.tag"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v2, "log.tag"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static initialize(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "ams"  # Lcom/android/server/am/ActivityManagerService;

    .line 54
    sput-object p0, Lcom/android/server/am/AmsInjector;->sAms:Lcom/android/server/am/ActivityManagerService;

    .line 55
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AmsExecutor;->initialize(Lcom/android/server/am/ActivityManagerService;)V

    .line 56
    sget-object v0, Lcom/android/server/am/AmsInjector;->sAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/meizu/pps/observer/PPSServer;->publish(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public static isFavoriteApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"  # Ljava/lang/String;

    .line 187
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->isFavoriteApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHeavyApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"  # Ljava/lang/String;

    .line 191
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->isHeavyApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRestartFavoriteApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 12
    .param p0, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 150
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 151
    .local v0, "process":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathReason:Ljava/lang/String;

    .line 152
    .local v1, "reason":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/am/AmsUtils;->getCloneId(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_89

    invoke-static {v0}, Lcom/android/server/am/AmsInjector;->isFavoriteApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_89

    .line 155
    :cond_13
    const/4 v2, 0x0

    .line 157
    .local v2, "allowRestart":Z
    if-nez v1, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    move v4, v3

    .line 158
    .local v4, "accept":Z
    :goto_19
    if-eqz v1, :cond_2e

    .line 159
    sget-object v5, Lcom/android/server/am/AmsInjector;->RESTART_FOR_KILL_REASON:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_1f
    if-ge v7, v6, :cond_2e

    aget-object v8, v5, v7

    .line 160
    .local v8, "killReason":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 161
    const/4 v4, 0x1

    .line 162
    goto :goto_2e

    .line 159
    .end local v8  # "killReason":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 167
    :cond_2e
    :goto_2e
    if-nez v4, :cond_31

    return v3

    .line 168
    :cond_31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 169
    .local v5, "now":J
    sget-object v3, Lcom/android/server/am/AmsInjector;->LAST_DIED_FAVORITE_APPS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 170
    sget-object v3, Lcom/android/server/am/AmsInjector;->LAST_DIED_FAVORITE_APPS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 171
    .local v3, "time":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v5, v7

    const-wide/16 v9, 0xbb8

    cmp-long v7, v7, v9

    if-lez v7, :cond_65

    .line 172
    :cond_5b
    sget-object v7, Lcom/android/server/am/AmsInjector;->LAST_DIED_FAVORITE_APPS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v2, 0x1

    .line 175
    .end local v3  # "time":Ljava/lang/Long;
    :cond_65
    goto :goto_70

    .line 176
    :cond_66
    sget-object v3, Lcom/android/server/am/AmsInjector;->LAST_DIED_FAVORITE_APPS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/4 v2, 0x1

    .line 180
    :goto_70
    if-eqz v2, :cond_88

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preload Process ="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "AmsInjector"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_88
    return v2

    .line 153
    .end local v2  # "allowRestart":Z
    .end local v4  # "accept":Z
    .end local v5  # "now":J
    :cond_89
    :goto_89
    return v3
.end method

.method public static moveForeground(I)V
    .registers 2
    .param p0, "pid"  # I

    .line 69
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/pps/observer/PPSProcessManager;->moveForeground(I)V

    .line 70
    return-void
.end method

.method public static notifyPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .registers 5
    .param p0, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p1, "oldSbn"  # Landroid/service/notification/StatusBarNotification;

    .line 82
    if-eqz p1, :cond_29

    .line 83
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 84
    return-void

    .line 86
    :cond_d
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v0

    if-lez v0, :cond_29

    .line 87
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->removeNotification(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSProcessManager;->notifyRemoved(II)V

    .line 91
    :cond_29
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 92
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_43

    .line 93
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5f

    .line 94
    :cond_43
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v0

    if-lez v0, :cond_5f

    .line 95
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->addNotification(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSProcessManager;->notifyPosted(II)V

    .line 99
    :cond_5f
    return-void
.end method

.method public static notifyRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 4
    .param p0, "sbn"  # Landroid/service/notification/StatusBarNotification;

    .line 102
    if-nez p0, :cond_3

    return-void

    .line 103
    :cond_3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v0

    if-lez v0, :cond_1f

    .line 104
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->removeNotification(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/pps/observer/PPSProcessManager;->notifyRemoved(II)V

    .line 107
    :cond_1f
    return-void
.end method

.method public static onKeyguardState(Z)V
    .registers 2
    .param p0, "lock"  # Z

    .line 77
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setKeyguardState(I)V

    .line 78
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/pps/observer/PPSServer;->onKeyguardState(Z)V

    .line 79
    return-void
.end method

.method public static removeProcess(ILjava/lang/String;)V
    .registers 3
    .param p0, "pid"  # I
    .param p1, "reason"  # Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->remove(ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public static setIntercept(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->setIntercept(Ljava/util/Map;)V

    .line 147
    return-void
.end method

.method public static final setPss(IJ)V
    .registers 5
    .param p0, "pid"  # I
    .param p1, "pss"  # J

    .line 114
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, p0, v1}, Lcom/meizu/pps/observer/PPSProcessManager;->setPss(II)V

    .line 115
    return-void
.end method

.method public static systemReady()V
    .registers 1

    .line 73
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSServer;->systemReady()V

    .line 74
    return-void
.end method

.method public static final updateOomAdjLocked(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, "oom":Lcom/android/server/am/ProcessRecord;
    const/4 v1, 0x0

    .line 120
    .local v1, "oomPid":I
    const/4 v2, 0x0

    .line 122
    .local v2, "oomString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 123
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x0

    .line 124
    const/4 v1, 0x0

    .line 125
    const/4 v2, 0x0

    .line 126
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v5, :cond_27

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_27

    .line 127
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 128
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 130
    :cond_27
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v5, :cond_40

    .line 131
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/ComponentName;

    if-eqz v5, :cond_3a

    .line 132
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_40

    .line 134
    :cond_3a
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    :cond_40
    :goto_40
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v5

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v5, v6, v7, v1, v2}, Lcom/meizu/pps/observer/PPSProcessManager;->setAdjAndOom(IIILjava/lang/String;)V

    .line 138
    .end local v4  # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_7

    .line 139
    :cond_4c
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/pps/observer/PPSProcessManager;->applyUpdate()V

    .line 142
    sget-object v3, Lcom/android/server/am/AmsInjector;->sAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WmsInjector;->setHome(Lcom/android/server/wm/WindowProcessController;)V

    .line 143
    return-void
.end method
