.class public Lcom/android/server/policy/MzGlobalActions;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;
    }
.end annotation


# static fields
.field public static final FONT_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.meizu.font.change"

.field public static final KEYGUARD_DIS_FINGERPRINT:Ljava/lang/String; = "com.meizu.keyguard.dismissfingerprint"

.field public static final KEYGUARD_SHOW_FINGERPRINT:Ljava/lang/String; = "com.meizu.keyguard.showfingerprint"

.field private static final SHOW_BUTTONS:I = 0x0

.field private static final SHOW_PASSWORD:I = 0x1

.field public static final SHUTDOWN_OR_REBOOT_VIEW_CLICK:Ljava/lang/String; = "com.meizu.keyguard.shutdown_or_reboot"

.field private static final TAG:Ljava/lang/String; = "MzGlobalActions"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/policy/MzGlobalActions;

.field static mMzDialog:Landroid/app/Dialog;


# instance fields
.field private mAction:I

.field private mCancelOnUp:Z

.field private mConfirm:Z

.field private mConfirmFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mConfirmSet:Landroid/animation/AnimatorSet;

.field mConfirmView:Lcom/android/server/policy/FlymeConfirmPasswordView;

.field mDeviceStateManager:Lmeizu/os/DeviceStateManager;

.field private mDismissIntent:Landroid/content/Intent;

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private mIntercepted:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mShowIntent:Landroid/content/Intent;

.field private mShutDownOrRebootViewClickIntent:Landroid/content/Intent;

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field private final mWindowTouchSlop:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "windowManagerFuncs"  # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    .line 99
    iput v0, p0, Lcom/android/server/policy/MzGlobalActions;->mAction:I

    .line 108
    sput-object p1, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 109
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "device_states"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/os/DeviceStateManager;

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    .line 110
    iput-object p2, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MzGlobalActions;->mWindowTouchSlop:I

    .line 113
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActionsProvider;

    iput-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_34

    .line 115
    invoke-interface {v0, p0}, Lcom/android/server/policy/GlobalActionsProvider;->setGlobalActionsListener(Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V

    goto :goto_3b

    .line 117
    :cond_34
    const-string v0, "MzGlobalActions"

    const-string v1, "No GlobalActionsProvider found, defaulting to LegacyGlobalActions"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_3b
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/MzGlobalActions;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mShutDownOrRebootViewClickIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mShutDownOrRebootViewClickIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/MzGlobalActions;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mDismissIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mDismissIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mShowIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;
    .param p1, "x1"  # Landroid/animation/AnimatorSet;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/policy/MzGlobalActions;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    iget-boolean v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/MzGlobalActions;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    iget v0, p0, Lcom/android/server/policy/MzGlobalActions;->mAction:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/policy/MzGlobalActions;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions;->lossMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/MzGlobalActions;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    invoke-direct {p0}, Lcom/android/server/policy/MzGlobalActions;->isIndiaArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/policy/MzGlobalActions;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/policy/MzGlobalActions;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/MzGlobalActions;
    .param p1, "x1"  # Landroid/animation/ObjectAnimator;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirmFadeInAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$600()Landroid/content/Context;
    .registers 1

    .line 75
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/server/policy/MzGlobalActions;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "windowManagerFuncs"  # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 123
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    if-nez v0, :cond_b

    .line 124
    new-instance v0, Lcom/android/server/policy/MzGlobalActions;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/MzGlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    sput-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    .line 126
    :cond_b
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mInstance:Lcom/android/server/policy/MzGlobalActions;

    return-object v0
.end method

.method private isIndiaArea()Z
    .registers 3

    .line 989
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 990
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_region"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 992
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2f
    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 989
    :goto_32
    return v0
.end method

.method private lossMode()Z
    .registers 5

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "recoveryLossState":I
    iget-object v1, p0, Lcom/android/server/policy/MzGlobalActions;->mDeviceStateManager:Lmeizu/os/DeviceStateManager;

    if-eqz v1, :cond_1b

    .line 978
    sget-object v2, Lmeizu/os/DeviceStateManager$RemoteHandle;->Lock_Report_Loss:Lmeizu/os/DeviceStateManager$RemoteHandle;

    invoke-virtual {v2}, Lmeizu/os/DeviceStateManager$RemoteHandle;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lmeizu/os/DeviceStateManager;->doCheckState(I)I

    move-result v0

    .line 979
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 980
    const-string v2, "FindPhone"

    const-string/jumbo v3, "lossMode"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return v1

    .line 984
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onGlobalActionsAvailableChanged(Z)V
    .registers 2
    .param p1, "available"  # Z

    .line 154
    return-void
.end method

.method public onGlobalActionsDismissed()V
    .registers 1

    .line 164
    return-void
.end method

.method public onGlobalActionsShown()V
    .registers 1

    .line 159
    return-void
.end method

.method public showGlobalActionsDialog()V
    .registers 2

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/MzGlobalActions;->showGlobalActionsDialog(ZI)V

    .line 131
    return-void
.end method

.method public showGlobalActionsDialog(ZI)V
    .registers 6
    .param p1, "isConfirming"  # Z
    .param p2, "action"  # I

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->isGlobalActionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    return-void

    .line 138
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    .line 139
    iput p2, p0, Lcom/android/server/policy/MzGlobalActions;->mAction:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showGlobalActionsDialog , mConfirm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/MzGlobalActions;->mConfirm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    if-nez v0, :cond_47

    .line 142
    new-instance v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    sget-object v1, Lcom/android/server/policy/MzGlobalActions;->mContext:Landroid/content/Context;

    const v2, 0xa110012

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;-><init>(Lcom/android/server/policy/MzGlobalActions;Landroid/content/Context;I)V

    sput-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    .line 144
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 148
    :cond_47
    sget-object v0, Lcom/android/server/policy/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 149
    return-void
.end method
