.class final Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;
.super Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintAuthClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .registers 16

    .line 142
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 143
    invoke-direct/range {p0 .. p15}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleFailedAttempt()I
    .registers 5

    .line 171
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 175
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-eqz v1, :cond_34

    .line 176
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 179
    :cond_34
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->handleFailedAttempt()I

    move-result v0

    return v0
.end method

.method protected isFingerprint()Z
    .registers 2

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public resetFailedAttempts()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 155
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 154
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V

    .line 156
    return-void
.end method

.method public shouldFrameworkHandleLockout()Z
    .registers 2

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method protected statsModality()I
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->statsModality()I

    move-result v0

    return v0
.end method

.method public wasUserDetected()Z
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method
