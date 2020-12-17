.class Lcom/android/keyguard/KeyguardAbsKeyInputView$7;
.super Landroid/os/CountDownTimer;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleFPAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V
    .registers 6

    .line 688
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 706
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$802(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z

    .line 707
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 708
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    .line 711
    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnderFingerprint()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 712
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    :cond_38
    return-void
.end method

.method public onTick(J)V
    .registers 6

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFPAttemptLockout onTick millisUntilFinished = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFPTimeOutFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 694
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsInputView"

    .line 692
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L  # 1000.0

    div-double/2addr p1, v0

    .line 695
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x1

    if-lez p1, :cond_3b

    .line 696
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_43

    :cond_3b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 697
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I

    move-result v0

    if-ne v0, p2, :cond_55

    .line 698
    :cond_43
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/systemui/R$string;->kg_fp_too_many_failed_attempts_countdown:I

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 700
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 698
    invoke-interface {p0, v0, p2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    :cond_55
    return-void
.end method
