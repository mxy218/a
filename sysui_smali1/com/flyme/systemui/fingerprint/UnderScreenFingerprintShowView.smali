.class public Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "UnderScreenFingerprintShowView.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p1, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;-><init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;)V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView$1;-><init>(Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;)V

    iput-object p2, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintShowView;->mContext:Landroid/content/Context;

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
