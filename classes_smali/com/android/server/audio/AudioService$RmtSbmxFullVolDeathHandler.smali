.class Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RmtSbmxFullVolDeathHandler"
.end annotation


# instance fields
.field private mICallback:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .registers 5
    .param p2, "cb"  # Landroid/os/IBinder;

    .line 2959
    iput-object p1, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2960
    iput-object p2, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    .line 2962
    const/4 p1, 0x0

    :try_start_8
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 2965
    goto :goto_14

    .line 2963
    :catch_c
    move-exception p1

    .line 2964
    .local p1, "e":Landroid/os/RemoteException;
    const-string v0, "AS.AudioService"

    const-string v1, "can\'t link to death"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2966
    .end local p1  # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 2981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recorder with remote submix at full volume died "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 2983
    return-void
.end method

.method forget()V
    .registers 4

    .line 2974
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    .line 2977
    goto :goto_f

    .line 2975
    :catch_7
    move-exception v0

    .line 2976
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AS.AudioService"

    const-string v2, "error unlinking to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2978
    .end local v0  # "e":Ljava/util/NoSuchElementException;
    :goto_f
    return-void
.end method

.method isHandlerFor(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "cb"  # Landroid/os/IBinder;

    .line 2969
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->mICallback:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
