.class Lcom/android/server/policy/FlymeConfirmPasswordView$6;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FlymeConfirmPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;

    .line 429
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 3
    .param p1, "acquireInfo"  # I

    .line 456
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$1500(Lcom/android/server/policy/FlymeConfirmPasswordView;I)V

    .line 457
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "errMsgId"  # I
    .param p2, "errString"  # Ljava/lang/CharSequence;

    .line 451
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$1400(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V

    .line 452
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$1000(Lcom/android/server/policy/FlymeConfirmPasswordView;)V

    .line 434
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "helpMsgId"  # I
    .param p2, "helpString"  # Ljava/lang/CharSequence;

    .line 446
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$1300(Lcom/android/server/policy/FlymeConfirmPasswordView;ILjava/lang/String;)V

    .line 447
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 4
    .param p1, "result"  # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 440
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$1102(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z

    .line 441
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$6;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0, p1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$1200(Lcom/android/server/policy/FlymeConfirmPasswordView;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 442
    return-void
.end method
