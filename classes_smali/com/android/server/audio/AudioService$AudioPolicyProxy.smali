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
    .registers 11

    .line 7432
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 7433
    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    .line 7408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 7426
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 7427
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 7428
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 7434
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":ap:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$9608(Lcom/android/server/audio/AudioService;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setRegistration(Ljava/lang/String;)V

    .line 7435
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 7436
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    .line 7437
    iput-boolean p7, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    .line 7438
    iput-object p8, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 7439
    iget-boolean p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz p2, :cond_5e

    .line 7440
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {p2, p3}, Lcom/android/server/audio/MediaFocusControl;->addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 7442
    if-eqz p5, :cond_5e

    .line 7443
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 7444
    iput-boolean p6, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 7445
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-boolean p4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 7448
    :cond_5e
    iget-boolean p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    if-eqz p2, :cond_67

    .line 7449
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->access$9700(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 7451
    :cond_67
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    if-eqz p1, :cond_9b

    .line 7452
    new-instance p1, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;-><init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;Lcom/android/server/audio/AudioService$1;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    .line 7454
    :try_start_73
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    invoke-interface {p1, p2}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7a} :catch_7b

    .line 7459
    goto :goto_9b

    .line 7455
    :catch_7b
    move-exception p1

    .line 7456
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 7457
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MediaProjection callback registration failed, could not link to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " binder death"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 7461
    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    move-result p1

    .line 7462
    if-nez p1, :cond_a2

    .line 7466
    return-void

    .line 7463
    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 7464
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not connect mix, error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
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

    .line 7539
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 7540
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 7541
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->add(Ljava/util/ArrayList;)V

    .line 7542
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result p1

    monitor-exit v0

    return p1

    .line 7543
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public binderDied()V
    .registers 5

    .line 7469
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 7470
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

    .line 7471
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 7472
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7473
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_4e

    .line 7474
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    if-eqz v0, :cond_4d

    .line 7475
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$10000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7476
    :try_start_42
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$10102(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 7477
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v1

    .line 7479
    :cond_4d
    :goto_4d
    return-void

    .line 7473
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

    .line 7556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7557
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v2

    .line 7558
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7559
    return v2
.end method

.method getRegistrationId()Ljava/lang/String;
    .registers 2

    .line 7482
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMixAffectingUsage(II)Z
    .registers 6

    .line 7508
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    .line 7509
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioMix;->isAffectingUsage(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 7510
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v1

    and-int/2addr v1, p2

    if-eq v1, p2, :cond_21

    .line 7511
    const/4 p1, 0x1

    return p1

    .line 7513
    :cond_21
    goto :goto_6

    .line 7514
    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method hasMixRoutedToDevices([I[Ljava/lang/String;)Z
    .registers 10

    .line 7520
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2d

    .line 7521
    nop

    .line 7522
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 7525
    aget v5, p1, v1

    aget-object v6, p2, v1

    invoke-virtual {v4, v5, v6}, Landroid/media/audiopolicy/AudioMix;->isRoutedToDevice(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 7526
    nop

    .line 7527
    goto :goto_27

    .line 7529
    :cond_25
    goto :goto_d

    .line 7522
    :cond_26
    move v3, v0

    .line 7530
    :goto_27
    if-nez v3, :cond_2a

    .line 7531
    return v0

    .line 7520
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7534
    :cond_2d
    return v3
.end method

.method release()V
    .registers 5

    .line 7486
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    if-eqz v0, :cond_11

    .line 7487
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 7489
    :cond_11
    iget v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    .line 7490
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 7492
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_2f

    .line 7493
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 7495
    :cond_2f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    if-eqz v0, :cond_41

    .line 7497
    :try_start_33
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 7500
    goto :goto_41

    .line 7498
    :catch_39
    move-exception v0

    .line 7499
    const-string v0, "AudioPolicyProxy"

    const-string v1, "Fail to unregister Audiopolicy callback from MediaProjection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7502
    :cond_41
    :goto_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7503
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 7504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7505
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

    .line 7548
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 7549
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 7550
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->remove(Ljava/util/ArrayList;)V

    .line 7551
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result p1

    monitor-exit v0

    return p1

    .line 7552
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method removeUidDeviceAffinities(I)I
    .registers 4

    .line 7587
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 7588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7589
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result p1

    .line 7590
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7591
    if-nez p1, :cond_1c

    .line 7592
    const/4 p1, 0x0

    return p1

    .line 7595
    :cond_1c
    const-string p1, "AudioPolicyProxy"

    const-string v0, "AudioSystem. removeUidDeviceAffinities failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7596
    const/4 p1, -0x1

    return p1
.end method

.method setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 10

    .line 7563
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 7565
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "AudioPolicyProxy"

    if-eqz v1, :cond_37

    .line 7566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7567
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result v1

    .line 7568
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7569
    if-eqz v1, :cond_37

    .line 7570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AudioSystem. removeUidDeviceAffinities("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") failed,  cannot call AudioSystem.setUidDeviceAffinities"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7572
    return v2

    .line 7575
    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7576
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v1

    .line 7577
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7578
    if-nez v1, :cond_50

    .line 7579
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    invoke-direct {v1, p2, p3}, Lcom/android/server/audio/AudioService$AudioDeviceArray;-><init>([I[Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7580
    const/4 p1, 0x0

    return p1

    .line 7582
    :cond_50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AudioSystem. setUidDeviceAffinities("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7583
    return v2
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .registers 4

    .line 7601
    invoke-super {p0}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v0

    .line 7602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Proxy:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   is focus policy= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7604
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    if-eqz v2, :cond_7f

    .line 7605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     focus duck behaviour= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     is test focus policy= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     has focus listener= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7609
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   media projection= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7610
    return-object v0
.end method
