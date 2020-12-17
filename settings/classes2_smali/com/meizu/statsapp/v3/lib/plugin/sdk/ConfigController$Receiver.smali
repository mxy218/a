.class Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;


# direct methods
.method private constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$1;)V
    .registers 3

    .line 258
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$Receiver;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 262
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isWiFiWorking(Landroid/content/Context;)Z

    .line 263
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isOnline(Landroid/content/Context;)Z

    move-result p1

    .line 264
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECTIVITY_ACTION, isOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_34

    .line 266
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->checkUpdate(I)V

    :cond_34
    return-void
.end method
