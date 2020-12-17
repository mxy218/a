.class Lcom/meizu/pps/observer/PPSServer$MainHandler;
.super Landroid/os/Handler;
.source "PPSServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/PPSServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mInitTimes:I

.field final synthetic this$0:Lcom/meizu/pps/observer/PPSServer;


# direct methods
.method public constructor <init>(Lcom/meizu/pps/observer/PPSServer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 303
    iput-object p1, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->this$0:Lcom/meizu/pps/observer/PPSServer;

    .line 304
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 302
    const/4 p1, 0x0

    iput p1, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->mInitTimes:I

    .line 305
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_25

    .line 309
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->this$0:Lcom/meizu/pps/observer/PPSServer;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSServer;->access$100(Lcom/meizu/pps/observer/PPSServer;)Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->initialize(Landroid/os/Looper;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 310
    iget v0, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->mInitTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->mInitTimes:I

    .line 311
    iget v0, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->mInitTimes:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->this$0:Lcom/meizu/pps/observer/PPSServer;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSServer;->access$200(Lcom/meizu/pps/observer/PPSServer;)V

    goto :goto_25

    .line 313
    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/pps/observer/PPSServer$MainHandler;->mInitTimes:I

    .line 316
    :cond_25
    :goto_25
    return-void
.end method
