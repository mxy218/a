.class Lcom/android/server/display/hbm/HBMController$2;
.super Landroid/content/BroadcastReceiver;
.source "HBMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/hbm/HBMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/hbm/HBMController;


# direct methods
.method constructor <init>(Lcom/android/server/display/hbm/HBMController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/hbm/HBMController;

    .line 98
    iput-object p1, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 103
    const/4 v1, -0x1

    const-string/jumbo v2, "temperature"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    .line 104
    .local v1, "temp":I
    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v2}, Lcom/android/server/display/hbm/HBMController;->access$600(Lcom/android/server/display/hbm/HBMController;)I

    move-result v2

    if-eq v2, v1, :cond_73

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery changed, mDeviceTemperature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v3}, Lcom/android/server/display/hbm/HBMController;->access$600(Lcom/android/server/display/hbm/HBMController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HBMController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v2, v1}, Lcom/android/server/display/hbm/HBMController;->access$602(Lcom/android/server/display/hbm/HBMController;I)I

    .line 107
    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v2}, Lcom/android/server/display/hbm/HBMController;->access$100(Lcom/android/server/display/hbm/HBMController;)Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 108
    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v2}, Lcom/android/server/display/hbm/HBMController;->access$100(Lcom/android/server/display/hbm/HBMController;)Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;->onDeviceTemperatureChanged(I)V

    goto :goto_73

    .line 111
    .end local v1  # "temp":I
    :cond_59
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 112
    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v1}, Lcom/android/server/display/hbm/HBMController;->access$100(Lcom/android/server/display/hbm/HBMController;)Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 113
    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController$2;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v1}, Lcom/android/server/display/hbm/HBMController;->access$100(Lcom/android/server/display/hbm/HBMController;)Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;->onElapsedTimeChanged()V

    goto :goto_74

    .line 111
    :cond_73
    :goto_73
    nop

    .line 116
    :cond_74
    :goto_74
    return-void
.end method
