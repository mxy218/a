.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$16;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->notifyHal(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 1331
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$16;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "resultCode"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1334
    .local p2, "out_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return-void
.end method
