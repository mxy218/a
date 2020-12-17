.class Lcom/flyme/systemuitools/aod/model/AODModelImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AODModelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/model/AODModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/model/AODModelImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/model/AODModelImpl;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl$1;->this$0:Lcom/flyme/systemuitools/aod/model/AODModelImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AODModelImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    const-string/jumbo v0, "status"

    .line 49
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "plugged"

    .line 52
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    .line 54
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "health"

    .line 56
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl$1;->this$0:Lcom/flyme/systemuitools/aod/model/AODModelImpl;

    invoke-static {p2}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->access$000(Lcom/flyme/systemuitools/aod/model/AODModelImpl;)Landroid/os/Handler;

    move-result-object p2

    new-instance v4, Lcom/flyme/systemuitools/aod/model/BatteryStatus;

    invoke-direct {v4, v0, v3, v2, p1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;-><init>(IIII)V

    invoke-virtual {p2, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 61
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/AODModelImpl$1;->this$0:Lcom/flyme/systemuitools/aod/model/AODModelImpl;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/AODModelImpl;->access$000(Lcom/flyme/systemuitools/aod/model/AODModelImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_55
    return-void
.end method
