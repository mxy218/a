.class Lcom/android/server/audio/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 9

    .line 429
    const/16 v0, 0x64

    if-eq p1, v0, :cond_5

    goto :goto_2a

    .line 431
    :cond_5
    iget-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->onAudioServerDied()V

    .line 433
    iget-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 435
    iget-object p1, p0, Lcom/android/server/audio/AudioService$1;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x17

    const/4 v2, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 437
    nop

    .line 441
    :goto_2a
    return-void
.end method
