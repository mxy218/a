.class public Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "UnderScreenFingerprintView.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHanlder:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;-><init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;)V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;->mHanlder:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p2, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView$1;-><init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;)V

    iput-object p2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;->mHanlder:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public fpCancelAnimation()V
    .registers 1

    return-void
.end method

.method public startDownAnimation()V
    .registers 1

    return-void
.end method

.method public startShowFpAnimation()V
    .registers 1

    return-void
.end method
