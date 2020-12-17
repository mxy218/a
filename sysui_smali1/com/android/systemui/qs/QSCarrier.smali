.class public Lcom/android/systemui/qs/QSCarrier;
.super Landroid/widget/LinearLayout;
.source "QSCarrier.java"


# instance fields
.field private mCarrierText:Landroid/widget/TextView;

.field private mColorForegroundIntensity:F

.field private mColorForegroundStateList:Landroid/content/res/ColorStateList;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mMobileGroup:Landroid/view/View;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSignal:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private hasValidTypeContentDescription(Ljava/lang/String;)Z
    .registers 4

    .line 103
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->cell_data_off_content_description:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->not_default_data_content_description:I

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    :goto_2e
    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->mobile_combo:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileGroup:Landroid/view/View;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->mobile_signal:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/android/systemui/R$id;->mobile_roaming:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    .line 66
    sget v0, Lcom/android/systemui/R$id;->qs_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 70
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSCarrier;->mColorForegroundStateList:Landroid/content/res/ColorStateList;

    .line 71
    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSCarrier;->mColorForegroundIntensity:F

    return-void
.end method

.method public setCarrierText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;)V
    .registers 6

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileGroup:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->visible:Z

    if-eqz v0, :cond_7c

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->roaming:Z

    if-eqz v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    iget v1, p0, Lcom/android/systemui/qs/QSCarrier;->mColorForegroundIntensity:F

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v0

    .line 78
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->mobileSignalIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    iget-object v1, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->contentDescription:Ljava/lang/String;

    const-string v2, ", "

    if-eqz v1, :cond_58

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_58
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->roaming:Z

    if-eqz v1, :cond_6a

    .line 90
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->data_connection_roaming:I

    .line 91
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_6a
    iget-object v1, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSCarrier;->hasValidTypeContentDescription(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 96
    iget-object p1, p1, Lcom/android/systemui/qs/QSCarrierGroup$CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_77
    iget-object p0, p0, Lcom/android/systemui/qs/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7c
    return-void
.end method
