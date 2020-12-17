.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
    }
.end annotation


# static fields
.field private static final INTENT_EMERGENCY_DIAL:Landroid/content/Intent;


# instance fields
.field private mDownX:I

.field private mDownY:I

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsCarrierSupported:Z

.field private mIsShowEmergencyButton:Z

.field private final mIsVoiceCapable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressWasDragged:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14800000

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance p2, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object p2, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 308
    invoke-static {}, Lcom/android/keyguard/EmergencyButton;->isCarrierOneSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mIsCarrierSupported:Z

    const/4 p2, 0x1

    .line 316
    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mIsShowEmergencyButton:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x11100f6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    .line 107
    iget-object p2, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x111007c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 109
    new-instance p2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {p2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyButton;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    return-object p0
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .registers 2

    .line 279
    iget-object p0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public static isCarrierOneSupported()Z
    .registers 2

    const-string v0, "persist.radio.atel.carrier"

    .line 301
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "405854"

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isInCall()Z
    .registers 1

    .line 275
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    return p0
.end method

.method private resumeCall()V
    .registers 2

    .line 268
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 114
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 115
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 174
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 120
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 121
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 126
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 127
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 128
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 129
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v0, Lcom/android/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_18

    .line 153
    iput v0, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    .line 154
    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    goto :goto_3f

    .line 157
    :cond_18
    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 158
    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 159
    iget-object v2, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 160
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_3f

    :cond_3c
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    .line 164
    :cond_3f
    :goto_3f
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .registers 1

    .line 169
    invoke-super {p0}, Landroid/widget/Button;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    return-void
.end method

.method public takeEmergencyCallAction()V
    .registers 5

    .line 182
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 187
    :try_start_11
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    const-string v0, "EmergencyButton"

    const-string v1, "Failed to stop app pinning"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_20
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 192
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v0, :cond_57

    .line 195
    invoke-virtual {p0}, Landroid/widget/Button;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/EmergencyButton$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyButton$4;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_57

    .line 204
    :cond_3c
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 206
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    .line 210
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 206
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public updateEmergencyCallButton()V
    .registers 6

    .line 216
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_59

    .line 218
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5a

    .line 221
    :cond_d
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 225
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    goto :goto_3a

    .line 228
    :cond_1c
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->config_showEmergencyButton:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    :cond_37
    move v0, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v0, v1

    .line 232
    :goto_3a
    iget-object v3, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$bool;->kg_hide_emgcy_btn_when_oos:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 233
    iget-object v3, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    if-eqz v0, :cond_59

    .line 234
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOOS()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5a

    :cond_57
    move v1, v0

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    if-eqz v1, :cond_7b

    .line 239
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsShowEmergencyButton:Z

    if-eqz v0, :cond_7b

    .line 240
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 243
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_6d

    const v0, 0x1040398

    goto :goto_77

    .line 246
    :cond_6d
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsCarrierSupported:Z

    if-eqz v0, :cond_74

    .line 248
    sget v0, Lcom/android/systemui/R$string;->kg_emergency_call_label:I

    goto :goto_77

    :cond_74
    const v0, 0x104037d

    .line 253
    :goto_77
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_80

    :cond_7b
    const/16 v0, 0x8

    .line 255
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_80
    return-void
.end method
