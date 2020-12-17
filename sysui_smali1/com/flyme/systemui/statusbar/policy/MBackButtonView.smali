.class public Lcom/flyme/systemui/statusbar/policy/MBackButtonView;
.super Landroid/widget/ImageView;
.source "MBackButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "MBackButton"


# instance fields
.field private mAudioService:Landroid/media/IAudioService;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDoubleTouchEnable:Z

.field private mForceTouchEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHomeKeyTimeVibrator:[I

.field private mIsLongClick:Z

.field private mLongClickTime:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mPressure:F

.field private mPressureHomeKey:Z

.field private mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mTimeVibrator:I

.field private mTouchEventDown:Z

.field private mTouchFlag:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12c

    .line 70
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mLongClickTime:I

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    .line 85
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;-><init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$2;-><init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mObserver:Landroid/database/ContentObserver;

    .line 200
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;-><init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x12c

    .line 70
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mLongClickTime:I

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    .line 85
    new-instance p2, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$1;-><init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance p2, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$2;-><init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mObserver:Landroid/database/ContentObserver;

    .line 200
    new-instance p2, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView$3;-><init>(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mContentObserver:Landroid/database/ContentObserver;

    .line 148
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 149
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setWillNotDraw(Z)V

    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->back()V

    return-void
.end method

.method static synthetic access$1002(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mVibratorEnable:Z

    return p1
.end method

.method static synthetic access$102(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    return p1
.end method

.method static synthetic access$1100(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)Z
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->initTimeVibratorEnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    return p1
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)I
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->initTimeVibratorChanged()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->toHome()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 48
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->playHomeEffect()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->playmTouchHapticFeedback()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressureHomeKey:Z

    return p0
.end method

.method static synthetic access$702(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mIsLongClick:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->playClickHapticFeedback()V

    return-void
.end method

.method static synthetic access$900(Lcom/flyme/systemui/statusbar/policy/MBackButtonView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->initForceTouch()V

    return-void
.end method

.method private back()V
    .registers 6

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3, v2, v3, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    invoke-static {v4, v2, v3, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 287
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->TAG:Ljava/lang/String;

    const-string v0, "sendEvent: ACTION_BACK_DOWN_AND_UP"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mAudioService:Landroid/media/IAudioService;

    if-nez v0, :cond_10

    const-string v0, "audio"

    .line 156
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mAudioService:Landroid/media/IAudioService;

    .line 158
    :cond_10
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mAudioService:Landroid/media/IAudioService;

    return-object p0
.end method

.method private initForceTouch()V
    .registers 4

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mForceTouchEnable:Z

    .line 211
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_force_touch_level_index"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 212
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa030017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 213
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressure:F
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_33

    :catchall_2a
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const v0, 0x3f19999a  # 0.6f

    .line 216
    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressure:F

    :goto_33
    return-void
.end method

.method private initTimeVibratorChanged()I
    .registers 4

    .line 331
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homekey_feedback_intensity"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->performHapticTime(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private initTimeVibratorEnable()Z
    .registers 8

    .line 353
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homekey_feedback_intensity"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "disable"

    const/4 v4, 0x1

    if-eqz v0, :cond_18

    .line 356
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr v4, p0

    goto :goto_53

    :cond_18
    if-nez v0, :cond_53

    .line 359
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    const-string v6, "haptic_feedback_enabled"

    invoke-static {v0, v6, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v4, v5

    .line 362
    :goto_2b
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "haptic_feedback_theme"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://com.immersion.android.haptics.defaulttheme"

    if-nez v0, :cond_3d

    move-object v0, v2

    goto :goto_46

    .line 368
    :cond_3d
    iget-object v6, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    :goto_46
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v4, :cond_4f

    goto :goto_50

    :cond_4f
    move-object v0, v3

    :goto_50
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_53
    :goto_53
    return v4
.end method

.method private performHapticTime(Ljava/lang/String;)I
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHomeKeyTimeVibrator:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 338
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    return p0

    :cond_10
    const-string v0, "Soft"

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 341
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHomeKeyTimeVibrator:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    goto :goto_2f

    :cond_20
    const-string v0, "Strong"

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 343
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHomeKeyTimeVibrator:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    .line 346
    :cond_2f
    :goto_2f
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    return p0
.end method

.method private playClickHapticFeedback()V
    .registers 4

    .line 389
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mVibratorEnable:Z

    if-eqz v0, :cond_c

    .line 393
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mVibrator:Landroid/os/Vibrator;

    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_c
    return-void
.end method

.method private playHomeEffect()V
    .registers 5

    .line 400
    :try_start_0
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mAudioService:Landroid/media/IAudioService;

    .line 401
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mAudioService:Landroid/media/IAudioService;

    if-eqz v0, :cond_30

    .line 402
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 403
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homekey_volume_level"

    const/16 v2, 0x20

    const/4 v3, -0x3

    .line 402
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    if-lez v0, :cond_30

    .line 409
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mAudioService:Landroid/media/IAudioService;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p0

    .line 413
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method

.method private playmTouchHapticFeedback()V
    .registers 4

    .line 379
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mVibratorEnable:Z

    if-eqz v0, :cond_c

    .line 383
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mVibrator:Landroid/os/Vibrator;

    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_c
    return-void
.end method

.method public static sendEvent(IIIJ)V
    .registers 21

    move/from16 v0, p2

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move v10, v1

    goto :goto_b

    :cond_a
    move v10, v2

    .line 301
    :goto_b
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v14, v0, 0x8

    const/16 v15, 0x101

    move-object v3, v1

    move-wide/from16 v6, p3

    move/from16 v8, p0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 303
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private toHome()V
    .registers 6

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3, v2, v3, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    invoke-static {v4, v2, v3, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->sendEvent(IIIJ)V

    .line 295
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->TAG:Ljava/lang/String;

    const-string v0, "sendEvent: ACTION_HOME_DOWN_AND_UP"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unRegisterTimeVibratorObserver()V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_14

    .line 419
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 421
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .registers 1

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 223
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .line 163
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 164
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa030018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHomeKeyTimeVibrator:[I

    .line 165
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_support_pressure_home_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressureHomeKey:Z

    .line 166
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressureHomeKey:Z

    if-eqz v0, :cond_27

    const/16 v0, 0x1f4

    goto :goto_29

    :cond_27
    const/16 v0, 0x12c

    :goto_29
    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mLongClickTime:I

    .line 167
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_support_mback_double_click:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mDoubleTouchEnable:Z

    const-string v0, "mz_force_touch_switch"

    .line 168
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "mz_force_touch_level_index"

    .line 171
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->initForceTouch()V

    const-string v0, "homekey_feedback_intensity"

    .line 174
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 177
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 178
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 179
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 182
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 183
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mVibrator:Landroid/os/Vibrator;

    .line 184
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->initTimeVibratorChanged()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTimeVibrator:I

    .line 185
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->initTimeVibratorEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mVibratorEnable:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 309
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    .line 311
    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    .line 312
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_40

    .line 316
    :cond_1f
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressureHomeKey:Z

    if-nez p1, :cond_40

    .line 317
    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    .line 318
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mForceTouchEnable:Z

    if-nez v1, :cond_3b

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mDoubleTouchEnable:Z

    if-nez p0, :cond_35

    goto :goto_3b

    :cond_35
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    int-to-long v1, p0

    goto :goto_3d

    :cond_3b
    :goto_3b
    const-wide/16 v1, 0x0

    :goto_3d
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_40
    :goto_40
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 190
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 191
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->unRegisterTimeVibratorObserver()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 231
    sget-boolean v1, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->DEBUG:Z

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x9

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_66

    if-eq v0, v2, :cond_37

    if-eq v0, v1, :cond_93

    if-eq v0, v4, :cond_2e

    goto/16 :goto_cc

    .line 276
    :cond_2e
    iput-boolean v5, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchEventDown:Z

    .line 277
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_cc

    .line 258
    :cond_37
    iput-boolean v5, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchEventDown:Z

    .line 259
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressureHomeKey:Z

    if-eqz v0, :cond_5d

    .line 261
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x40

    .line 262
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 263
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mIsLongClick:Z

    if-eqz v1, :cond_58

    .line 264
    iget v1, v0, Landroid/os/Message;->arg1:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 266
    :cond_58
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    :cond_5d
    iput-boolean v5, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mIsLongClick:Z

    .line 269
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    if-ne v0, v4, :cond_cc

    .line 270
    iput v5, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    return v2

    .line 234
    :cond_66
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchEventDown:Z

    .line 235
    iput-boolean v5, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mIsLongClick:Z

    .line 236
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mLongClickTime:I

    int-to-long v6, v2

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressureHomeKey:Z

    if-eqz v0, :cond_87

    .line 239
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_93

    .line 242
    :cond_87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    :cond_93
    :goto_93
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    if-eq v0, v4, :cond_cc

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchEventDown:Z

    if-eqz v0, :cond_cc

    .line 248
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ev.getPressure()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mForceTouchEnable:Z

    if-eqz v0, :cond_cc

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mPressure:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_cc

    .line 250
    iput-boolean v5, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchEventDown:Z

    .line 251
    iput v4, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mTouchFlag:I

    .line 252
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    :cond_cc
    :goto_cc
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDarkIntensity(F)V
    .registers 3

    .line 437
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 439
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 442
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 444
    :cond_e
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 2

    .line 449
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MBackButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public setVertical(Z)V
    .registers 2

    return-void
.end method
