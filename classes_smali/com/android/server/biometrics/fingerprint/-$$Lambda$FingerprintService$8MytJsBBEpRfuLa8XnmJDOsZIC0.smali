.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$8MytJsBBEpRfuLa8XnmJDOsZIC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$8MytJsBBEpRfuLa8XnmJDOsZIC0;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$8MytJsBBEpRfuLa8XnmJDOsZIC0;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->lambda$getFingerprintInScreenDaemon$0$FingerprintService(J)V

    return-void
.end method
