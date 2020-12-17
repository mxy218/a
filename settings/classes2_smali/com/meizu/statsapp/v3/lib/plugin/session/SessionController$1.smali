.class Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController$1;
.super Landroid/os/Handler;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;Landroid/os/Looper;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 39
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "session timeout"

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;)V

    .line 42
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "flush events when session end"

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    if-eqz p0, :cond_28

    .line 44
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getTracker()Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->getEmitter()Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->flush()V

    :cond_28
    return-void
.end method
