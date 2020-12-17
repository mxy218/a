.class public Lcom/flyme/systemui/BatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;
    }
.end annotation


# instance fields
.field private mAnimOffset:I

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mListening:Z

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mSettingObserver:Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 14

    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mIconTint:I

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 76
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 78
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 80
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    .line 81
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 82
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 83
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 85
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    .line 86
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    .line 87
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    .line 98
    new-instance v2, Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/flyme/systemui/BatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;

    .line 103
    iput v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mLevel:I

    .line 111
    new-instance v0, Lcom/flyme/systemui/BatteryMeterDrawable$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/BatteryMeterDrawable$1;-><init>(Lcom/flyme/systemui/BatteryMeterDrawable;)V

    iput-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    .line 119
    iput-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 122
    sget v0, Lcom/android/systemui/R$array;->batterymeter_color_levels:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    sget v2, Lcom/android/systemui/R$array;->batterymeter_color_values:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    .line 126
    new-array v4, v4, [I

    iput-object v4, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v4, 0x0

    move v5, v4

    :goto_78
    const/4 v6, 0x1

    if-ge v5, v3, :cond_91

    .line 128
    iget-object v7, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v7, v8

    .line 129
    iget-object v7, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mColors:[I

    add-int/2addr v8, v6

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 131
    :cond_91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-direct {p0}, Lcom/flyme/systemui/BatteryMeterDrawable;->updateShowPercent()V

    .line 134
    sget v0, Lcom/android/systemui/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_button_height_fraction:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_subpixel_smoothing_left:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$fraction;->battery_subpixel_smoothing_right:I

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 147
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    .line 151
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 152
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string p3, "sans-serif-condensed"

    .line 156
    invoke-static {p3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 158
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 161
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mColors:[I

    aget v0, v0, v6

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const-string p3, "sans-serif"

    .line 162
    invoke-static {p3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    .line 163
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 164
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 166
    sget p3, Lcom/android/systemui/R$color;->batterymeter_charge_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mChargeColor:I

    .line 168
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 169
    iget-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/systemui/R$color;->batterymeter_bolt_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-static {p2}, Lcom/flyme/systemui/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object p3

    iput-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    .line 172
    new-instance p3, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    .line 173
    invoke-static {p2}, Lcom/flyme/systemui/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    .line 175
    sget p2, Lcom/android/systemui/R$color;->dark_mode_icon_color_dual_tone_background:I

    .line 176
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 177
    sget p2, Lcom/android/systemui/R$color;->dark_mode_icon_color_dual_tone_fill:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 178
    sget p2, Lcom/android/systemui/R$color;->light_mode_icon_color_dual_tone_background:I

    .line 179
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    .line 180
    sget p2, Lcom/android/systemui/R$color;->light_mode_icon_color_dual_tone_fill:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->battery_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->battery_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 186
    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 187
    iget-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz p1, :cond_1c0

    .line 188
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    :cond_1c0
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/BatteryMeterDrawable;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/flyme/systemui/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/BatteryMeterDrawable;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/flyme/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method private getColorForLevel(I)I
    .registers 6

    .line 306
    iget-boolean v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_c

    .line 307
    iget-object p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mColors:[I

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    .line 310
    :goto_e
    iget-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_28

    .line 311
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 312
    aget v3, v2, v3

    if-gt p1, v1, :cond_24

    .line 316
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_23

    .line 317
    iget p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mIconTint:I

    return p0

    :cond_23
    return v3

    :cond_24
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_e

    :cond_28
    return v1
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .registers 8

    .line 260
    sget v0, Lcom/android/systemui/R$array;->batterymeter_bolt_points:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 262
    :goto_a
    array-length v4, p0

    if-ge v1, v4, :cond_1e

    .line 263
    aget v4, p0, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 264
    aget v4, p0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_a

    .line 266
    :cond_1e
    array-length v1, p0

    new-array v1, v1, [F

    .line 267
    :goto_21
    array-length v4, p0

    if-ge v0, v4, :cond_37

    .line 268
    aget v4, p0, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    .line 269
    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_21

    :cond_37
    return-object v1
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .registers 8

    .line 275
    sget v0, Lcom/android/systemui/R$array;->batterymeter_plus_points:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 277
    :goto_a
    array-length v4, p0

    if-ge v1, v4, :cond_1e

    .line 278
    aget v4, p0, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    .line 279
    aget v4, p0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_a

    .line 281
    :cond_1e
    array-length v1, p0

    new-array v1, v1, [F

    .line 282
    :goto_21
    array-length v4, p0

    if-ge v0, v4, :cond_37

    .line 283
    aget v4, p0, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v4, v0, 0x1

    .line 284
    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_21

    :cond_37
    return-object v1
.end method

.method private postInvalidate()V
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateChargingAnimLevel()I
    .registers 5

    .line 240
    iget v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mLevel:I

    .line 241
    iget-boolean v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mCharging:Z

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 242
    iput v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mAnimOffset:I

    .line 243
    iget-object v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 245
    :cond_11
    iget v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    const/16 v3, 0x60

    if-lt v0, v3, :cond_1d

    const/16 v0, 0x64

    .line 248
    iput v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_21

    :cond_1d
    add-int/lit8 v1, v1, 0xa

    .line 250
    iput v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mAnimOffset:I

    .line 253
    :goto_21
    iget-object v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_31
    return v0
.end method

.method private updateShowPercent()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "status_bar_show_battery_percent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    iput-boolean v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShowPercent:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 356
    iget-object v2, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->config_show_battery_charging_anim:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/flyme/systemui/BatteryMeterDrawable;->updateChargingAnimLevel()I

    move-result v2

    goto :goto_19

    .line 360
    :cond_17
    iget v2, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mLevel:I

    :goto_19
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    return-void

    :cond_1d
    int-to-float v3, v2

    const/high16 v4, 0x42c80000  # 100.0f

    div-float/2addr v3, v4

    .line 365
    iget v4, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHeight:I

    const v5, 0x3f27b961

    int-to-float v6, v4

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 367
    iget v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWidth:I

    sub-int/2addr v6, v5

    const/4 v7, 0x2

    div-int/2addr v6, v7

    int-to-float v4, v4

    .line 369
    iget v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v8, v4

    float-to-int v8, v8

    .line 371
    iget-object v9, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v5, v5

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 372
    iget-object v9, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v6, v6

    invoke-virtual {v9, v6, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 375
    iget-object v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x3e800000  # 0.25f

    mul-float/2addr v5, v11

    .line 376
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    iget-object v11, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->top:F

    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 378
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v11, v5

    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v8, v8

    add-float/2addr v5, v8

    .line 375
    invoke-virtual {v6, v9, v12, v11, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 381
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v9, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 382
    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 383
    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v11, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v11

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 386
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 387
    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 388
    iget v6, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 389
    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v11

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 390
    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v11

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 393
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-boolean v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v6, :cond_9d

    iget v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mChargeColor:I

    goto :goto_a1

    :cond_9d
    invoke-direct {v0, v2}, Lcom/flyme/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v6

    :goto_a1
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v5, 0x60

    const/high16 v6, 0x3f800000  # 1.0f

    if-lt v2, v5, :cond_ac

    move v3, v6

    goto :goto_b1

    .line 397
    :cond_ac
    iget v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    if-gt v2, v5, :cond_b1

    move v3, v10

    .line 401
    :cond_b1
    :goto_b1
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result v5

    if-eqz v5, :cond_c2

    iget-object v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_cf

    .line 402
    :cond_c2
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v3, v6, v3

    mul-float/2addr v5, v3

    add-float v3, v8, v5

    .line 405
    :goto_cf
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 406
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 407
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 411
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 412
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 413
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 416
    iget-boolean v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    const v8, 0x3e99999a  # 0.3f

    const/4 v9, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_22b

    .line 418
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v12, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v13, 0x40800000  # 4.0f

    div-float/2addr v5, v13

    add-float/2addr v12, v5

    .line 419
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v14, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v15, 0x40c00000  # 6.0f

    div-float/2addr v5, v15

    add-float/2addr v14, v5

    .line 420
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v13

    sub-float/2addr v15, v5

    .line 421
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v16, 0x41200000  # 10.0f

    div-float v5, v5, v16

    sub-float/2addr v13, v5

    .line 422
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_18d

    iget v7, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v14

    if-nez v7, :cond_18d

    iget v7, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v15

    if-nez v7, :cond_18d

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v13

    if-eqz v5, :cond_201

    .line 424
    :cond_18d
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5, v12, v14, v15, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 425
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 426
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    aget v13, v13, v9

    .line 427
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v7, Landroid/graphics/RectF;->top:F

    iget-object v14, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    aget v14, v14, v11

    .line 428
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    .line 426
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v5, 0x2

    .line 429
    :goto_1b9
    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    array-length v12, v7

    if-ge v5, v12, :cond_1e2

    .line 430
    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v13, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v14, v13, Landroid/graphics/RectF;->left:F

    aget v7, v7, v5

    .line 431
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v7, v13

    add-float/2addr v14, v7

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v7, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v16, v5, 0x1

    aget v15, v15, v16

    .line 432
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v15, v7

    add-float/2addr v13, v15

    .line 430
    invoke-virtual {v12, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_1b9

    .line 434
    :cond_1e2
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    aget v7, v7, v9

    .line 435
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float/2addr v7, v12

    add-float/2addr v13, v7

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/RectF;->top:F

    iget-object v14, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    aget v14, v14, v11

    .line 436
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v14, v7

    add-float/2addr v12, v14

    .line 434
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 439
    :cond_201
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v12, v7, v3

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v5

    div-float/2addr v12, v7

    .line 440
    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_220

    .line 443
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_31f

    .line 446
    :cond_220
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_31f

    .line 448
    :cond_22b
    iget-boolean v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v5, :cond_31f

    .line 450
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v7, 0x40000000  # 2.0f

    mul-float/2addr v5, v7

    const/high16 v12, 0x40400000  # 3.0f

    div-float/2addr v5, v12

    .line 451
    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v5

    div-float/2addr v12, v7

    add-float/2addr v13, v12

    .line 452
    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v14, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    sub-float/2addr v12, v5

    div-float/2addr v12, v7

    add-float/2addr v14, v12

    .line 453
    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v5

    div-float/2addr v12, v7

    sub-float/2addr v15, v12

    .line 454
    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    sub-float/2addr v12, v5

    div-float/2addr v12, v7

    sub-float/2addr v8, v12

    .line 455
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v13

    if-nez v7, :cond_281

    iget v7, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v14

    if-nez v7, :cond_281

    iget v7, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v15

    if-nez v7, :cond_281

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_2f5

    .line 457
    :cond_281
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v5, v13, v14, v15, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 458
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 459
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    aget v12, v12, v9

    .line 460
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v12, v7

    add-float/2addr v8, v12

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    aget v13, v13, v11

    .line 461
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    .line 459
    invoke-virtual {v5, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v5, 0x2

    .line 462
    :goto_2ad
    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    array-length v8, v7

    if-ge v5, v8, :cond_2d6

    .line 463
    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v13, v12, Landroid/graphics/RectF;->left:F

    aget v7, v7, v5

    .line 464
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float/2addr v7, v12

    add-float/2addr v13, v7

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/RectF;->top:F

    iget-object v14, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    add-int/lit8 v15, v5, 0x1

    aget v14, v14, v15

    .line 465
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v14, v7

    add-float/2addr v12, v14

    .line 463
    invoke-virtual {v8, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_2ad

    .line 467
    :cond_2d6
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->left:F

    aget v7, v7, v9

    .line 468
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v12, v7

    iget-object v7, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    aget v13, v13, v11

    .line 469
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v13, v7

    add-float/2addr v8, v13

    .line 467
    invoke-virtual {v5, v12, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    :cond_2f5
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v7, v3

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v5

    div-float/2addr v8, v7

    .line 473
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, 0x3e99999a  # 0.3f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_316

    .line 476
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_31f

    .line 479
    :cond_316
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_31f
    :goto_31f
    const/4 v5, 0x0

    .line 487
    iget-boolean v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    const/high16 v7, 0x3f000000  # 0.5f

    if-nez v6, :cond_392

    iget-boolean v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-nez v6, :cond_392

    iget v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    if-le v2, v6, :cond_392

    iget-boolean v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShowPercent:Z

    if-eqz v6, :cond_392

    .line 488
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Lcom/flyme/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    iget-object v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 491
    iget v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mLevel:I

    const/16 v8, 0x64

    if-ne v6, v8, :cond_347

    const v6, 0x3ec28f5c  # 0.38f

    goto :goto_348

    :cond_347
    move v6, v7

    :goto_348
    mul-float/2addr v4, v6

    .line 489
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 492
    iget-object v4, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    iput v4, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextHeight:F

    .line 493
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 494
    iget v5, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    .line 495
    iget v6, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v6, v6

    iget v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextHeight:F

    add-float/2addr v6, v8

    const v8, 0x3ef0a3d7  # 0.47f

    mul-float/2addr v6, v8

    cmpl-float v8, v3, v6

    if-lez v8, :cond_36e

    move v9, v11

    :cond_36e
    if-nez v9, :cond_395

    .line 498
    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 499
    iget-object v12, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    move-object v13, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v8

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 501
    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_395

    :cond_392
    move-object v4, v5

    move v5, v10

    move v6, v5

    .line 506
    :cond_395
    :goto_395
    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 509
    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iput v3, v8, Landroid/graphics/RectF;->top:F

    .line 510
    iget-object v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 511
    iget-object v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 512
    iget-object v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 513
    iget-object v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 515
    iget-boolean v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v3, :cond_3e7

    iget-boolean v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-nez v3, :cond_3e7

    .line 516
    iget v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    if-gt v2, v3, :cond_3e0

    .line 518
    iget v2, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    .line 519
    iget v3, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v3, v4

    const v4, 0x3ef5c28f  # 0.48f

    mul-float/2addr v3, v4

    .line 520
    iget-object v4, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v0, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3e7

    :cond_3e0
    if-eqz v9, :cond_3e7

    .line 523
    iget-object v0, v0, Lcom/flyme/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3e7
    :goto_3e7
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 194
    iget p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    .line 199
    iget p0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 4

    .line 227
    iput p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mLevel:I

    .line 228
    iput-boolean p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    .line 229
    iput-boolean p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mCharging:Z

    .line 230
    invoke-direct {p0}, Lcom/flyme/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 2

    .line 235
    iput-boolean p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 236
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p4, p2

    .line 292
    iput p4, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHeight:I

    sub-int/2addr p3, p1

    .line 293
    iput p3, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWidth:I

    .line 294
    iget-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x3f400000  # 0.75f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 295
    iget-object p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p1, p1

    iput p1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public startListening()V
    .registers 5

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mListening:Z

    .line 204
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    .line 205
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-direct {p0}, Lcom/flyme/systemui/BatteryMeterDrawable;->updateShowPercent()V

    .line 207
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public stopListening()V
    .registers 3

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mListening:Z

    .line 212
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/flyme/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 213
    iget-object v0, p0, Lcom/flyme/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
