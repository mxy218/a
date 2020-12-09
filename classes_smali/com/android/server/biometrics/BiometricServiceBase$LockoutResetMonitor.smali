.class final Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockoutResetMonitor"
.end annotation


# static fields
.field private static final WAKELOCK_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private final mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

.field private final mRemoveCallbackRunnable:Ljava/lang/Runnable;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 5

    .line 571
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;-><init>(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    .line 572
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 573
    invoke-static {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$1000(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/os/PowerManager;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "lockout reset callback"

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 576
    :try_start_1b
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    invoke-interface {p2}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26

    .line 579
    goto :goto_30

    .line 577
    :catch_26
    move-exception p2

    .line 578
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "caught remote exception in linkToDeath"

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    :goto_30
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 1

    .line 566
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->releaseWakelock()V

    return-void
.end method

.method private releaseWakelock()V
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 618
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 620
    :cond_d
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 612
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lockout reset callback binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method

.method public sendLockoutReset()V
    .registers 5

    .line 583
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    if-eqz v0, :cond_41

    .line 585
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 586
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v1

    new-instance v3, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$1;-><init>(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;->onLockoutReset(JLandroid/os/IRemoteCallback;)V
    :try_end_1b
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_1b} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_41

    .line 595
    :catch_1c
    move-exception v0

    .line 596
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->releaseWakelock()V

    goto :goto_41

    .line 592
    :catch_2c
    move-exception v0

    .line 593
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Death object while invoking onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 600
    :cond_41
    :goto_41
    return-void
.end method
