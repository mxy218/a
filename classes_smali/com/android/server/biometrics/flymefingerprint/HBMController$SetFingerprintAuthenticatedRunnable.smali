.class Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;
.super Ljava/lang/Object;
.source "HBMController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/HBMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetFingerprintAuthenticatedRunnable"
.end annotation


# instance fields
.field private authenticated:Z

.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;Lcom/android/server/biometrics/flymefingerprint/HBMController$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;
    .param p2, "x1"  # Lcom/android/server/biometrics/flymefingerprint/HBMController$1;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;-><init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;->authenticated:Z

    if-eqz v1, :cond_9

    const-string v1, "1"

    goto :goto_b

    :cond_9
    const-string v1, "0"

    :goto_b
    const-string v2, "/sys/class/meizu/lcm/display/fp_result"

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$200(Lcom/android/server/biometrics/flymefingerprint/HBMController;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    return-void
.end method

.method public setAuthenticated(Z)V
    .registers 2
    .param p1, "success"  # Z

    .line 98
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$SetFingerprintAuthenticatedRunnable;->authenticated:Z

    .line 99
    return-void
.end method
