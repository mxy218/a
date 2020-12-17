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
    .param p1, "this$0"  # Lcom/android/server/VibratorService;

    .line 1490
    iput-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .registers 7
    .param p1, "vib"  # Landroid/os/ExternalVibration;

    .line 1495
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1800(Lcom/android/server/VibratorService;)Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_b

    .line 1496
    return v1

    .line 1498
    :cond_b
    nop

    .line 1499
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v0

    const/4 v2, -0x1

    .line 1498
    const/4 v3, 0x1

    const-string v4, "android.permission.VIBRATE"

    invoke-static {v4, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_47

    .line 1501
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

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return v1

    .line 1508
    :cond_47
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1509
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 1510
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    if-nez v1, :cond_6c

    .line 1514
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)V

    .line 1515
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, v3}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;Z)V

    .line 1525
    :cond_6c
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, p1}, Lcom/android/server/VibratorService;->access$1902(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 1526
    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/VibratorService$ExternalVibratorService;Lcom/android/server/VibratorService$1;)V

    iput-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 1527
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v1, v2}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1528
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)I

    move-result v2

    if-le v1, v2, :cond_9f

    .line 1529
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1531
    :cond_9f
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1533
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing external vibration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_be
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    .line 1539
    .local v1, "usage":I
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$800(I)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 1540
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v2

    .line 1541
    .local v2, "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)I

    move-result v3

    .local v3, "currentIntensity":I
    goto :goto_116

    .line 1542
    .end local v2  # "defaultIntensity":I
    .end local v3  # "currentIntensity":I
    :cond_dd
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 1543
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v2

    .line 1544
    .restart local v2  # "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;)I

    move-result v3

    .restart local v3  # "currentIntensity":I
    goto :goto_116

    .line 1545
    .end local v2  # "defaultIntensity":I
    .end local v3  # "currentIntensity":I
    :cond_f4
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 1546
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v2

    .line 1547
    .restart local v2  # "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)I

    move-result v3

    .restart local v3  # "currentIntensity":I
    goto :goto_116

    .line 1548
    .end local v2  # "defaultIntensity":I
    .end local v3  # "currentIntensity":I
    :cond_10b
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$900(I)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 1549
    const/4 v2, 0x3

    .line 1550
    .restart local v2  # "defaultIntensity":I
    const/4 v3, 0x3

    .restart local v3  # "currentIntensity":I
    goto :goto_116

    .line 1552
    .end local v2  # "defaultIntensity":I
    .end local v3  # "currentIntensity":I
    :cond_114
    const/4 v2, 0x0

    .line 1553
    .restart local v2  # "defaultIntensity":I
    const/4 v3, 0x0

    .line 1555
    .restart local v3  # "currentIntensity":I
    :goto_116
    sub-int/2addr v3, v2

    .line 1556
    .end local v1  # "usage":I
    .end local v2  # "defaultIntensity":I
    .local v3, "scaleLevel":I
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_4e .. :try_end_118} :catchall_13f

    .line 1557
    const/4 v0, -0x2

    if-lt v3, v0, :cond_11f

    const/4 v0, 0x2

    if-gt v3, v0, :cond_11f

    .line 1558
    return v3

    .line 1562
    :cond_11f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in scaling calculations, ended up with invalid scale level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v0, 0x0

    return v0

    .line 1556
    .end local v3  # "scaleLevel":I
    :catchall_13f
    move-exception v1

    :try_start_140
    monitor-exit v0
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw v1
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 6
    .param p1, "vib"  # Landroid/os/ExternalVibration;

    .line 1570
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1571
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1572
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v1, v2}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1573
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 1574
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2, v1}, Lcom/android/server/VibratorService;->access$1902(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 1575
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;Z)V

    .line 1577
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping external vibration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_42
    monitor-exit v0

    .line 1581
    return-void

    .line 1580
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v1
.end method
