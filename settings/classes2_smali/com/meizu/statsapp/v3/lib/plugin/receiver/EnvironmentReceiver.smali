.class public Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;
.super Ljava/lang/Object;
.source "EnvironmentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;,
        Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnvironmentReceiver"

.field private static environmentReceiver:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private charging:Z

.field private envListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;",
            ">;"
        }
    .end annotation
.end field

.field private networkChangeTimer:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

.field private powerChangeTimer:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->charging:Z

    .line 35
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$1;

    const-wide/16 v1, 0x7530

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;J)V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->networkChangeTimer:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    .line 44
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$2;

    const-wide/32 v1, 0x493e0

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$2;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;J)V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->powerChangeTimer:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->envListeners:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$1;)V

    .line 68
    :try_start_26
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_29

    .line 71
    :catch_29
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 72
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 74
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    :try_start_3d
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_68

    :catch_41
    move-exception p0

    .line 78
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Ljava/util/List;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->envListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->networkChangeTimer:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->powerChangeTimer:Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->charging:Z

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;Z)Z
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->charging:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;
    .registers 3

    .line 83
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->environmentReceiver:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    if-nez v0, :cond_17

    .line 84
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->environmentReceiver:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    if-nez v1, :cond_12

    .line 86
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->environmentReceiver:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    .line 88
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 90
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->environmentReceiver:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    return-object p0
.end method


# virtual methods
.method public addEnvListener(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->envListeners:Ljava/util/List;

    if-eqz p0, :cond_7

    .line 118
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
