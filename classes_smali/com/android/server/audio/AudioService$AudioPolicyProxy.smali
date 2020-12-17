.class public Lcom/android/server/audio/AudioService$AudioPolicyProxy;
.super Landroid/media/audiopolicy/AudioPolicyConfig;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioPolicyProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPolicyProxy"


# instance fields
.field mFocusDuckBehavior:I

.field final mHasFocusListener:Z

.field mIsFocusPolicy:Z

.field mIsTestFocusPolicy:Z

.field final mIsVolumeController:Z

.field final mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field final mProjection:Landroid/media/projection/IMediaProjection;

.field mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

.field final mUidDeviceAffinities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$AudioDeviceArray;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)V
    .registers 13
    .param p1, "this$0"  # Lcom/android/server/audio/AudioService;
    .param p2, "config"  # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p3, "token"  # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p4, "hasFocusListener"  # Z
    .param p5, "isFocusPolicy"  # Z
    .param p6, "isTestFocusPolicy"  # Z
    .param p7, "isVolumeController"  # Z
    .param p8, "projection"  # Landroid/media/projection/IMediaProjection;

    .line 8462
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 8463
    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    .line 8438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 8456
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 8457
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 8458
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 8464
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":ap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$10508(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setRegistration(Ljava/lang/String;)V

    .line 8465
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8466
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    .line 8467
    iput-boolean p7, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    .line 8468
    iput-object p8, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 8469
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_5e

    .line 8470
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 8472
    if-eqz p5, :cond_5e

    .line 8473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 8474
    iput-boolean p6, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 8475
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 8478
    :cond_5e
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    if-eqz v0, :cond_67

    .line 8479
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->access$10600(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 8481
    :cond_67
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    if-eqz v0, :cond_9b

    .line 8482
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;-><init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    .line 8484
    :try_start_73
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7a} :catch_7b

    .line 8489
    goto :goto_9b

    .line 8485
    :catch_7b
    move-exception v0

    .line 8486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8487
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaProjection callback registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 8491
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    move-result v0

    .line 8492
    .local v0, "status":I
    if-nez v0, :cond_a2

    .line 8496
    return-void

    .line 8493
    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8494
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect mix, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method addMixes(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 8568
    .local p1, "mixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8569
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 8570
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->add(Ljava/util/ArrayList;)V

    .line 8571
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 8572
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public binderDied()V
    .registers 5

    .line 8499
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 8500
    :try_start_7
    const-string v1, "AudioPolicyProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8501
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8502
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8503
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_4e

    .line 8504
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    if-eqz v0, :cond_4d

    .line 8505
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8506
    :try_start_42
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$11002(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8507
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v1

    .line 8509
    :cond_4d
    :goto_4d
    return-void

    .line 8503
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method connectMixes()I
    .registers 5

    .line 8585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8586
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v2

    .line 8587
    .local v2, "status":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8588
    return v2
.end method

.method getRegistrationId()Ljava/lang/String;
    .registers 2

    .line 8512
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMixAffectingUsage(I)Z
    .registers 5
    .param p1, "usage"  # I

    .line 8538
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    .line 8539
    .local v1, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioMix;->isAffectingUsage(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 8540
    const/4 v0, 0x1

    return v0

    .line 8542
    .end local v1  # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_1a
    goto :goto_6

    .line 8543
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method hasMixRoutedToDevices([I[Ljava/lang/String;)Z
    .registers 9
    .param p1, "deviceTypes"  # [I
    .param p2, "deviceAddresses"  # [Ljava/lang/String;

    .line 8549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 8550
    const/4 v1, 0x0

    .line 8551
    .local v1, "hasDevice":Z
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 8554
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    aget v4, p1, v0

    aget-object v5, p2, v0

    invoke-virtual {v3, v4, v5}, Landroid/media/audiopolicy/AudioMix;->isRoutedToDevice(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 8555
    const/4 v1, 0x1

    .line 8556
    goto :goto_24

    .line 8558
    .end local v3  # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_23
    goto :goto_b

    .line 8559
    :cond_24
    :goto_24
    if-nez v1, :cond_28

    .line 8560
    const/4 v2, 0x0

    return v2

    .line 8549
    .end local v1  # "hasDevice":Z
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8563
    .end local v0  # "i":I
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method release()V
    .registers 5

    .line 8516
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    if-eqz v0, :cond_11

    .line 8517
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 8519
    :cond_11
    iget v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    .line 8520
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 8522
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_2f

    .line 8523
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 8525
    :cond_2f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    if-eqz v0, :cond_41

    .line 8527
    :try_start_33
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 8530
    goto :goto_41

    .line 8528
    :catch_39
    move-exception v0

    .line 8529
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioPolicyProxy"

    const-string v3, "Fail to unregister Audiopolicy callback from MediaProjection"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8532
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_41
    :goto_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8533
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 8534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8535
    return-void
.end method

.method removeMixes(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 8577
    .local p1, "mixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8578
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 8579
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->remove(Ljava/util/ArrayList;)V

    .line 8580
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 8581
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method removeUidDeviceAffinities(I)I
    .registers 6
    .param p1, "uid"  # I

    .line 8616
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 8617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8618
    .local v0, "identity":J
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result v2

    .line 8619
    .local v2, "res":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8620
    if-nez v2, :cond_1c

    .line 8621
    const/4 v3, 0x0

    return v3

    .line 8624
    .end local v0  # "identity":J
    .end local v2  # "res":I
    :cond_1c
    const-string v0, "AudioPolicyProxy"

    const-string v1, "AudioSystem. removeUidDeviceAffinities failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8625
    const/4 v0, -0x1

    return v0
.end method

.method setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 12
    .param p1, "uid"  # I
    .param p2, "types"  # [I
    .param p3, "addresses"  # [Ljava/lang/String;

    .line 8592
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 8594
    .local v0, "Uid":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "AudioPolicyProxy"

    if-eqz v1, :cond_37

    .line 8595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8596
    .local v4, "identity":J
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result v1

    .line 8597
    .local v1, "res":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8598
    if-eqz v1, :cond_37

    .line 8599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioSystem. removeUidDeviceAffinities("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") failed,  cannot call AudioSystem.setUidDeviceAffinities"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8601
    return v2

    .line 8604
    .end local v1  # "res":I
    .end local v4  # "identity":J
    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8605
    .restart local v4  # "identity":J
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v1

    .line 8606
    .restart local v1  # "res":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8607
    if-nez v1, :cond_50

    .line 8608
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    invoke-direct {v3, p2, p3}, Lcom/android/server/audio/AudioService$AudioDeviceArray;-><init>([I[Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8609
    const/4 v2, 0x0

    return v2

    .line 8611
    :cond_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioSystem. setUidDeviceAffinities("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8612
    return v2
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .registers 5

    .line 8630
    invoke-super {p0}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v0

    .line 8631
    .local v0, "textDump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Proxy:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   is focus policy= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8633
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    if-eqz v1, :cond_7f

    .line 8634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     focus duck behaviour= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     is test focus policy= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     has focus listener= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8638
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   media projection= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8639
    return-object v0
.end method
