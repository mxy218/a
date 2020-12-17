.class Lcom/android/settings/password/BiometricFragment$3;
.super Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;
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

    .line 96
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$3;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$3;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_13

    :cond_c
    const-string p0, "ConfirmDeviceCredential/BiometricFragment"

    const-string v0, "Activity null!"

    .line 103
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method
