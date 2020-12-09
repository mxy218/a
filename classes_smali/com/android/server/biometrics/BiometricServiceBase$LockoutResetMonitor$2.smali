.class Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .registers 2

    .line 602
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->access$1100(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor$2;->this$1:Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$1200(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    .line 607
    return-void
.end method
