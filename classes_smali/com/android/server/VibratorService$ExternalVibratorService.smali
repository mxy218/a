.class final Lcom/android/server/VibratorService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalVibratorService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;
    }
.end annotation


# instance fields
.field mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    .line 1471
    iput-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .registers 7

    .line 1476
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;)Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_b

    .line 1477
    return v1

    .line 1479
    :cond_b
    nop

    .line 1480
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v0

    const/4 v2, -0x1

    .line 1479
    const/4 v3, 0x1

    const-string v4, "android.permission.VIBRATE"

    invoke-static {v4, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_47

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VibratorService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return v1

    .line 1489
    :cond_47
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1490
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 1491
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    if-nez v1, :cond_6c

    .line 1495
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 1496
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, v3}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;Z)V

    .line 1506
    :cond_6c
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, p1}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 1507
    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/VibratorService$ExternalVibratorService;Lcom/android/server/VibratorService$1;)V

    iput-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 1508
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v1, v2}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1509
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;)I

    move-result v2

    if-le v1, v2, :cond_9f

    .line 1510
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1512
    :cond_9f
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1517
    :cond_a8
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    .line 1520
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(I)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_c9

    .line 1521
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v3

    .line 1522
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)I

    move-result v1

    goto :goto_103

    .line 1523
    :cond_c9
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 1524
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v3

    .line 1525
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)I

    move-result v1

    goto :goto_103

    .line 1526
    :cond_e0
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(I)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1527
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v3

    .line 1528
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)I

    move-result v1

    goto :goto_103

    .line 1529
    :cond_f7
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 1530
    nop

    .line 1531
    move v1, v3

    goto :goto_103

    .line 1533
    :cond_100
    nop

    .line 1534
    move v1, v4

    move v3, v1

    .line 1536
    :goto_103
    sub-int/2addr v1, v3

    .line 1537
    monitor-exit v0
    :try_end_105
    .catchall {:try_start_4e .. :try_end_105} :catchall_12b

    .line 1538
    const/4 v0, -0x2

    if-lt v1, v0, :cond_10c

    const/4 v0, 0x2

    if-gt v1, v0, :cond_10c

    .line 1539
    return v1

    .line 1543
    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in scaling calculations, ended up with invalid scale level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VibratorService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return v4

    .line 1537
    :catchall_12b
    move-exception p1

    :try_start_12c
    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12b

    throw p1
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 4

    .line 1551
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1552
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1553
    iget-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1554
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 1555
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, p1}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 1556
    iget-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;Z)V

    .line 1561
    :cond_2c
    monitor-exit v0

    .line 1562
    return-void

    .line 1561
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p1
.end method
