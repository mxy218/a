.class Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;
.super Ljava/lang/Object;
.source "IGoodixFingerprintDaemon.java"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"  # Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;

    .line 423
    iput-object p1, p0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;->this$0:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;

    iput-object p2, p0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

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

    .line 426
    .local p2, "out_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 427
    iget-object v0, p0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 428
    iget-object v0, p0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 429
    iget-object v0, p0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 430
    return-void
.end method
