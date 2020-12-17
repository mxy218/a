.class public Lcom/meizu/settings/display/BrightnessPreference;
.super Lcom/meizu/settings/widget/RestrictedPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;,
        Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;
    }
.end annotation


# instance fields
.field private final BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

.field private final MAXIMUM_BACKLIGHT:I

.field private final MINIMUM_BACKLIGHT:I

.field private final RES_ID:I

.field private final SEEK_BAR_RANGE:I

.field private mAutoBrightnessObserver:Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;

.field private mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private mBrightnessChangedCallback:Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;

.field private mBrightnessChangedCallbackRegister:Z

.field private mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mHandler:Landroid/os/Handler;

.field private mIsTouchSeeking:Z

.field private mOldBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x9

    const-string v0, "config_screenBrightnessSettingMinimum"

    .line 36
    invoke-static {p2, v0}, Lcom/meizu/common/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->RES_ID:I

    .line 38
    sget p2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    iput p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->MAXIMUM_BACKLIGHT:I

    .line 39
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->RES_ID:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->MINIMUM_BACKLIGHT:I

    .line 40
    iget p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->MAXIMUM_BACKLIGHT:I

    int-to-float p2, p2

    const/high16 v0, 0x41800000  # 16.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

    .line 41
    iget p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

    mul-int/lit8 p2, p2, 0x14

    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->MINIMUM_BACKLIGHT:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->SEEK_BAR_RANGE:I

    .line 47
    new-instance p2, Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;

    invoke-direct {p2, p0}, Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;-><init>(Lcom/meizu/settings/display/BrightnessPreference;)V

    iput-object p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallback:Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;

    .line 48
    new-instance p2, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;-><init>(Lcom/meizu/settings/display/BrightnessPreference;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutoBrightnessObserver:Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;

    const/4 p2, -0x1

    .line 51
    iput p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->mIsTouchSeeking:Z

    .line 53
    iput-boolean p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallbackRegister:Z

    .line 54
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110027

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutomaticAvailable:Z

    .line 66
    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mContext:Landroid/content/Context;

    .line 67
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 68
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/BrightnessPreference;)Landroid/content/Context;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/display/BrightnessPreference;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/display/BrightnessPreference;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/display/BrightnessPreference;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->updateMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/display/BrightnessPreference;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->updateSlider()V

    return-void
.end method

.method private clampScreenBrightness(I)I
    .registers 3

    .line 250
    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->MINIMUM_BACKLIGHT:I

    iget p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->MAXIMUM_BACKLIGHT:I

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private convertProgressToBrightness(I)I
    .registers 4

    .line 255
    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

    mul-int/lit8 v1, v0, 0x5

    if-gt p1, v1, :cond_9

    .line 256
    div-int/lit8 p1, p1, 0x5

    goto :goto_d

    :cond_9
    mul-int/lit8 v1, v0, 0x5

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 260
    :goto_d
    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->MINIMUM_BACKLIGHT:I

    add-int/2addr p1, v0

    .line 261
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/BrightnessPreference;->clampScreenBrightness(I)I

    move-result p0

    return p0
.end method

.method private isAutoBrightnessMode()Z
    .registers 4

    .line 189
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_13

    move v0, v1

    :cond_13
    return v0
.end method

.method private registerBrightnessChangedCallback()V
    .registers 3

    .line 236
    iget-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallbackRegister:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallbackRegister:Z

    .line 238
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallback:Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;

    const-string v1, "BrightnessPreference"

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private unRegisterBrightnessChangedCallback()V
    .registers 3

    .line 243
    iget-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallbackRegister:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallbackRegister:Z

    .line 245
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mBrightnessChangedCallback:Lcom/meizu/settings/display/BrightnessPreference$BrightnessChangedCallback;

    const-string v1, "BrightnessPreference"

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->unRegisterBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private updateMode()V
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_a

    .line 184
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->isAutoBrightnessMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutomatic:Z

    :cond_a
    return-void
.end method

.method private updateSlider()V
    .registers 5

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutomatic:Z

    if-nez v0, :cond_1f

    .line 199
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/display/BrightnessPreference;->clampScreenBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I
    :try_end_1a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    .line 203
    :catch_1b
    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->MAXIMUM_BACKLIGHT:I

    iput v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    .line 205
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3e

    .line 206
    iget v1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    iget v2, p0, Lcom/meizu/settings/display/BrightnessPreference;->BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

    iget p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->MINIMUM_BACKLIGHT:I

    add-int v3, v2, p0

    if-gt v1, v3, :cond_36

    mul-int/lit8 v1, v1, 0x5

    mul-int/lit8 p0, p0, 0x5

    sub-int/2addr v1, p0

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_3e

    :cond_36
    mul-int/lit8 v3, v2, 0x5

    sub-int/2addr v1, v2

    add-int/2addr v3, v1

    sub-int/2addr v3, p0

    .line 209
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_37

    .line 218
    :cond_6
    iget-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mIsTouchSeeking:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutomatic:Z

    if-eqz v0, :cond_37

    .line 219
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    .line 220
    iget-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_37

    .line 221
    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    iget v1, p0, Lcom/meizu/settings/display/BrightnessPreference;->BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

    iget p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->MINIMUM_BACKLIGHT:I

    add-int v2, v1, p0

    if-gt v0, v2, :cond_2f

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit8 p0, p0, 0x5

    sub-int/2addr v0, p0

    .line 222
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_37

    :cond_2f
    mul-int/lit8 v2, v1, 0x5

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    sub-int/2addr v2, p0

    .line 224
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_37
    :goto_37
    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4

    .line 103
    invoke-super {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0643

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/meizu/settings/display/BrightnessPreference;->SEEK_BAR_RANGE:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0a06b3

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a025b

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 111
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->updateSlider()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a06b3

    if-ne v1, v2, :cond_1b

    .line 153
    iget p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

    mul-int/lit8 p1, p1, 0x5

    if-gt v0, p1, :cond_18

    add-int/lit8 v0, v0, -0xa

    goto :goto_37

    :cond_18
    add-int/lit8 v0, v0, -0x2

    goto :goto_37

    .line 158
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a025b

    if-ne p1, v1, :cond_37

    .line 159
    iget p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->BRIGHTNESS_LOW_LEVEL_THRESHOLD:I

    mul-int/lit8 v1, p1, 0x5

    if-ge v0, v1, :cond_35

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v1, p1, 0x5

    if-le v0, v1, :cond_37

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 v0, p1, 0x1

    goto :goto_37

    :cond_35
    add-int/lit8 v0, v0, 0x2

    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 170
    iget v1, p0, Lcom/meizu/settings/display/BrightnessPreference;->SEEK_BAR_RANGE:I

    invoke-static {v0, p1, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 172
    invoke-direct {p0, p1}, Lcom/meizu/settings/display/BrightnessPreference;->convertProgressToBrightness(I)I

    move-result p1

    .line 173
    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    if-eq v0, p1, :cond_60

    .line 174
    iput p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    .line 175
    iget-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    .line 176
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_brightness"

    invoke-static {p1, v1, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_60
    return-void
.end method

.method public onCreate()V
    .registers 2

    const-string p0, "BrightnessPreference"

    const-string v0, "BrightnessPreference onCreate"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 59
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d01c5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    const-string p0, "BrightnessPreference"

    const-string v0, "BrightnessPreference onDestroy"

    .line 98
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 2

    const-string p0, "BrightnessPreference"

    const-string v0, "BrightnessPreference onPause"

    .line 88
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 118
    iget-boolean p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mIsTouchSeeking:Z

    if-eqz p1, :cond_11

    .line 119
    invoke-direct {p0, p2}, Lcom/meizu/settings/display/BrightnessPreference;->convertProgressToBrightness(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 2

    const-string p0, "BrightnessPreference"

    const-string v0, "BrightnessPreference onResume"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "BrightnessPreference"

    const-string v1, "BrightnessPreference onStart"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->updateMode()V

    .line 78
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->updateSlider()V

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->registerBrightnessChangedCallback()V

    .line 80
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutoBrightnessObserver:Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;

    invoke-virtual {p0}, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->startObserving()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mIsTouchSeeking:Z

    return-void
.end method

.method public onStop()V
    .registers 3

    const-string v0, "BrightnessPreference"

    const-string v1, "BrightnessPreference onStop"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/meizu/settings/display/BrightnessPreference;->unRegisterBrightnessChangedCallback()V

    .line 94
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference;->mAutoBrightnessObserver:Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;

    invoke-virtual {p0}, Lcom/meizu/settings/display/BrightnessPreference$AutoBrightnessObserver;->stopObserving()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/meizu/settings/display/BrightnessPreference;->mIsTouchSeeking:Z

    .line 130
    new-instance p1, Lcom/meizu/settings/display/BrightnessPreference$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/display/BrightnessPreference$1;-><init>(Lcom/meizu/settings/display/BrightnessPreference;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
