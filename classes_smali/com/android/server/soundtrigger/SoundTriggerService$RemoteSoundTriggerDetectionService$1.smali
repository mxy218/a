.class Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;
.super Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

.field final synthetic val$this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .registers 3

    .line 874
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->val$this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpFinished(I)V
    .registers 6

    .line 877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 879
    :try_start_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1200(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_4c

    .line 880
    :try_start_b
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1300(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 882
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1300(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1400(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 883
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1500(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 884
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1600(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    goto :goto_43

    .line 886
    :cond_3e
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1700(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    .line 889
    :cond_43
    :goto_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_49

    .line 891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 892
    nop

    .line 893
    return-void

    .line 889
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 891
    :catchall_4c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
