.class Lcom/meizu/settings/appclone/AppCloneState$2;
.super Landroid/content/BroadcastReceiver;
.source "AppCloneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppCloneState;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState$2;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "AppCloneState"

    if-nez p2, :cond_b

    const-string/jumbo p0, "onReceive intent is null"

    .line 97
    invoke-static {p1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive intent action  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 105
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState$2;->this$0:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->access$200(Lcom/meizu/settings/appclone/AppCloneState;)Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    return-void
.end method
