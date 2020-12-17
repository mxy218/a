.class Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;
.super Landroid/os/Handler;
.source "ActivityLifecycleCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;Landroid/os/Looper;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 35
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4f

    const-string p1, "ActivityLifecycleCallback"

    const-string v0, "msg.what: ONCE_USE"

    .line 36
    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_33

    .line 38
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->onForeground()V

    .line 39
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$002(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J

    .line 40
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$302(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J

    .line 42
    :cond_33
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->onBackground()V

    .line 43
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$500(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;)V

    .line 44
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback$1;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;

    invoke-static {p0, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$702(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J

    invoke-static {p0, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$302(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J

    invoke-static {p0, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$602(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J

    invoke-static {p0, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;->access$002(Lcom/meizu/statsapp/v3/lib/plugin/session/ActivityLifecycleCallback;J)J

    :cond_4f
    return-void
.end method
