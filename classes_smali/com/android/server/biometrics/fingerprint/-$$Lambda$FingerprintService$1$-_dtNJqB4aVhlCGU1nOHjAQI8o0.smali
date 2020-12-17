.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:J

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IJI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iput p2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$1:I

    iput-wide p3, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$2:J

    iput p5, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$0:Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$1:I

    iget-wide v2, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$2:J

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$-_dtNJqB4aVhlCGU1nOHjAQI8o0;->f$3:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->lambda$onAcquired$1$FingerprintService$1(IJI)V

    return-void
.end method
