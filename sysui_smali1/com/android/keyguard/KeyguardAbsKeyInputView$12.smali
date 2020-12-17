.class Lcom/android/keyguard/KeyguardAbsKeyInputView$12;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 2

    .line 997
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 8

    .line 1021
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 1022
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    .line 1024
    :cond_a
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mRecongnizeFail:Z

    .line 1026
    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 1027
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$2000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 1028
    invoke-static {}, Lcom/meizu/keyguard/FlymeFeatureUtil;->getInstance()Lcom/meizu/keyguard/FlymeFeatureUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/keyguard/FlymeFeatureUtil;->hasSupprot()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 1029
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$2000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 p0, 0x791b

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "com.android.systemui"

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    goto :goto_b7

    .line 1032
    :cond_4a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$2000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/Vibrator;

    move-result-object p0

    const/4 p1, 0x3

    new-array p1, p1, [J

    fill-array-data p1, :array_b8

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_b7

    .line 1035
    :cond_5b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_b7

    .line 1036
    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/systemui/R$string;->kg_password_instructions:I

    invoke-interface {p1, v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 1039
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$2100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutTimeCount()I

    move-result p1

    if-lez p1, :cond_97

    .line 1040
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/systemui/R$string;->kg_fp_too_many_failed_attempts_countdown:I

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1041
    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$2200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutTimeCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 1040
    invoke-interface {v1, v2, v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_b0

    .line 1042
    :cond_97
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$2300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 1043
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 1044
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/systemui/R$string;->keyguard_fingerprint_not_match:I

    invoke-interface {p1, v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 1047
    :cond_b0
    :goto_b0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showRecongnizeFailAnim(Landroid/view/View;)V

    :cond_b7
    :goto_b7
    return-void

    :array_b8
    .array-data 8
        0x64
        0x1e
        0x12c
    .end array-data
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 6

    .line 1054
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBiometricError ,msgId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , string: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KeyguardAbsInputView"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :try_start_22
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$2400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager;->getLockoutTimeCount()I

    move-result p2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_46

    .line 1058
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_3d

    .line 1059
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    :cond_3d
    if-lez p2, :cond_71

    .line 1062
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleFPAttemptLockout(J)V

    goto :goto_71

    :cond_46
    const/16 v0, 0x9

    if-ne p1, v0, :cond_63

    .line 1065
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/systemui/R$string;->keyguard_fp_permanent_lockout:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 1066
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_71

    .line 1067
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    goto :goto_71

    .line 1070
    :cond_63
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_71

    .line 1071
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    .line 1074
    :cond_71
    :goto_71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onFingerprintError timeout "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p0

    .line 1076
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_8a
    return-void
.end method

.method public onFingerprintAuthenticated(II)V
    .registers 5

    .line 1001
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/CountDownTimer;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_17

    .line 1002
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 1003
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1702(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 1005
    :cond_17
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1002(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z

    .line 1006
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$802(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z

    .line 1007
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1202(Lcom/android/keyguard/KeyguardAbsKeyInputView;I)I

    .line 1008
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordFreeze:Z

    .line 1009
    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 1010
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 1011
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1802(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 1013
    :cond_40
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_55

    .line 1014
    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onVerifyCallback(I)V

    .line 1015
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    :cond_55
    return-void
.end method

.method public onThemeChanged()V
    .registers 2

    .line 1082
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->initThemeValues()V

    .line 1083
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setThemeValues()V

    return-void
.end method
