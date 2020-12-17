.class final Lcom/meizu/pps/observer/NetUeventManager;
.super Ljava/lang/Object;
.source "NetUeventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/pps/observer/NetUeventManager$Parser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetUeventManager"

.field private static final UEVENT_NET_SUBSYSTEM:Ljava/lang/String; = "SUBSYSTEM=net_monitor"


# instance fields
.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/meizu/pps/observer/NetUeventManager$1;

    invoke-direct {v0, p0}, Lcom/meizu/pps/observer/NetUeventManager$1;-><init>(Lcom/meizu/pps/observer/NetUeventManager;)V

    iput-object v0, p0, Lcom/meizu/pps/observer/NetUeventManager;->mUEventObserver:Landroid/os/UEventObserver;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    .line 69
    const-string v0, "NetUeventManager"

    :try_start_2
    iget-object v1, p0, Lcom/meizu/pps/observer/NetUeventManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "SUBSYSTEM=net_monitor"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 70
    const-string v1, "init UEventObserver success!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 73
    goto :goto_15

    .line 71
    :catch_f
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error initializing"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method
