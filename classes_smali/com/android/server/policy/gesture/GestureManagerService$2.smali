.class Lcom/android/server/policy/gesture/GestureManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/gesture/GestureManagerService;->registerBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gesture/GestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/GestureManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 189
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureManagerService$2;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService$2;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v1}, Lcom/android/server/policy/gesture/GestureManagerService;->access$200(Lcom/android/server/policy/gesture/GestureManagerService;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_45

    .line 194
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 195
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService$2;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v1}, Lcom/android/server/policy/gesture/GestureManagerService;->access$600(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService$2;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v2}, Lcom/android/server/policy/gesture/GestureManagerService;->access$500(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_45

    .line 196
    :cond_27
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 197
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService$2;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v1}, Lcom/android/server/policy/gesture/GestureManagerService;->access$600(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService$2;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v2}, Lcom/android/server/policy/gesture/GestureManagerService;->access$500(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/gesture/GestureManagerService$2;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v3}, Lcom/android/server/policy/gesture/GestureManagerService;->access$700(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 202
    :cond_45
    :goto_45
    return-void
.end method
