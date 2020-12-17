.class Lcom/android/server/DeviceControlService$1;
.super Ljava/lang/Object;
.source "DeviceControlService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceControlService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceControlService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/DeviceControlService;

    .line 97
    iput-object p1, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .registers 5
    .param p1, "state"  # Lcom/android/server/twilight/TwilightState;

    .line 100
    invoke-static {}, Lcom/android/server/DeviceControlService;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTwilightStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$700(Lcom/android/server/DeviceControlService;)Lcom/android/server/twilight/TwilightManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/DeviceControlService;->access$602(Lcom/android/server/DeviceControlService;Lcom/android/server/twilight/TwilightState;)Lcom/android/server/twilight/TwilightState;

    .line 102
    iget-object v0, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$600(Lcom/android/server/DeviceControlService;)Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    if-nez v0, :cond_20

    .line 103
    return-void

    .line 106
    :cond_20
    iget-object v0, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$800(Lcom/android/server/DeviceControlService;)Lcom/android/server/display/bluelight/BlueLightController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v1}, Lcom/android/server/DeviceControlService;->access$600(Lcom/android/server/DeviceControlService;)Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/bluelight/BlueLightController;->handleTwilightState(Lcom/android/server/twilight/TwilightState;Z)V

    .line 107
    iget-object v0, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$900(Lcom/android/server/DeviceControlService;)Lcom/android/server/display/nightmode/NightModeTwilightController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v1}, Lcom/android/server/DeviceControlService;->access$600(Lcom/android/server/DeviceControlService;)Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/nightmode/NightModeTwilightController;->handleTwilightState(Lcom/android/server/twilight/TwilightState;Z)V

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceControlService$1;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$1000(Lcom/android/server/DeviceControlService;)V

    .line 109
    return-void
.end method
