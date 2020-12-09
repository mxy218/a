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

    .line 6268
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3

    .line 6268
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5

    .line 6270
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6271
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8600(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 6272
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService;->access$8702(Lcom/android/server/audio/AudioService;Z)Z

    .line 6274
    iget-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    const/16 v1, 0x400

    if-eqz p1, :cond_2c

    .line 6278
    iget-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/2addr v2, v1

    iput v2, p1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    goto :goto_34

    .line 6285
    :cond_2c
    iget-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 6287
    :goto_34
    iget-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    const-string v2, "HdmiPlaybackClient.DisplayStatusCallback"

    invoke-static {p1, v1, v2}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 6290
    :cond_3b
    monitor-exit v0

    .line 6291
    return-void

    .line 6290
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw p1
.end method
