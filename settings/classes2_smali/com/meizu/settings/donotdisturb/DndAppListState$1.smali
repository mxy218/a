.class Lcom/meizu/settings/donotdisturb/DndAppListState$1;
.super Landroid/content/BroadcastReceiver;
.source "DndAppListState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppListState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/DndAppListState;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "DndNotificationSettingsState"

    if-nez p2, :cond_a

    const-string p0, "onReceive intent is null"

    .line 58
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive intent action  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 65
    :cond_32
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppListState$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->access$000(Lcom/meizu/settings/donotdisturb/DndAppListState;)Lcom/meizu/settings/donotdisturb/DndAppListState$BackgroundHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_40
    return-void
.end method
