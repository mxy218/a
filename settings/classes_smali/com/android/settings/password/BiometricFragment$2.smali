.class Lcom/android/settings/password/BiometricFragment$2;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 85
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 88
    iget-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->access$500(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    .line 90
    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$400(Lcom/android/settings/password/BiometricFragment;)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "negative_text"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xd

    .line 88
    invoke-virtual {p1, p2, p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
