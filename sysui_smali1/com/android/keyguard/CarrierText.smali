.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;
    }
.end annotation


# static fields
.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field private mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field private mShouldMarquee:Z

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->CarrierText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    :try_start_15
    sget p2, Lcom/android/systemui/R$styleable;->CarrierText_allCaps:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 76
    sget v0, Lcom/android/systemui/R$styleable;->CarrierText_showAirplaneMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowAirplaneMode:Z

    .line 77
    sget v0, Lcom/android/systemui/R$styleable;->CarrierText_showMissingSim:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowMissingSim:Z
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_39

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    new-instance p1, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :catchall_39
    move-exception p0

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 121
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 103
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 104
    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextController;->setListening(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .line 86
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 89
    new-instance v0, Lcom/android/keyguard/CarrierTextController;

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/android/keyguard/CarrierText;->mShowAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/keyguard/CarrierText;->mShowMissingSim:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/CarrierTextController;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    .line 91
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShouldMarquee:Z

    .line 92
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShouldMarquee:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_b

    .line 112
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_10

    .line 114
    :cond_b
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_10
    return-void
.end method
