.class public Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;
.super Landroid/preference/PreferenceFragment;
.source "EarphoneCalibrationFragment.java"


# instance fields
.field private isWritCommandSuccess:Z

.field private mAdustTips:Landroid/widget/TextView;

.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDeviceControlManager:Lmeizu/os/DeviceControlManager;

.field private mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

.field private mHandler:Landroid/os/Handler;

.field private mKeyDownCount:I

.field private mNeedResetTips:Z

.field private mOnKeyLongPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

.field private mReadEarpodAdjustStateRunnable:Ljava/lang/Runnable;

.field private mReadStateCount:I

.field private mTipsImg:Landroid/widget/ImageView;

.field private mTipsImgAnimationView:Lcom/meizu/settings/widget/GlowView;

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mKeyDownCount:I

    .line 57
    iput v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mReadStateCount:I

    .line 65
    new-instance v0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;-><init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mOnKeyLongPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    .line 107
    new-instance v0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$2;-><init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mReadEarpodAdjustStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mKeyDownCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mKeyDownCount:I

    return p1
.end method

.method static synthetic access$012(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;I)I
    .registers 3

    .line 43
    iget v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mKeyDownCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mKeyDownCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->isWritCommandSuccess:Z

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->isWritCommandSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Lcom/meizu/settings/widget/GlowView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTipsImgAnimationView:Lcom/meizu/settings/widget/GlowView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Landroid/view/animation/TranslateAnimation;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTipsImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->startAdjust()V

    return-void
.end method

.method static synthetic access$602(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mReadStateCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mNeedResetTips:Z

    return p0
.end method

.method static synthetic access$702(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mNeedResetTips:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;II)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->setAdjustTextView(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Landroid/view/View;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->startTipsImgTranslateAnimation(Landroid/view/View;)V

    return-void
.end method

.method private initEarphoneCalibrationHelper()V
    .registers 3

    .line 172
    new-instance v0, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    .line 173
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    new-instance v1, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$3;-><init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V

    invoke-virtual {v0, v1}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->setOnEarphoneStateChangedListener(Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;)V

    return-void
.end method

.method private sendAdjustCommand()V
    .registers 1

    return-void
.end method

.method private setAdjustTextView(II)V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAdustTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAdustTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private startAdjust()V
    .registers 2

    .line 206
    invoke-direct {p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->sendAdjustCommand()V

    .line 207
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mReadEarpodAdjustStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startTipsImgAlphaAnimation(Landroid/view/View;)V
    .registers 5

    .line 255
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 256
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 257
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;-><init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    return-void
.end method

.method private startTipsImgTranslateAnimation(Landroid/view/View;)V
    .registers 6

    .line 280
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 281
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 282
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v3, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 284
    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 285
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 286
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/animation/TranslateAnimation;->startNow()V

    .line 287
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$6;-><init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "device_control"

    .line 164
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmeizu/os/DeviceControlManager;

    iput-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mDeviceControlManager:Lmeizu/os/DeviceControlManager;

    .line 165
    invoke-direct {p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->initEarphoneCalibrationHelper()V

    .line 166
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    if-eqz p0, :cond_1b

    .line 167
    invoke-virtual {p0}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->registerEarpodRecevier()V

    :cond_1b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d00d5

    const/4 p3, 0x0

    .line 186
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 1

    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 155
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mEarphonePlugedListenerHelper:Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;

    if-eqz p0, :cond_a

    .line 156
    invoke-virtual {p0}, Lcom/meizu/settings/utils/EarphonePlugedListenerHelper;->unregisterEarpodReceiver()V

    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 148
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lcom/meizu/settings/MzSettingsActivity;->releaseOnKeyListener()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 141
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mOnKeyLongPressListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    .line 142
    invoke-virtual {v0, p0}, Lcom/meizu/settings/MzSettingsActivity;->setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 192
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0240

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mAdustTips:Landroid/widget/TextView;

    const p2, 0x7f0a0749

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTipsImg:Landroid/widget/ImageView;

    const p2, 0x7f0a074a

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/GlowView;

    iput-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTipsImgAnimationView:Lcom/meizu/settings/widget/GlowView;

    .line 196
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->mTipsImg:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->startTipsImgAlphaAnimation(Landroid/view/View;)V

    return-void
.end method
