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

    .line 6640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .registers 1

    .line 6697
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_8
    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 6693
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 3

    .line 6689
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .registers 5

    .line 6654
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 6656
    return-void
.end method

.method public postDismiss()V
    .registers 4

    .line 6746
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 6747
    return-void

    .line 6749
    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 6752
    goto :goto_11

    .line 6750
    :catch_9
    move-exception v0

    .line 6751
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6753
    :goto_11
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 4

    .line 6706
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 6707
    return-void

    .line 6709
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 6712
    goto :goto_11

    .line 6710
    :catch_9
    move-exception p1

    .line 6711
    const-string v0, "VolumeController"

    const-string v1, "Error calling displaySafeVolumeWarning"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6713
    :goto_11
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .registers 4

    .line 6726
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 6727
    return-void

    .line 6729
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 6732
    goto :goto_11

    .line 6730
    :catch_9
    move-exception p1

    .line 6731
    const-string v0, "VolumeController"

    const-string v1, "Error calling masterMuteChanged"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6733
    :goto_11
    return-void
.end method

.method public postVolumeChanged(II)V
    .registers 4

    .line 6716
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 6717
    return-void

    .line 6719
    :cond_5
    :try_start_5
    invoke-interface {v0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 6722
    goto :goto_11

    .line 6720
    :catch_9
    move-exception p1

    .line 6721
    const-string p2, "VolumeController"

    const-string v0, "Error calling volumeChanged"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6723
    :goto_11
    return-void
.end method

.method public setA11yMode(I)V
    .registers 4

    .line 6756
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 6757
    return-void

    .line 6759
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 6762
    goto :goto_11

    .line 6760
    :catch_9
    move-exception p1

    .line 6761
    const-string v0, "VolumeController"

    const-string v1, "Error calling setA11Mode"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6763
    :goto_11
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .registers 2

    .line 6649
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 6650
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 6651
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 4

    .line 6736
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 6737
    return-void

    .line 6739
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 6742
    goto :goto_11

    .line 6740
    :catch_9
    move-exception p1

    .line 6741
    const-string v0, "VolumeController"

    const-string v1, "Error calling setLayoutDirection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6743
    :goto_11
    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 6685
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 6686
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .registers 10

    .line 6659
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 6660
    return v0

    .line 6662
    :cond_4
    nop

    .line 6663
    const/4 p3, 0x3

    const/4 v1, 0x1

    if-eq p1, p3, :cond_36

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz p1, :cond_36

    .line 6664
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6665
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez p1, :cond_26

    .line 6667
    iget-wide p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long p1, p1, v2

    if-gez p1, :cond_25

    .line 6668
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long p1, p1

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    .line 6670
    :cond_25
    goto :goto_37

    .line 6671
    :cond_26
    iget-wide p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v4, 0x0

    cmp-long p3, p1, v4

    if-lez p3, :cond_36

    .line 6672
    cmp-long p1, v2, p1

    if-lez p1, :cond_35

    .line 6674
    iput-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_36

    .line 6677
    :cond_35
    goto :goto_37

    .line 6681
    :cond_36
    :goto_36
    move v1, v0

    :goto_37
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 6702
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
