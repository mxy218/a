.class Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;
.super Landroid/os/Handler;
.source "UnderScreenFingerprintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_1b

    .line 68
    :cond_9
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_1b

    :cond_f
    const-string p1, "UnderScreenFingerprintView"

    const-string v0, "finger down duration start"

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;->this$0:Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_1b
    return-void
.end method
