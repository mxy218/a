.class Lcom/android/settings/password/BiometricFragment$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAuthenticationError$0$BiometricFragment$1(ILjava/lang/CharSequence;)V
    .registers 3

    .line 69
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationSucceeded$1$BiometricFragment$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 5
    .param p2  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/BiometricFragment;->access$002(Lcom/android/settings/password/BiometricFragment;Z)Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;-><init>(Lcom/android/settings/password/BiometricFragment$1;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$200(Lcom/android/settings/password/BiometricFragment;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/BiometricFragment;->access$002(Lcom/android/settings/password/BiometricFragment;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$VRGQlQZZYr0QoD3OQpS9MEP5Z08;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$VRGQlQZZYr0QoD3OQpS9MEP5Z08;-><init>(Lcom/android/settings/password/BiometricFragment$1;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$200(Lcom/android/settings/password/BiometricFragment;)V

    return-void
.end method
