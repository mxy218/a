.class public Lcom/meizu/pps/observer/PPSUeventManager;
.super Ljava/lang/Object;
.source "PPSUeventManager.java"


# static fields
.field private static final DELAY_TIME:I = 0x3e8

.field private static final MSG_INIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PPSUeventManager"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"  # Landroid/os/Looper;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/pps/observer/PPSUeventManager;->delayInit(Landroid/os/Looper;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/pps/observer/PPSUeventManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSUeventManager;

    .line 22
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSUeventManager;->init()V

    return-void
.end method

.method private delayInit(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"  # Landroid/os/Looper;

    .line 33
    new-instance v0, Lcom/meizu/pps/observer/PPSUeventManager$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/pps/observer/PPSUeventManager$1;-><init>(Lcom/meizu/pps/observer/PPSUeventManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSUeventManager;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 46
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 47
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSUeventManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 48
    return-void
.end method

.method private init()V
    .registers 3

    .line 51
    new-instance v0, Lcom/meizu/pps/observer/NetUeventManager;

    invoke-direct {v0}, Lcom/meizu/pps/observer/NetUeventManager;-><init>()V

    .line 52
    .local v0, "netManager":Lcom/meizu/pps/observer/NetUeventManager;
    invoke-virtual {v0}, Lcom/meizu/pps/observer/NetUeventManager;->init()V

    .line 53
    new-instance v1, Lcom/meizu/pps/observer/CpuUeventManager;

    invoke-direct {v1}, Lcom/meizu/pps/observer/CpuUeventManager;-><init>()V

    .line 54
    .local v1, "cpuManager":Lcom/meizu/pps/observer/CpuUeventManager;
    invoke-virtual {v1}, Lcom/meizu/pps/observer/CpuUeventManager;->init()V

    .line 55
    return-void
.end method
