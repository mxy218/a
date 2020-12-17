.class Lcom/meizu/pps/observer/NetUeventManager$1;
.super Landroid/os/UEventObserver;
.source "NetUeventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/NetUeventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/pps/observer/NetUeventManager;


# direct methods
.method constructor <init>(Lcom/meizu/pps/observer/NetUeventManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/pps/observer/NetUeventManager;

    .line 28
    iput-object p1, p0, Lcom/meizu/pps/observer/NetUeventManager$1;->this$0:Lcom/meizu/pps/observer/NetUeventManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/os/UEventObserver$UEvent;

    .line 31
    monitor-enter p0

    .line 32
    :try_start_1
    const-string v0, "PUIDSPEED"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "speed":Ljava/lang/String;
    const-string v1, "NetUeventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUEventObserver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/meizu/pps/observer/NetUeventManager$Parser;->explain(ILjava/lang/String;)[I

    move-result-object v1

    .line 35
    .local v1, "array":[I
    if-eqz v1, :cond_3f

    array-length v2, v1

    if-lez v2, :cond_3f

    .line 36
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/pps/observer/PPSEventDispatcher;->newIntArrayArgs([I)Lcom/meizu/common/pps/event/IntArrayArgs;

    move-result-object v2

    .line 37
    .local v2, "args":Lcom/meizu/common/pps/event/IntArrayArgs;
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/meizu/pps/observer/PPSEventDispatcher;->receive(Lcom/meizu/common/pps/event/Args;)V

    .line 38
    .end local v2  # "args":Lcom/meizu/common/pps/event/IntArrayArgs;
    goto :goto_46

    .line 39
    :cond_3f
    const-string v2, "NetUeventManager"

    const-string v3, "mUEventObserver array = null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0  # "speed":Ljava/lang/String;
    .end local v1  # "array":[I
    :goto_46
    monitor-exit p0

    .line 42
    return-void

    .line 41
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_48

    throw v0
.end method
