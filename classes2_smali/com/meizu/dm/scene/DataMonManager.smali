.class public Lcom/meizu/dm/scene/DataMonManager;
.super Ljava/lang/Object;
.source "DataMonManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/dm/scene/DataMonManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final LAUNCHER:Ljava/lang/String; = "com.meizu.flyme.launcher"

.field private static final PACKAGE_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "DMS:DataMonManager"

.field private static sInstance:Lcom/meizu/dm/scene/DataMonManager;


# instance fields
.field private mDataMonHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/dm/scene/DataMonManager;->sInstance:Lcom/meizu/dm/scene/DataMonManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/dm/scene/DataMonManager;->mDataMonHandler:Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Lcom/meizu/dm/scene/DataMonManager;->init()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/dm/scene/DataMonManager$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/meizu/dm/scene/DataMonManager$1;

    .line 28
    invoke-direct {p0}, Lcom/meizu/dm/scene/DataMonManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleMonkeyEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleProcessStartEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleProcessFinishEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleActivityStartEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleActivityFinishEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleColdStartEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleWarmStartEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleLukewarmStartEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/dm/scene/DataMonManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/meizu/dm/scene/DataMonManager;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/dm/scene/DataMonManager;->handleStartTimeEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/meizu/dm/scene/DataMonManager;
    .registers 1

    .line 42
    invoke-static {}, Lcom/meizu/dm/scene/DataMonManager$LazyHolder;->access$100()Lcom/meizu/dm/scene/DataMonManager;

    move-result-object v0

    return-object v0
.end method

.method private handleActivityFinishEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 111
    return-void
.end method

.method private handleActivityStartEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 107
    return-void
.end method

.method private handleColdStartEvent(ILjava/lang/String;)V
    .registers 9
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, p2, v0}, Lcom/meizu/dm/scene/DataMonManager;->safeGetData(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "args":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 116
    return-void

    .line 118
    :cond_8
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 119
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 120
    .local v2, "processName":Ljava/lang/String;
    if-eqz v1, :cond_50

    if-eqz v2, :cond_50

    const-string v3, "com.android.packageinstaller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Cold started now is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DMS:DataMonManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 124
    :cond_50
    return-void
.end method

.method private handleLukewarmStartEvent(ILjava/lang/String;)V
    .registers 10
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 141
    const/4 v0, 0x4

    invoke-direct {p0, p2, v0}, Lcom/meizu/dm/scene/DataMonManager;->safeGetData(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "args":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 143
    return-void

    .line 145
    :cond_8
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 146
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 147
    .local v2, "processName":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, v0, v3

    .line 148
    .local v3, "lastFgpkgName":Ljava/lang/String;
    if-eqz v1, :cond_61

    if-eqz v2, :cond_61

    const-string v4, "com.android.systemui"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "com.android.packageinstaller"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Lukewarm started now is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DMS:DataMonManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 152
    :cond_61
    return-void
.end method

.method private handleMonkeyEvent(ILjava/lang/String;)V
    .registers 5
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 168
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/meizu/dm/scene/DataMonManager;->safeGetData(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "debug.dms.monkey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private handleProcessFinishEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method private handleProcessStartEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 99
    return-void
.end method

.method private handleScrollFinishEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 164
    return-void
.end method

.method private handleScrollStartEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 160
    return-void
.end method

.method private handleStartTimeEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 156
    return-void
.end method

.method private handleWarmStartEvent(ILjava/lang/String;)V
    .registers 10
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 127
    const/4 v0, 0x4

    invoke-direct {p0, p2, v0}, Lcom/meizu/dm/scene/DataMonManager;->safeGetData(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "args":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 129
    return-void

    .line 131
    :cond_8
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 132
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 133
    .local v2, "processName":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, v0, v3

    .line 134
    .local v3, "lastFgpkgName":Ljava/lang/String;
    if-eqz v1, :cond_61

    if-eqz v2, :cond_61

    const-string v4, "com.meizu.flyme.launcher"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "com.android.packageinstaller"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Warm started now is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DMS:DataMonManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/meizu/datamanager/DataCollectManager;->getInstance()Lcom/meizu/datamanager/DataCollectManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/meizu/datamanager/DataCollectManager;->noteEvent(ILjava/lang/String;)V

    .line 138
    :cond_61
    return-void
.end method

.method private init()V
    .registers 4

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v1, Lcom/meizu/dm/scene/DataMonManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/dm/scene/DataMonManager$1;-><init>(Lcom/meizu/dm/scene/DataMonManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/dm/scene/DataMonManager;->mDataMonHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method private safeGetData(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "data"  # Ljava/lang/String;
    .param p2, "len"  # I

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 173
    return-object v0

    .line 175
    :cond_4
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "args":[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, p2, :cond_e

    .line 177
    return-object v0

    .line 179
    :cond_e
    return-object v1
.end method


# virtual methods
.method public scheduleData(ILjava/lang/String;)V
    .registers 5
    .param p1, "event"  # I
    .param p2, "data"  # Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 93
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/meizu/dm/scene/DataMonManager;->mDataMonHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method
