.class Lcom/android/server/os/TemperatureMonitor$2;
.super Landroid/scene/SceneReceiver;
.source "TemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/TemperatureMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TemperatureMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/os/TemperatureMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/os/TemperatureMonitor;

    .line 52
    iput-object p1, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-direct {p0}, Landroid/scene/SceneReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Landroid/scene/Scene;)V
    .registers 6
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemperatureMonitor onReceiver scene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "TemperatureMonitor"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 58
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/os/TemperatureMonitor;->access$100(Lcom/android/server/os/TemperatureMonitor;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    if-eqz v0, :cond_47

    .line 59
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/os/TemperatureMonitor;->access$100(Lcom/android/server/os/TemperatureMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v3}, Lcom/android/server/os/TemperatureMonitor;->access$200(Lcom/android/server/os/TemperatureMonitor;)Ljava/util/TimerTask;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_73

    .line 61
    :cond_47
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v3}, Lcom/android/server/os/TemperatureMonitor;->access$102(Lcom/android/server/os/TemperatureMonitor;Landroid/os/Handler;)Landroid/os/Handler;

    .line 62
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/os/TemperatureMonitor;->access$100(Lcom/android/server/os/TemperatureMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v3}, Lcom/android/server/os/TemperatureMonitor;->access$200(Lcom/android/server/os/TemperatureMonitor;)Ljava/util/TimerTask;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_73

    .line 70
    :cond_61
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/os/TemperatureMonitor;->access$100(Lcom/android/server/os/TemperatureMonitor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 71
    iget-object v0, p0, Lcom/android/server/os/TemperatureMonitor$2;->this$0:Lcom/android/server/os/TemperatureMonitor;

    invoke-static {v0}, Lcom/android/server/os/TemperatureMonitor;->access$100(Lcom/android/server/os/TemperatureMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    :cond_73
    :goto_73
    return-void
.end method
