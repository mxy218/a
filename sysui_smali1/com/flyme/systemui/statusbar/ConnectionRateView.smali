.class public Lcom/flyme/systemui/statusbar/ConnectionRateView;
.super Landroid/widget/LinearLayout;
.source "ConnectionRateView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurrentColor:I

.field private mCurrentRate:D

.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mEnable:Z

.field private mMaxWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShow:Z

.field private mTextSize:I

.field private mUnitView:Landroid/widget/ImageView;

.field private mWifiConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "ConnectionRateView"

    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mEnable:Z

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentColor:I

    const-wide/16 p1, 0x0

    .line 48
    iput-wide p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentRate:D

    return-void
.end method

.method private getPaint()Landroid/graphics/Paint;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_24

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 85
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 87
    :cond_24
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private updateConnectionRate(D)V
    .registers 10

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const-wide v3, 0x408f400000000000L  # 1000.0

    if-lez v2, :cond_12

    cmpg-double v2, p1, v3

    if-gez v2, :cond_12

    .line 136
    sget v0, Lcom/android/systemui/R$drawable;->status_bar_rate_unit_k:I

    goto :goto_2a

    :cond_12
    cmpl-double v2, p1, v3

    if-ltz v2, :cond_25

    const-wide v2, 0x412f400000000000L  # 1024000.0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_25

    .line 138
    sget v0, Lcom/android/systemui/R$drawable;->status_bar_rate_unit_m:I

    const-wide/high16 v1, 0x4090000000000000L  # 1024.0

    div-double/2addr p1, v1

    goto :goto_2a

    .line 142
    :cond_25
    sget p1, Lcom/android/systemui/R$drawable;->status_bar_rate_unit_k:I

    move-wide v5, v0

    move v0, p1

    move-wide p1, v5

    .line 145
    :goto_2a
    iput-wide p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentRate:D

    .line 146
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    if-eqz p1, :cond_36

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_36
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 92
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 94
    new-instance v0, Lcom/meizu/nightmode/NightModeParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/nightmode/NightModeParams;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setNightModeParams(Lcom/meizu/nightmode/NightModeParams;)V

    .line 95
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentRate:D

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareDoubleValue(DD)Z

    move-result v0

    const-string v1, "0.00"

    if-eqz v0, :cond_34

    goto :goto_5e

    .line 102
    :cond_34
    iget-wide v2, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentRate:D

    const-wide/high16 v4, 0x4024000000000000L  # 10.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3d

    goto :goto_5e

    :cond_3d
    cmpl-double v0, v2, v4

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    if-ltz v0, :cond_4a

    cmpg-double v0, v2, v4

    if-gez v0, :cond_4a

    const-string v1, "00.0"

    goto :goto_5e

    .line 106
    :cond_4a
    iget-wide v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentRate:D

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_5c

    const-wide v2, 0x408f400000000000L  # 1000.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5c

    const-string v1, "000"

    goto :goto_5e

    :cond_5c
    const-string v1, ""

    .line 109
    :goto_5e
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    if-eqz v0, :cond_88

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mShow:Z

    if-eqz v1, :cond_88

    .line 112
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 113
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 114
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mDecimalFormat:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentRate:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_88
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 66
    sget v0, Lcom/android/systemui/R$id;->unit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->connection_rate_view_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mMaxWidth:I

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_connection_rate_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mTextSize:I

    .line 69
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_connection_rate_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mTextSize:I

    .line 122
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mWifiConnected:Z

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->onWifiConnectionChange(Z)V

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

.method public onConnectionRateChange(ZD)V
    .registers 7

    .line 154
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionRateChange: btcr,show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_30

    .line 156
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mEnable:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    goto :goto_32

    :cond_30
    const/16 v0, 0x8

    :goto_32
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mShow:Z

    if-eqz p1, :cond_3c

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/flyme/systemui/statusbar/ConnectionRateView;->updateConnectionRate(D)V

    :cond_3c
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 183
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 184
    iget p2, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentColor:I

    if-eq p2, p1, :cond_12

    .line 185
    iput p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentColor:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 187
    iget p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mCurrentColor:I

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setColorFilter(Landroid/view/ViewGroup;I)V

    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 76
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public onWifiConnectionChange(Z)V
    .registers 4

    .line 165
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mWifiConnected:Z

    if-eq v0, p1, :cond_18

    .line 166
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->mWifiConnected:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->notification_status_icon_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_15

    :cond_14
    move p1, v0

    .line 169
    :goto_15
    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_18
    return-void
.end method

.method public setTAG(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/ConnectionRateView;->TAG:Ljava/lang/String;

    return-void
.end method
