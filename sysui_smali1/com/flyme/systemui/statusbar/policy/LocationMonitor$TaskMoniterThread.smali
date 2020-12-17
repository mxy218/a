.class Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;
.super Ljava/lang/Thread;
.source "LocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/LocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskMoniterThread"
.end annotation


# instance fields
.field private mIsCancled:Z

.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Lcom/flyme/systemui/statusbar/policy/LocationMonitor$1;)V
    .registers 3

    .line 381
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;-><init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 391
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    if-nez v0, :cond_1b

    const-wide/16 v0, 0x7d0

    .line 393
    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_9

    .line 397
    :catch_9
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->mIsCancled:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const-string v0, "LocationMonitor"

    const-string v1, "TaskMoniterThread running"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$TaskMoniterThread;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->access$000(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    goto :goto_0

    :cond_1b
    return-void
.end method
