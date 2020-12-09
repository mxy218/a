.class final Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockoutReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V
    .registers 3

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 124
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting lockout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 126
    const/4 p1, 0x0

    const-string v0, "lockout_reset_user"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 127
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V

    .line 129
    :cond_3a
    return-void
.end method
