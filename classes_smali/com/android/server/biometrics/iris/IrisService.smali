.class public Lcom/android/server/biometrics/iris/IrisService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "IrisService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IrisService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .registers 3

    .line 124
    const/4 p1, 0x0

    return p1
.end method

.method protected checkUseBiometricPermission()V
    .registers 1

    .line 120
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation

    .line 129
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getHalDeviceId()J
    .registers 3

    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .registers 2

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLockoutMode()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .registers 2

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .registers 2

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "IrisService"

    return-object v0
.end method

.method protected hasEnrolledBiometrics(I)Z
    .registers 2

    .line 109
    const/4 p1, 0x0

    return p1
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .registers 2

    .line 84
    const/4 p1, 0x0

    return p1
.end method

.method public onStart()V
    .registers 1

    .line 59
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 60
    return-void
.end method

.method protected statsModality()I
    .registers 2

    .line 134
    const/4 v0, 0x2

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .registers 3

    .line 90
    return-void
.end method
