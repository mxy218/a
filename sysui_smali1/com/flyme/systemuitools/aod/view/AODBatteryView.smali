.class public Lcom/flyme/systemuitools/aod/view/AODBatteryView;
.super Landroid/view/View;
.source "AODBatteryView.java"


# static fields
.field private static final DEBUG:Z

.field private static LOW_LEVEL:I


# instance fields
.field protected mBatteryCharge:Landroid/graphics/drawable/Drawable;

.field protected mBatteryLow:Landroid/graphics/drawable/Drawable;

.field protected mBatteryNormal:Landroid/graphics/drawable/Drawable;

.field protected mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

.field protected mBatteryPlugged:Landroid/graphics/drawable/Drawable;

.field protected mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

.field private mChargeLighting:Landroid/graphics/drawable/Drawable;

.field private mCharging:Z

.field private mColors:[I

.field private mLastLevel:I

.field private mLastPlugged:Z

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "AODBatteryView"

    const/4 v1, 0x3

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->DEBUG:Z

    const/16 v0, 0x8

    .line 30
    sput v0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->LOW_LEVEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastLevel:I

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mPaint:Landroid/graphics/Paint;

    .line 45
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mColors:[I

    .line 49
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->initBattery()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastLevel:I

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mPaint:Landroid/graphics/Paint;

    .line 45
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mColors:[I

    .line 147
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->initBattery()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastLevel:I

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mPaint:Landroid/graphics/Paint;

    .line 45
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mColors:[I

    .line 152
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->initBattery()V

    return-void
.end method

.method private initBattery()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 54
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->refreshResource()V

    return-void
.end method

.method private isCharge()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mCharging:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastPlugged:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private refreshResource()V
    .registers 4

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->aod_battery_normal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->aod_battery_charge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryCharge:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->aod_battery_plugged:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->aod_battery_low:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryLow:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    .line 165
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormalCore:Landroid/graphics/drawable/Drawable;

    .line 166
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryPlugged:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/android/systemui/R$id;->battery_core:I

    .line 167
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryPluggedCore:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->aod_charge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 122
    new-instance v0, Lcom/meizu/nightmode/NightModeParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/nightmode/NightModeParams;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setNightModeParams(Lcom/meizu/nightmode/NightModeParams;)V

    .line 123
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->isCharge()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 124
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 124
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_39
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->isCharge()Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_49

    :cond_48
    move v2, v1

    :goto_49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastLevel:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 132
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 136
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 86
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 87
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mBatteryNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 88
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mChargeLighting:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 89
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->isCharge()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    add-int/2addr p1, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 90
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColors([I)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mColors:[I

    return-void
.end method

.method public updateBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V
    .registers 5

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBatteryInfo level= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pluggedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODBatteryView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v0, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 61
    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->isCharged()Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 62
    :goto_3b
    iget v1, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    iget v2, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastLevel:I

    if-ne v1, v2, :cond_4d

    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastPlugged:Z

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-ne v1, v2, :cond_4d

    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mCharging:Z

    if-eq v1, v0, :cond_8e

    .line 64
    :cond_4d
    iget v1, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    iput v1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastLevel:I

    .line 65
    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->isPluggedIn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mLastPlugged:Z

    .line 66
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->mCharging:Z

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_8b

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->isCharge()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000  # 4.0f

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/utils/PixelUtil;->Dp2Px(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_88

    .line 74
    :cond_7b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000  # 10.0f

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/utils/PixelUtil;->Dp2Px(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 76
    :goto_88
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :cond_8b
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 81
    :cond_8e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
