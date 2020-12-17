.class Lcom/android/server/DeviceControlService$3;
.super Ljava/lang/Object;
.source "DeviceControlService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mState:I

.field final synthetic this$0:Lcom/android/server/DeviceControlService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceControlService;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/DeviceControlService;

    .line 134
    iput-object p1, p0, Lcom/android/server/DeviceControlService$3;->this$0:Lcom/android/server/DeviceControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/DeviceControlService$3;->mState:I

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 138
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"  # I

    .line 146
    if-nez p1, :cond_4c

    .line 147
    iget-object v0, p0, Lcom/android/server/DeviceControlService$3;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v0}, Lcom/android/server/DeviceControlService;->access$1100(Lcom/android/server/DeviceControlService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 148
    .local v0, "state":I
    invoke-static {}, Lcom/android/server/DeviceControlService;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DeviceControlService$3;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v1, p0, Lcom/android/server/DeviceControlService$3;->mState:I

    if-eq v1, v0, :cond_4c

    .line 150
    iget-object v1, p0, Lcom/android/server/DeviceControlService$3;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v1}, Lcom/android/server/DeviceControlService;->access$800(Lcom/android/server/DeviceControlService;)Lcom/android/server/display/bluelight/BlueLightController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/bluelight/BlueLightController;->handleDisplayChanged(I)V

    .line 151
    iget-object v1, p0, Lcom/android/server/DeviceControlService$3;->this$0:Lcom/android/server/DeviceControlService;

    invoke-static {v1}, Lcom/android/server/DeviceControlService;->access$900(Lcom/android/server/DeviceControlService;)Lcom/android/server/display/nightmode/NightModeTwilightController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/nightmode/NightModeTwilightController;->handleDisplayChanged(I)V

    .line 152
    iput v0, p0, Lcom/android/server/DeviceControlService$3;->mState:I

    .line 155
    .end local v0  # "state":I
    :cond_4c
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 142
    return-void
.end method
