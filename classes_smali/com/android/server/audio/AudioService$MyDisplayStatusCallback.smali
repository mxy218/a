.class Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 7313
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/audio/AudioService;
    .param p2, "x1"  # Lcom/android/server/audio/AudioService$1;

    .line 7313
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 6
    .param p1, "status"  # I

    .line 7315
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7316
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9500(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 7317
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$9602(Lcom/android/server/audio/AudioService;Z)Z

    .line 7319
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9600(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/16 v2, 0x400

    if-eqz v1, :cond_2c

    .line 7323
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    goto :goto_34

    .line 7330
    :cond_2c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 7332
    :goto_34
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    const-string v3, "HdmiPlaybackClient.DisplayStatusCallback"

    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$9700(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 7335
    :cond_3b
    monitor-exit v0

    .line 7336
    return-void

    .line 7335
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v1
.end method
