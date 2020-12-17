.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .registers 2
    .param p0, "controller"  # Landroid/media/IVolumeController;

    .line 7753
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 7749
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 4
    .param p1, "controller"  # Landroid/media/IVolumeController;

    .line 7745
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"  # Landroid/content/ContentResolver;

    .line 7710
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 7712
    return-void
.end method

.method public postDismiss()V
    .registers 4

    .line 7809
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7810
    return-void

    .line 7812
    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 7815
    goto :goto_11

    .line 7813
    :catch_9
    move-exception v0

    .line 7814
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7816
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 6
    .param p1, "flags"  # I

    .line 7762
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7763
    return-void

    .line 7766
    :cond_5
    :try_start_5
    const-string v0, "game"

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v1

    const-string v2, "getScene"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7767
    .local v0, "isGameMode":Z
    if-nez v0, :cond_1f

    .line 7769
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_20

    .line 7772
    .end local v0  # "isGameMode":Z
    :cond_1f
    goto :goto_28

    .line 7770
    :catch_20
    move-exception v0

    .line 7771
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling displaySafeVolumeWarning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7773
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .registers 5
    .param p1, "flags"  # I

    .line 7789
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7790
    return-void

    .line 7792
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 7795
    goto :goto_11

    .line 7793
    :catch_9
    move-exception v0

    .line 7794
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterMuteChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7796
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public postVolumeChanged(II)V
    .registers 6
    .param p1, "streamType"  # I
    .param p2, "flags"  # I

    .line 7777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GJ_DEBUG] postVolumeChanged: streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7779
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_1b

    .line 7780
    return-void

    .line 7782
    :cond_1b
    :try_start_1b
    invoke-interface {v0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 7785
    goto :goto_25

    .line 7783
    :catch_1f
    move-exception v0

    .line 7784
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling volumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7786
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method public setA11yMode(I)V
    .registers 5
    .param p1, "a11yMode"  # I

    .line 7819
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7820
    return-void

    .line 7822
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 7825
    goto :goto_11

    .line 7823
    :catch_9
    move-exception v0

    .line 7824
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setA11Mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7826
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .registers 3
    .param p1, "controller"  # Landroid/media/IVolumeController;

    .line 7705
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 7706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 7707
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 5
    .param p1, "layoutDirection"  # I

    .line 7799
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7800
    return-void

    .line 7802
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 7805
    goto :goto_11

    .line 7803
    :catch_9
    move-exception v0

    .line 7804
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setLayoutDirection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7806
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"  # Z

    .line 7741
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 7742
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .registers 12
    .param p1, "resolvedStream"  # I
    .param p2, "flags"  # I
    .param p3, "isMute"  # Z

    .line 7715
    if-eqz p3, :cond_4

    .line 7716
    const/4 v0, 0x0

    return v0

    .line 7718
    :cond_4
    const/4 v0, 0x0

    .line 7719
    .local v0, "suppress":Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_36

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v1, :cond_36

    .line 7720
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 7721
    .local v1, "now":J
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez v3, :cond_26

    .line 7723
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_24

    .line 7724
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    .line 7726
    :cond_24
    const/4 v0, 0x1

    goto :goto_36

    .line 7727
    :cond_26
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_36

    .line 7728
    cmp-long v3, v1, v3

    if-lez v3, :cond_35

    .line 7730
    iput-wide v5, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_36

    .line 7733
    :cond_35
    const/4 v0, 0x1

    .line 7737
    .end local v1  # "now":J
    :cond_36
    :goto_36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 7758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
