.class public Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "ColorTemperatureActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

.field private mColorBalance:I

.field private mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

.field private mLeftTip:Landroid/widget/TextView;

.field private mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

.field private mRightTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)Lcom/meizu/settings/display/QcomDisplayWrapper;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    return-object p0
.end method

.method private getSaveProgress()I
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedColorBalance()I

    move-result p0

    return p0
.end method

.method private registerDisplayListener()V
    .registers 2

    .line 66
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 67
    new-instance v0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$1;-><init>(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetColorAdjust()V
    .registers 3

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->setDefaultColorBalance(Landroid/content/ContentResolver;I)V

    .line 170
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 171
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->saveColorBalance(I)V

    return-void
.end method

.method private setDefaultColorBalance(Landroid/content/ContentResolver;I)V
    .registers 4

    .line 175
    new-instance v0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity$2;-><init>(Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;Landroid/content/ContentResolver;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupColorBalance()V
    .registers 4

    .line 89
    invoke-direct {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->getSaveProgress()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    .line 90
    iget v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    const/4 v1, 0x0

    const/16 v2, -0x64

    if-lt v0, v2, :cond_11

    const/16 v2, 0x64

    if-le v0, v2, :cond_13

    .line 92
    :cond_11
    iput v1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    .line 94
    :cond_13
    iget v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    add-int/lit8 v0, v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string/jumbo v0, "persist.sys.enable.dc"

    const-string v2, "false"

    .line 96
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_5f

    if-eqz v0, :cond_41

    goto :goto_5f

    .line 104
    :cond_41
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget v1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setColorBalance(I)Z

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget v1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultColorBalance(I)V

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mLeftTip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mRightTip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7e

    :cond_5f
    :goto_5f
    const v0, 0x7f0a0071

    .line 98
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mLeftTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mRightTip:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7e
    return-void
.end method

.method private unRegisterDisplayListener()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mDisplayConnnectListener:Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;

    if-eqz v0, :cond_9

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->unregisterDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    :cond_9
    return-void
.end method

.method private updateUI()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    invoke-direct {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->setupColorBalance()V

    :cond_d
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0071

    if-ne v0, v1, :cond_d

    .line 152
    invoke-direct {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->resetColorAdjust()V

    goto :goto_3a

    .line 154
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a03b4

    if-ne v1, v2, :cond_1f

    add-int/lit8 v0, v0, -0x2

    goto :goto_2a

    .line 157
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a05e8

    if-ne p1, v1, :cond_2a

    add-int/lit8 v0, v0, 0x2

    :cond_2a
    :goto_2a
    if-ltz v0, :cond_3a

    const/16 p1, 0x64

    if-gt v0, p1, :cond_3a

    .line 161
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 162
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->saveColorBalance(I)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 39
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const p1, 0x7f0d0077

    .line 43
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0072

    .line 44
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    const p1, 0x7f0a03b4

    .line 45
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mLeftTip:Landroid/widget/TextView;

    const p1, 0x7f0a05e8

    .line 46
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mRightTip:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mLeftTip:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mRightTip:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0071

    .line 50
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 54
    invoke-static {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    .line 55
    invoke-direct {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->registerDisplayListener()V

    .line 56
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 57
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mBreakerSeekbar:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;

    invoke-direct {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->getSaveProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_display_inversion_enabled"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 125
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 127
    invoke-direct {p0}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->unRegisterDisplayListener()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 190
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    add-int/lit8 p2, p2, -0x32

    .line 132
    iput p2, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 134
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    iget p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    invoke-virtual {p1, p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setColorBalance(I)Z

    :cond_15
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mColorBalance:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->setDefaultColorBalance(Landroid/content/ContentResolver;I)V

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/ColorTemperatureActivity;->mQcomDisplayWrapper:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->saveColorBalance(I)V

    return-void
.end method
