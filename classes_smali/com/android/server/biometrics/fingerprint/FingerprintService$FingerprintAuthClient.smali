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
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "daemon"  # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"  # J
    .param p6, "token"  # Landroid/os/IBinder;
    .param p7, "listener"  # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "targetUserId"  # I
    .param p9, "groupId"  # I
    .param p10, "opId"  # J
    .param p12, "restricted"  # Z
    .param p13, "owner"  # Ljava/lang/String;
    .param p14, "cookie"  # I
    .param p15, "requireConfirmation"  # Z

    .line 151
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 152
    invoke-direct/range {p0 .. p15}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleFailedAttempt()I
    .registers 5

    .line 180
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 181
    .local v0, "currentUser":I
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

    .line 182
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 184
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-eqz v1, :cond_34

    .line 185
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 188
    :cond_34
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->handleFailedAttempt()I

    move-result v1

    return v1
.end method

.method protected isFingerprint()Z
    .registers 2

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public resetFailedAttempts()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 164
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 163
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V

    .line 165
    return-void
.end method

.method public shouldFrameworkHandleLockout()Z
    .registers 2

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method protected statsModality()I
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->statsModality()I

    move-result v0

    return v0
.end method

.method public wasUserDetected()Z
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method
