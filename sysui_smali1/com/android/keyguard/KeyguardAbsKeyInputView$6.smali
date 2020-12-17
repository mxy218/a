.class Lcom/android/keyguard/KeyguardAbsKeyInputView$6;
.super Landroid/os/CountDownTimer;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->mzHandleAttemptLockout(J)V
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

    .line 554
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1002(Lcom/android/keyguard/KeyguardAbsKeyInputView;Z)Z

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 576
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    .line 578
    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 579
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordFreeze:Z

    return-void
.end method

.method public onTick(J)V
    .registers 7

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L  # 1000.0

    div-double/2addr p1, v0

    .line 558
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 559
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$800(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result p2

    if-nez p2, :cond_51

    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$900(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Z

    move-result p2

    if-eqz p2, :cond_51

    if-lez p1, :cond_51

    const/4 p2, 0x0

    const/16 v0, 0x3c

    const/4 v1, 0x1

    if-le p1, v0, :cond_40

    .line 561
    div-int/lit8 v2, p1, 0x3c

    .line 562
    rem-int/2addr p1, v0

    .line 563
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/systemui/R$string;->kg_too_many_failed_high_attempts_countdown:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 564
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    .line 563
    invoke-interface {p0, v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    goto :goto_51

    .line 566
    :cond_40
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/systemui/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v2, v1, [Ljava/lang/Object;

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    .line 566
    invoke-interface {p0, v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    :cond_51
    :goto_51
    return-void
.end method
