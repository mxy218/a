.class public Lcom/android/server/policy/MzPhoneWindowManager;
.super Ljava/lang/Object;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SCENE_CHANGED:Ljava/lang/String; = "SCENE_CHANGED"

.field public static final KEY_LONG_PRESS_TIME_OUT:I = 0x1f4

.field static final KEY_VOICE_ENTRANCE:Ljava/lang/String; = "voice_entrance"

.field static final KEY_VOICE_ENTRANCE_HEADSET_LONG_PRESS:Ljava/lang/String; = "headset_long_press"

.field static final KEY_VOICE_ENTRANCE_POWER_LONG_PRESS:Ljava/lang/String; = "power_long_press"

.field private static final MSG_CONFIRM_REBOOT_SHUTDOWN:I = 0x7

.field public static final MZ_GAME_MODE_ACCELERATE:Ljava/lang/String; = "mz_game_mode_accelerate"

.field public static final MZ_GAME_MODE_DISABLE_MBACK:Ljava/lang/String; = "mz_game_mode_disable_mback"

.field static final POWER_LONG_PRESS_GLOBAL_ACTIONS:Ljava/lang/String; = "power_long_press_global_actions"

.field static final POWER_LONG_PRESS_VOICE:Ljava/lang/String; = "power_long_press_voice"

.field private static final SCENE_GAME:Ljava/lang/String; = "game"

.field private static final SUFFIX_DISABLE:Ljava/lang/String; = "disable"

.field private static final SUFFIX_SOFT:Ljava/lang/String; = "Soft"

.field private static final SUFFIX_STRONG:Ljava/lang/String; = "Strong"

.field private static TAG:Ljava/lang/String; = null

.field static final VOICE_ENTRANCE_HOME_LONG_PRESS:Ljava/lang/String; = "home_long_press"


# instance fields
.field public final ACTION_GOOGLE_VOICE_ASSISTANT:Ljava/lang/String;

.field private final ACTION_SHOW_MEIZU_PAY_PAGE:Ljava/lang/String;

.field public final CLASS_LAUNCHER_CAMERA:Ljava/lang/String;

.field public final CLASS_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

.field public MBACK_DELAY_TIME_MS:I

.field private final MSG_DELAY_SHOW_AVOID_POWER_KEY_MISOPERATION_TIPS:I

.field public final PKG_CAMERA:Ljava/lang/String;

.field public final PKG_GOOGLE_QUICK_SEARCH:Ljava/lang/String;

.field private final PKG_MEIZU_NFC_PAY:Ljava/lang/String;

.field public final PKG_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

.field final POWER_AVOID_MISOPERATION_DEBOUNCE:I

.field final POWER_DOUBLE_TAP_MAX_TIME_MS:I

.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mContext:Landroid/content/Context;

.field private mDisableInGameMode:Z

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFlymeVersionSettingUp:I

.field private mGameMode:Z

.field private mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

.field private mHandler:Landroid/os/Handler;

.field private mHomekeyTimeVibrator:[I

.field private mIsFingerprintKeyDown:Z

.field private mIsFingerprintKeyTriggerHomeEvent:Z

.field private mLastPowerKeyUpTimeMillis:J

.field private mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveMode:Z

.field private mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

.field private mTimeVibrator:I

.field private mVibratorEnable:Z

.field private mVloumeKeyConsumed:Z

.field private final mVolumeUPLongPress:Ljava/lang/Runnable;

.field private mWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-string v0, "MzPhoneWindowManager"

    sput-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/server/policy/PhoneWindowManager;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 72
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->MSG_DELAY_SHOW_AVOID_POWER_KEY_MISOPERATION_TIPS:I

    .line 74
    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameMode:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mDisableInGameMode:Z

    .line 91
    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mFlymeVersionSettingUp:I

    .line 92
    const-string v1, "com.meizu.mznfcpay"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->PKG_MEIZU_NFC_PAY:Ljava/lang/String;

    .line 93
    const-string v1, "com.meizu.mznfcpay.SHOW_PAY_PAGE_ACTION"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->ACTION_SHOW_MEIZU_PAY_PAGE:Ljava/lang/String;

    .line 96
    const-string v1, "com.meizu.media.camera"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->PKG_CAMERA:Ljava/lang/String;

    .line 97
    const-string v1, "com.meizu.media.camera.CameraLauncher"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->CLASS_LAUNCHER_CAMERA:Ljava/lang/String;

    .line 99
    const-string v1, "com.google.android.googlequicksearchbox"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->PKG_GOOGLE_QUICK_SEARCH:Ljava/lang/String;

    .line 100
    const-string v1, "android.intent.action.VOICE_ASSIST"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->ACTION_GOOGLE_VOICE_ASSISTANT:Ljava/lang/String;

    .line 101
    const-string v1, "com.meizu.voiceassistant"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->PKG_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

    .line 102
    const-string v1, "com.meizu.voiceassistant.MainActivity"

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->CLASS_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 117
    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->MBACK_DELAY_TIME_MS:I

    .line 119
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->POWER_DOUBLE_TAP_MAX_TIME_MS:I

    .line 120
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->POWER_AVOID_MISOPERATION_DEBOUNCE:I

    .line 494
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MzPhoneWindowManager$3;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 127
    new-instance v0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Lcom/android/server/policy/MzPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 128
    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/android/server/policy/gesture/SystemGesture;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/gesture/SystemGesture;-><init>(Landroid/content/Context;Lcom/android/server/policy/MzPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 131
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onEnablePowerSaveModeSettingChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    .line 132
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->registerPowerSaveModeObserver()V

    .line 134
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVibratorEnable:Z

    .line 135
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorChanged()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    .line 136
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->registerTimeVibratorObserver()V

    .line 138
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onFlymeVersionSettingUpChanged()V

    .line 139
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->registerSettingsObserver()V

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->showToast()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p1, "x1"  # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onFlymeVersionSettingUpChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p1, "x1"  # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/MzPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->onEnablePowerSaveModeSettingChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/MzPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p1, "x1"  # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVibratorEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/MzPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/MzPhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p1, "x1"  # I

    .line 65
    iput p1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/MzPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->initTimeVibratorChanged()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/MzPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/MzPhoneWindowManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkTargetActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 694
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 695
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 431
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 432
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 433
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back key inject InputEvent successed---! --> action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", times is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 435
    :cond_39
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "back key inject InputEvent failed---!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_40
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 439
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 441
    :cond_51
    return-void
.end method

.method private getNeedshowScreenState()Z
    .registers 4

    .line 729
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "mz_screen_hangup"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private initTimeVibratorChanged()I
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homekey_feedback_intensity"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->performHapticTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initTimeVibratorEnable()Z
    .registers 10

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "homekey_feedback_intensity":Ljava/lang/String;
    const/4 v1, 0x1

    .line 387
    .local v1, "vibratorenable":Z
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homekey_feedback_intensity"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 389
    const/4 v2, 0x1

    const-string v5, "disable"

    if-eqz v0, :cond_1b

    .line 390
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    move v1, v2

    goto :goto_57

    .line 391
    :cond_1b
    if-nez v0, :cond_57

    .line 393
    iget-object v6, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "haptic_feedback_enabled"

    invoke-static {v6, v8, v7, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2d

    .line 394
    goto :goto_2e

    :cond_2d
    move v2, v7

    :goto_2e
    move v1, v2

    .line 396
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "haptic_feedback_theme"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "defIntensity":Ljava/lang/String;
    if-nez v2, :cond_40

    .line 399
    const-string v2, "content://com.immersion.android.haptics.defaulttheme"

    goto :goto_4b

    .line 402
    :cond_40
    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "content://com.immersion.android.haptics.defaulttheme"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 406
    :goto_4b
    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 407
    if-eqz v1, :cond_54

    move-object v5, v2

    .line 406
    :cond_54
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    .end local v2  # "defIntensity":Ljava/lang/String;
    :cond_57
    :goto_57
    return v1
.end method

.method private interceptPowerKeyForMisoperation(ILandroid/view/KeyEvent;Z)Z
    .registers 9
    .param p1, "keyCode"  # I
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "powerKeyHandled"  # Z

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "handle":Z
    if-nez p3, :cond_78

    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isGameMode()Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v1}, Lcom/android/server/policy/gesture/SystemGesture;->getGestureSwitchController()Lcom/android/server/policy/gesture/GestureSwitchController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/gesture/GestureSwitchController;->isAvoidPowerKeyMisoperationEnabled()Z

    move-result v1

    if-eqz v1, :cond_78

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_78

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_78

    .line 764
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->getNeedshowScreenState()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLastPowerKeyUpTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x9c4

    cmp-long v1, v1, v3

    if-lez v1, :cond_3d

    .line 765
    const/4 v0, 0x1

    .line 766
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 768
    :cond_3d
    sget-object v1, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interceptPowerKeyForMisoperation mLastPowerKeyUpTimeMillis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLastPowerKeyUpTimeMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", powerKeyHandled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mLastPowerKeyUpTimeMillis:J

    .line 774
    :cond_78
    return v0
.end method

.method private isNotDispatchKey(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 689
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isPhoneIdle()Z
    .registers 6

    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, "isPhoneIdle":Z
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 227
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_27

    .line 228
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 229
    sget-object v2, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the phone idel is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_27
    return v0
.end method

.method private onEnablePowerSaveModeSettingChanged()Z
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_current_power_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 344
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    nop

    .line 343
    :goto_15
    return v1
.end method

.method private onFlymeVersionSettingUpChanged()V
    .registers 4

    .line 525
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 526
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 525
    const-string v1, "flyme_version_setting_up"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mFlymeVersionSettingUp:I

    .line 528
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFlymeVersionSettingUpChanged mFlymeVersionSettingUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mFlymeVersionSettingUp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private performHapticTime(Ljava/lang/String;)I
    .registers 4
    .param p1, "theme"  # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    if-nez v0, :cond_13

    .line 362
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa030018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    .line 364
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 366
    iget v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    return v0

    .line 368
    :cond_23
    const-string v0, "Soft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    goto :goto_42

    .line 370
    :cond_33
    const-string v0, "Strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 371
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHomekeyTimeVibrator:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    .line 374
    :cond_42
    :goto_42
    iget v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    return v0
.end method

.method private playMbackHapticFeedback(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "keyEvent"  # Landroid/view/KeyEvent;

    .line 298
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVibratorEnable:Z

    if-eqz v0, :cond_e

    .line 303
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mTimeVibrator:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 306
    :cond_e
    return-void
.end method

.method private playMbackSoundEffect()V
    .registers 6

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 447
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_25

    .line 448
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 449
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "homekey_volume_level"

    const/16 v3, 0x20

    const/4 v4, -0x3

    .line 448
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 453
    .local v1, "sound":I
    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeInternal()I

    move-result v2

    .line 454
    .local v2, "ringerMode":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    if-lez v1, :cond_25

    .line 455
    const/16 v3, 0xa

    invoke-interface {v0, v3}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    .line 460
    .end local v0  # "audioService":Landroid/media/IAudioService;
    .end local v1  # "sound":I
    .end local v2  # "ringerMode":I
    :cond_25
    goto :goto_2a

    .line 458
    :catch_26
    move-exception v0

    .line 459
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 461
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method private registerPowerSaveModeObserver()V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 351
    const-string/jumbo v1, "mz_current_power_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V

    .line 350
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    return-void
.end method

.method private registerSettingsObserver()V
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 534
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 535
    const-string v1, "flyme_version_setting_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager$4;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V

    .line 534
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 542
    return-void
.end method

.method private registerTimeVibratorObserver()V
    .registers 5

    .line 418
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 420
    const-string v1, "homekey_feedback_intensity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/MzPhoneWindowManager$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/MzPhoneWindowManager$2;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/os/Handler;)V

    .line 419
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    return-void
.end method

.method private showToast()V
    .registers 4

    .line 717
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 718
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa10000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    const/16 v2, 0x9c4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 721
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_22

    .line 722
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 723
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 724
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 726
    .end local v1  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_22
    return-void
.end method

.method private triggerGesture(I)V
    .registers 6
    .param p1, "keyCode"  # I

    .line 634
    nop

    .line 635
    const-string v0, "gesture_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 634
    invoke-static {v0}, Landroid/view/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGestureManager;

    move-result-object v0

    .line 637
    .local v0, "gestureManager":Landroid/view/IGestureManager;
    :try_start_b
    invoke-interface {v0, p1}, Landroid/view/IGestureManager;->triggerGesture(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 640
    goto :goto_17

    .line 638
    :catch_f
    move-exception v1

    .line 639
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "GestureManager"

    const-string v3, "IGestureManager threw RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method


# virtual methods
.method public InterceptPowerKeyForTelephony(ILandroid/view/KeyEvent;)Z
    .registers 14
    .param p1, "keyCode"  # I
    .param p2, "event"  # Landroid/view/KeyEvent;

    .line 168
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 169
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v1, 0x0

    .line 170
    .local v1, "handled":Z
    const/4 v2, 0x0

    .line 171
    .local v2, "UNINTERCEPT_POWERKEY":I
    const/4 v3, 0x0

    if-eqz v0, :cond_9f

    .line 172
    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9f

    .line 173
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 174
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 175
    :cond_1f
    const/4 v4, -0x1

    .line 177
    .local v4, "proceResult":I
    :try_start_20
    const-string v5, "android.telephony.MzTelephonyManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_26} :catch_93

    .line 179
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_26
    const-string/jumbo v6, "processKeyEvent"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_34} :catch_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_34} :catch_93

    .line 181
    .local v6, "processKeyEvent_method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    :try_start_35
    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_47} :catch_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_47} :catch_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_47} :catch_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_35 .. :try_end_47} :catch_93

    move v4, v8

    .line 187
    :goto_48
    goto :goto_5a

    .line 184
    :catch_49
    move-exception v8

    .line 185
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4a
    sget-object v9, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v10, " InvocationTargetException    "

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5a

    .line 182
    .end local v8  # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_55
    move-exception v8

    .line 183
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_59
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_59} :catch_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4a .. :try_end_59} :catch_93

    .end local v8  # "e":Ljava/lang/IllegalAccessException;
    goto :goto_48

    .line 192
    .end local v6  # "processKeyEvent_method":Ljava/lang/reflect/Method;
    :goto_5a
    nop

    .line 197
    .end local v5  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 198
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_61

    goto :goto_62

    :cond_61
    move v7, v3

    :goto_62
    move v1, v7

    .line 199
    sget-object v5, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InterceptPowerKeyForTelephony the value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " proceResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v5, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/OfflineUsageStats;->collectPowerHangUp(Landroid/content/Context;)V

    goto :goto_9f

    .line 188
    .restart local v5  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_87
    move-exception v6

    .line 189
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_88
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 190
    sget-object v7, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v8, " NoSuchMethodException   processKeyEvent "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_88 .. :try_end_92} :catch_93

    .line 191
    return v3

    .line 193
    .end local v5  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6  # "e":Ljava/lang/NoSuchMethodException;
    :catch_93
    move-exception v5

    .line 194
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 195
    sget-object v6, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v7, " ClassNotFoundException MzTelephonyManager "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v3

    .line 206
    .end local v4  # "proceResult":I
    .end local v5  # "e":Ljava/lang/ClassNotFoundException;
    :cond_9f
    :goto_9f
    if-nez v1, :cond_c8

    .line 207
    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 207
    const-string/jumbo v5, "intercpt_powerkey"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 210
    .local v4, "appInterceptPowerkey":I
    if-eqz v4, :cond_c8

    .line 211
    const/4 v1, 0x1

    .line 212
    new-instance v6, Landroid/content/Intent;

    const-string v7, "alarmclock.intent.action.POWERKEY_CLICK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 215
    iget-object v7, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    .end local v4  # "appInterceptPowerkey":I
    .end local v6  # "intent":Landroid/content/Intent;
    :cond_c8
    return v1
.end method

.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 787
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/gesture/SystemGesture;->dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 682
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    if-eqz v0, :cond_9

    .line 683
    check-cast v0, Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 685
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/gesture/SystemGesture;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 686
    return-void
.end method

.method public gameModePowerkeyHandle()Z
    .registers 8

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "gameModePowerkeyHangup":Z
    const/4 v1, 0x0

    .line 702
    .local v1, "needshowscreen":Z
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isGameMode()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 703
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "mz_game_mode_disable_mscreen"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, v4

    :goto_1b
    move v0, v3

    .line 704
    if-eqz v0, :cond_5c

    .line 705
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_29

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 708
    :cond_29
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->getNeedshowScreenState()Z

    move-result v1

    .line 709
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_screen_hangup"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 710
    sget-object v2, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game mode Power key Hangup, need "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4b

    const-string/jumbo v4, "show"

    goto :goto_4d

    :cond_4b
    const-string v4, "hide"

    :goto_4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_5c
    return v0
.end method

.method public getPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method public getWindowState()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public handleHomeFlag(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)Z
    .registers 5
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "homeConsumed"  # Z

    .line 158
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 159
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    if-nez p2, :cond_14

    if-eqz v0, :cond_14

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_14

    .line 161
    const/4 v1, 0x1

    return v1

    .line 164
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public handleLongPressOnHeadSetIfNeeded(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"  # I
    .param p2, "event"  # Landroid/view/KeyEvent;

    .line 319
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 320
    invoke-direct {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPhoneIdle()Z

    move-result v0

    if-nez v0, :cond_17

    .line 321
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "The phone is incall!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v1

    .line 323
    :cond_17
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 324
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "The phone is idle!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_37

    .line 326
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 328
    :cond_37
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "headset_long_press"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->startVoiceActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 330
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectHomeLongVoiceOn(Landroid/content/Context;)V

    .line 332
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_45
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "The Device Not Provisioned"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_4c
    return v1
.end method

.method handleShowGlobalActionsConfirm(I)V
    .registers 4
    .param p1, "action"  # I

    .line 803
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v0, v1}, Lcom/android/server/policy/MzGlobalActions;->getInstance(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/MzGlobalActions;->showGlobalActionsDialog(ZI)V

    .line 804
    return-void
.end method

.method public interceptFingerTouchKey(Landroid/view/KeyEvent;Z)V
    .registers 8
    .param p1, "keyEvent"  # Landroid/view/KeyEvent;
    .param p2, "down"  # Z

    .line 271
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 272
    .local v0, "keyCode":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 273
    iget-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mIsFingerprintKeyDown:Z

    if-eqz v2, :cond_e

    .line 274
    iput-boolean v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mIsFingerprintKeyTriggerHomeEvent:Z

    .line 277
    :cond_e
    const/16 v2, 0x193

    const/4 v3, 0x4

    if-ne v0, v2, :cond_2d

    .line 278
    iput-boolean p2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mIsFingerprintKeyDown:Z

    .line 279
    if-nez p2, :cond_3c

    .line 280
    iget-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mIsFingerprintKeyTriggerHomeEvent:Z

    const/4 v4, 0x0

    if-nez v2, :cond_2a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_2a

    .line 281
    invoke-virtual {p0, v3, v4, v4}, Lcom/android/server/policy/MzPhoneWindowManager;->sendEvent(III)V

    .line 282
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/policy/MzPhoneWindowManager;->sendEvent(III)V

    .line 284
    :cond_2a
    iput-boolean v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mIsFingerprintKeyTriggerHomeEvent:Z

    goto :goto_3c

    .line 286
    :cond_2d
    if-ne v0, v3, :cond_3c

    .line 287
    if-nez p2, :cond_3c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_3c

    .line 288
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 295
    :cond_3c
    :goto_3c
    return-void
.end method

.method interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 13
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 592
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 593
    .local v0, "down":Z
    :goto_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 594
    .local v3, "keyCode":I
    const/16 v4, 0x19

    if-ne v4, v3, :cond_1a

    if-nez v0, :cond_1a

    .line 596
    iget-object v5, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/OfflineUsageStats;->collectVolumeDown(Landroid/content/Context;)V

    .line 599
    :cond_1a
    const/16 v5, 0x18

    if-ne v5, v3, :cond_25

    if-nez v0, :cond_25

    .line 601
    iget-object v6, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/policy/OfflineUsageStats;->collectVolumeUp(Landroid/content/Context;)V

    .line 606
    :cond_25
    iget-object v6, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_5e

    .line 607
    if-eq v3, v5, :cond_36

    if-eq v3, v4, :cond_36

    const/16 v4, 0xa4

    if-eq v3, v4, :cond_36

    goto :goto_5e

    .line 611
    :cond_36
    if-eqz v0, :cond_5e

    .line 612
    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 613
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    const-wide/16 v5, -0x1

    const/high16 v7, -0x80000000

    if-eqz v4, :cond_54

    .line 614
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    if-eqz v8, :cond_54

    .line 617
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    .line 618
    invoke-virtual {v1, p2, v7, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 619
    return-wide v5

    .line 622
    :cond_54
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    .line 623
    invoke-virtual {v2, p2, v7, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 624
    return-wide v5

    .line 630
    .end local v4  # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_5e
    :goto_5e
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)Z
    .registers 11
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I
    .param p3, "interactive"  # Z

    .line 545
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptKeyBeforeQueueing keycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, " down."

    goto :goto_1f

    :cond_1d
    const-string v2, " up."

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/MzPhoneWindowManager;->wakeUpSystemByGestureIfNeeded(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    .line 549
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 550
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3c

    move v1, v3

    goto :goto_3d

    :cond_3c
    move v1, v2

    .line 567
    .local v1, "down":Z
    :goto_3d
    invoke-virtual {p0, p1, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptFingerTouchKey(Landroid/view/KeyEvent;Z)V

    .line 569
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_6b

    const/16 v5, 0x19

    if-eq v4, v5, :cond_6b

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_6b

    .line 580
    sget-object v4, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flyme policy not deal with keycode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 573
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptVolumeKeyForTelephony(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 574
    return v3

    .line 584
    :cond_72
    :goto_72
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzPhoneWindowManager;->isNotDispatchKey(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_80

    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/policy/gesture/SystemGesture;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)Z

    move-result v4

    if-eqz v4, :cond_81

    :cond_80
    move v2, v3

    :cond_81
    return v2
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 783
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/gesture/SystemGesture;->interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 588
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/gesture/SystemGesture;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptPowerKey(ILandroid/view/KeyEvent;Z)Z
    .registers 6
    .param p1, "keyCode"  # I
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "powerKeyHandled"  # Z

    .line 755
    if-eqz p3, :cond_9

    .line 756
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    :cond_9
    if-nez p3, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/MzPhoneWindowManager;->InterceptPowerKeyForTelephony(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/MzPhoneWindowManager;->interceptPowerKeyForMisoperation(ILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public interceptVolumeKeyForTelephony(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "intercept":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 471
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v3, 0x18

    if-nez v2, :cond_2e

    .line 472
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 473
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 474
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 475
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 476
    const/4 v0, 0x1

    .line 478
    if-ne v1, v3, :cond_2d

    .line 479
    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    .end local v2  # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2d
    goto :goto_3f

    .line 483
    :cond_2e
    iget-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    if-eqz v2, :cond_33

    .line 484
    const/4 v0, 0x1

    .line 486
    :cond_33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVloumeKeyConsumed:Z

    .line 487
    if-ne v1, v3, :cond_3f

    .line 488
    iget-object v2, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mVolumeUPLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    :cond_3f
    :goto_3f
    return v0
.end method

.method isChildMode()Z
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "children_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method public isDeviceProvisioned()Z
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method public isFlymeVersionSettingUp()Z
    .registers 3

    .line 520
    iget v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mFlymeVersionSettingUp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isGameMode()Z
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/server/policy/gamemode/GameModeController;->isGameMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isHeadSetMiddleKey(I)Z
    .registers 3
    .param p1, "keyCode"  # I

    .line 741
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_b

    const/16 v0, 0x55

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isHeadSetMiddleKeyLongPressEnabled()Z
    .registers 5

    .line 745
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "headset_middle_key_wakeup"

    const/4 v3, -0x3

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method public isPowerSaveMode()Z
    .registers 2

    .line 465
    iget-boolean v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPowerSaveMode:Z

    return v0
.end method

.method public isPressureHomeLongPressAvailable(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "keyevent"  # Landroid/view/KeyEvent;

    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$systemBooted$0$MzPhoneWindowManager()V
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mGameModeController:Lcom/android/server/policy/gamemode/GameModeController;

    return-void
.end method

.method registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/gesture/SystemGesture;->registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V

    .line 675
    return-void
.end method

.method public sendEvent(III)V
    .registers 19
    .param p1, "keycode"  # I
    .param p2, "action"  # I
    .param p3, "flags"  # I

    .line 309
    move/from16 v0, p3

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v8, v1

    .line 310
    .local v8, "repeatCount":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v12, v0, 0x8

    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v6, p2

    move/from16 v7, p1

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 315
    .local v1, "ev":Landroid/view/KeyEvent;
    move-object v2, p0

    invoke-direct {p0, v1}, Lcom/android/server/policy/MzPhoneWindowManager;->dispatchBackKeyWithWakeLock(Landroid/view/KeyEvent;)V

    .line 316
    return-void
.end method

.method public showGlobalActionsConfirm(I)V
    .registers 5
    .param p1, "action"  # I

    .line 798
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 800
    return-void
.end method

.method public startScreenshot(I)V
    .registers 3
    .param p1, "gestureType"  # I

    .line 751
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startScreenshot(I)V

    .line 752
    return-void
.end method

.method startVoiceActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "entrance"  # Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isFlymeVersionSettingUp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 238
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "flyme version setting , not start voice"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v1

    .line 242
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/policy/MzPhoneWindowManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 243
    return v1

    .line 247
    :cond_16
    :try_start_16
    sget-object v0, Lcom/android/server/policy/MzPhoneWindowManager;->TAG:Ljava/lang/String;

    const-string v2, "MzPhoneWindowManager launch voice assistant!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 251
    const-string v2, "android.intent.action.VOICE_ASSIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_40

    .line 255
    :cond_33
    const-string v2, "com.meizu.voiceassistant"

    const-string v3, "com.meizu.voiceassistant.MainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v2, "voice_entrance"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :goto_40
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    const-string/jumbo v2, "meizu.intent.extra.LONGPRESSKEY"

    const-string/jumbo v3, "meizu.intent.extra.VOICEASSISTANT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_57
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_57} :catch_5a

    .line 265
    .end local v0  # "intent":Landroid/content/Intent;
    nop

    .line 267
    const/4 v0, 0x1

    return v0

    .line 262
    :catch_5a
    move-exception v0

    .line 263
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 264
    return v1
.end method

.method public systemBooted()V
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$MzPhoneWindowManager$k1F2QQsMsG6YoFstB90T--Qgq84;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$MzPhoneWindowManager$k1F2QQsMsG6YoFstB90T--Qgq84;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 512
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/gesture/SystemGesture;->configureGestureEffectStartArea()V

    .line 414
    return-void
.end method

.method unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;

    .line 678
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/gesture/SystemGesture;->unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V

    .line 679
    return-void
.end method

.method voicePowerLongPressEnabled()Z
    .registers 5

    .line 735
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 736
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string/jumbo v3, "power_long_press_voice"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 734
    :goto_19
    return v1
.end method

.method wakeUpSystemByGestureIfNeeded(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "event"  # Landroid/view/KeyEvent;

    .line 649
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 650
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    .line 651
    .local v1, "down":Z
    :goto_f
    const/16 v4, 0x19b

    if-lt v0, v4, :cond_21

    const/16 v4, 0x1ac

    if-gt v0, v4, :cond_21

    const/16 v4, 0x19d

    if-eq v0, v4, :cond_21

    .line 654
    if-eqz v1, :cond_21

    .line 655
    invoke-direct {p0, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->triggerGesture(I)V

    .line 656
    return v2

    .line 659
    :cond_21
    return v3
.end method
