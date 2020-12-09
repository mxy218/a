.class final Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnabledOnKeyguardCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 4

    .line 534
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 537
    :try_start_7
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 540
    goto :goto_1a

    .line 538
    :catch_12
    move-exception p1

    .line 539
    const-string p2, "BiometricService"

    const-string v0, "Unable to linkToDeath"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    :goto_1a
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 556
    const-string v0, "BiometricService"

    const-string v1, "Enabled callback binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 558
    return-void
.end method

.method notify(Landroid/hardware/biometrics/BiometricSourceType;ZI)V
    .registers 6

    .line 545
    const-string v0, "BiometricService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(Landroid/hardware/biometrics/BiometricSourceType;ZI)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_7} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_1e

    .line 549
    :catch_8
    move-exception p1

    .line 550
    const-string p2, "Failed to invoke onChanged"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 546
    :catch_f
    move-exception p1

    .line 547
    const-string p2, "Death while invoking notify"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 551
    :goto_1e
    nop

    .line 552
    :goto_1f
    return-void
.end method
