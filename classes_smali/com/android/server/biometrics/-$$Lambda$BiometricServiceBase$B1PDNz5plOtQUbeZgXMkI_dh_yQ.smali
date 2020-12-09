.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/BiometricServiceBase;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iput-object p2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;->f$1:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;->f$0:Lcom/android/server/biometrics/BiometricServiceBase;

    iget-object v1, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;->f$1:Landroid/os/IBinder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$B1PDNz5plOtQUbeZgXMkI_dh_yQ;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->lambda$cancelAuthenticationInternal$4$BiometricServiceBase(Landroid/os/IBinder;Z)V

    return-void
.end method
