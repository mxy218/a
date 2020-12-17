.class Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;
.super Landroid/os/Handler;
.source "UnderScreenFingerprintShowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 61
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const-string v1, "UnderScreenFingerprintShowView"

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    goto :goto_20

    :cond_b
    const-string p1, "cancelAnimation"

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_20

    :cond_16
    const-string p1, "finger show duration start"

    .line 63
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_20
    return-void
.end method
