.class final Lcom/meizu/pps/observer/CpuUeventManager;
.super Ljava/lang/Object;
.source "CpuUeventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/pps/observer/CpuUeventManager$Parser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CpuUeventManager"

.field private static final UEVENT_CPU_SUBSYSTEM:Ljava/lang/String; = "SUBSYSTEM=cpu_monitor"


# instance fields
.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/meizu/pps/observer/CpuUeventManager$1;

    invoke-direct {v0, p0}, Lcom/meizu/pps/observer/CpuUeventManager$1;-><init>(Lcom/meizu/pps/observer/CpuUeventManager;)V

    iput-object v0, p0, Lcom/meizu/pps/observer/CpuUeventManager;->mUEventObserver:Landroid/os/UEventObserver;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    .line 68
    const-string v0, "CpuUeventManager"

    :try_start_2
    iget-object v1, p0, Lcom/meizu/pps/observer/CpuUeventManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "SUBSYSTEM=cpu_monitor"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 69
    const-string v1, "init UEventObserver success"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 72
    goto :goto_15

    .line 70
    :catch_f
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error initializing"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method
