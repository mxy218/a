.class public Lcom/android/systemui/globalactions/GlobalActionsDialog;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasLockdownButton:Z

.field private mHasLogoutButton:Z

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPanelPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

.field private final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .registers 7

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    .line 158
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    .line 1398
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1419
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1430
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1439
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1451
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .line 177
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    const-string p2, "dreams"

    .line 179
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 178
    invoke-static {p2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 180
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 182
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 183
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 186
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 187
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 188
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 189
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p2, "connectivity"

    .line 193
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 194
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    const-string p2, "phone"

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 199
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 200
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "airplane_mode_on"

    .line 201
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 200
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    if-eqz p2, :cond_d4

    .line 204
    invoke-virtual {p2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p2

    if-eqz p2, :cond_d4

    move v0, v2

    :cond_d4
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    .line 206
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x11100ea

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    xor-int/2addr p2, v2

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    .line 209
    new-instance p2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {p2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 210
    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 211
    new-instance p2, Lcom/android/internal/util/ScreenRecordHelper;

    invoke-direct {p2, p1}, Lcom/android/internal/util/ScreenRecordHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

    .line 213
    const-class p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 215
    const-class p2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 216
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    .line 217
    new-instance p2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$BHjCg9_-WI1H1nuzvvDXExj6TPU;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$BHjCg9_-WI1H1nuzvvDXExj6TPU;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/ActivityStarter;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 113
    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldUseSeparatedView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenshotHelper;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/ScreenRecordHelper;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mScreenRecordHelper:Lcom/android/internal/util/ScreenRecordHelper;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/pm/UserInfo;
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lockProfiles()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$3000(Landroid/content/Context;)Z
    .registers 1

    .line 113
    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isForceGridEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object p1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;)V"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 859
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 860
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 861
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 862
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 863
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_39

    .line 865
    iget v4, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_40

    goto :goto_41

    :cond_39
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    .line 866
    :goto_41
    iget-object v3, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_4a

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    move-object v6, v3

    .line 868
    new-instance v9, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;

    const v5, 0x108048e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    iget-object v4, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_5b

    goto :goto_5d

    :cond_5b
    const-string v4, "Primary"

    :goto_5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_65

    const-string v2, " ✔"

    goto :goto_67

    :cond_65
    const-string v2, ""

    .line 871
    :goto_67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 888
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_77
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_f

    .line 257
    :try_start_4
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 258
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 5

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1492
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 1491
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1495
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 1496
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    .line 1497
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1498
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1499
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-nez v0, :cond_31

    if-eqz p1, :cond_2d

    .line 1500
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_2f

    :cond_2d
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_2f
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :cond_31
    return-void
.end method

.method private createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .registers 11

    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v0, :cond_c

    .line 294
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    goto :goto_17

    .line 296
    :cond_c
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 298
    :goto_17
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    const v5, 0x10803af

    const v6, 0x10803b1

    const v7, 0x10402c6

    const v8, 0x10402c5

    const v9, 0x10402c4

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    .line 346
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLogoutButton:Z

    .line 347
    iput-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLockdownButton:Z

    move v3, v2

    .line 348
    :goto_51
    array-length v4, v0

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1c8

    .line 349
    aget-object v4, v0, v3

    .line 350
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    goto/16 :goto_1c4

    :cond_5f
    const-string v6, "power"

    .line 354
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 355
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c1

    :cond_73
    const-string v6, "airplane"

    .line 356
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 357
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c1

    :cond_84
    const-string v6, "bugreport"

    .line 358
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 359
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bugreport_in_power_menu"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1c1

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isCurrentUserOwner()Z

    move-result v5

    if-eqz v5, :cond_1c1

    .line 361
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c1

    :cond_ac
    const-string/jumbo v6, "silent"

    .line 363
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 364
    iget-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v5, :cond_1c1

    .line 365
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c1

    :cond_c2
    const-string/jumbo v6, "users"

    .line 367
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    const-string v5, "fw.power_user_switcher"

    .line 368
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1c1

    .line 369
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_1c1

    :cond_da
    const-string/jumbo v6, "settings"

    .line 371
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 372
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c1

    :cond_ee
    const-string v6, "lockdown"

    .line 373
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_11e

    .line 374
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "lockdown_in_power_menu"

    .line 374
    invoke-static {v5, v8, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1c1

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->shouldDisplayLockdown()Z

    move-result v5

    if-eqz v5, :cond_1c1

    .line 377
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getLockdownAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iput-boolean v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLockdownButton:Z

    goto/16 :goto_1c1

    :cond_11e
    const-string/jumbo v6, "voiceassist"

    .line 380
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 381
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c1

    :cond_132
    const-string v6, "assist"

    .line 382
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_145

    .line 383
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c1

    :cond_145
    const-string v6, "restart"

    .line 384
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_158

    .line 385
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c1

    :cond_158
    const-string v6, "screenshot"

    .line 386
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16b

    .line 387
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;

    invoke-direct {v6, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ScreenshotAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c1

    :cond_16b
    const-string v6, "logout"

    .line 388
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_190

    .line 389
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c1

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_1c1

    .line 391
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iput-boolean v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasLogoutButton:Z

    goto :goto_1c1

    :cond_190
    const-string v6, "emergency"

    .line 394
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ab

    .line 395
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v6}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v6

    if-nez v6, :cond_1c1

    .line 396
    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c1

    .line 399
    :cond_1ab
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid global action key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GlobalActionsDialog"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1c1
    :goto_1c1
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1c4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_51

    .line 405
    :cond_1c8
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 406
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAffordanceAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1da
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 412
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPanelPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    if-eqz v0, :cond_1f4

    .line 413
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 429
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v3

    .line 413
    invoke-interface {v0, v1, v3}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;->onPanelShown(Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$Callbacks;Z)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object v5

    .line 432
    :cond_1f4
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-direct {v0, v1, v3, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;)V

    .line 433
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 434
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setKeyguardShowing(Z)V

    .line 436
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 437
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method private getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .registers 4

    .line 758
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;

    const v1, 0x108030a

    const v2, 0x10402b5

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 1

    .line 846
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLockdownAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .registers 4

    .line 802
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    const v1, 0x10803b6

    const v2, 0x10402b9

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .registers 4

    .line 735
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;

    const v1, 0x108050b

    const v2, 0x10402be

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .registers 4

    .line 780
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;

    const v1, 0x1080533

    const v2, 0x10402c2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private handleShow()V
    .registers 4

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->awakenIfNecessary()V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->prepareDialog()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 274
    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    if-nez v0, :cond_36

    .line 275
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->onPress()V

    goto :goto_5a

    .line 277
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v2, "ActionsDialog"

    .line 278
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 280
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->show()V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    :goto_5a
    return-void
.end method

.method private isCurrentUserOwner()Z
    .registers 1

    .line 853
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 854
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static isForceGridEnabled(Landroid/content/Context;)Z
    .registers 1

    .line 1838
    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isPanelDebugModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isPanelDebugModeEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 1829
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "global_actions_panel_debug_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method private lockProfiles()V
    .registers 7

    .line 833
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 834
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    .line 835
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 836
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 837
    array-length v2, v0

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_2f

    aget v4, v0, v3

    if-eq v4, p0, :cond_2c

    const/4 v5, 0x1

    .line 839
    invoke-virtual {v1, v4, v5}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_2f
    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 4

    .line 1477
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-eqz v0, :cond_5

    return-void

    .line 1479
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1480
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    .line 1479
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    move v1, v2

    :cond_16
    if-eqz v1, :cond_1b

    .line 1483
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_1d
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    return-void
.end method

.method private prepareDialog()V
    .registers 3

    .line 895
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    .line 896
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    .line 897
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 898
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v0, :cond_21

    .line 899
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_21
    return-void
.end method

.method private refreshSilentMode()V
    .registers 3

    .line 905
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v0, :cond_1e

    .line 906
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 907
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 908
    :goto_10
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    if-eqz v0, :cond_19

    .line 909
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_1b

    :cond_19
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 908
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    :cond_1e
    return-void
.end method

.method private shouldDisplayLockdown()Z
    .registers 4

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 445
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    .line 450
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1c

    :cond_1b
    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method private static shouldUseSeparatedView()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 464
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public dismissDialog()V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic lambda$new$0$GlobalActionsDialog(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$3100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 220
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 221
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$3100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->onDeviceLockStateChanged(Z)V

    :cond_19
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 915
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    .line 916
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz p1, :cond_17

    .line 918
    :try_start_9
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception p0

    const-string p1, "GlobalActionsDialog"

    .line 921
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2

    .line 928
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const/16 p1, 0x620

    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    return-void
.end method

.method public onUiModeChanged()V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 459
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->refreshDialog()V

    :cond_1f
    return-void
.end method

.method public showDialog(ZZLcom/android/systemui/plugins/GlobalActionsPanelPlugin;)V
    .registers 4

    .line 233
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    .line 234
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    .line 235
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPanelPlugin:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 236
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p1, :cond_17

    .line 237
    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 240
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1a

    .line 242
    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    :goto_1a
    return-void
.end method
