.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$LockAnimIndex;
    }
.end annotation


# static fields
.field private static final LOCK_ANIM_RES_IDS:[[I


# instance fields
.field private final mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mBlockUpdates:Z

.field private mBouncerShowingScrimmed:Z

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mDensity:I

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDocked:Z

.field private mDozeAmount:F

.field private mDozing:Z

.field private mForceUpdate:Z

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIconColor:I

.field private mIsFaceUnlockState:Z

.field private mKeyguardJustShown:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastState:I

.field private mPulsing:Z

.field private mShowingLaunchAffordance:Z

.field private mSimLocked:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTransientBiometricsError:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdatePending:Z

.field private mWakeAndUnlockRunning:Z

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    .line 472
    sget v3, Lcom/android/systemui/R$anim;->lock_to_error:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$anim;->lock_unlock:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$anim;->lock_lock:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$anim;->lock_scanning:I

    const/4 v7, 0x3

    aput v3, v2, v7

    aput-object v2, v1, v4

    new-array v2, v0, [I

    sget v3, Lcom/android/systemui/R$anim;->lock_to_error_circular:I

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$anim;->lock_unlock_circular:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$anim;->lock_lock_circular:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$anim;->lock_scanning_circular:I

    aput v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v0, [I

    sget v3, Lcom/android/systemui/R$anim;->lock_to_error_filled:I

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$anim;->lock_unlock_filled:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$anim;->lock_lock_filled:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$anim;->lock_scanning_filled:I

    aput v3, v2, v7

    aput-object v2, v1, v6

    new-array v0, v0, [I

    sget v2, Lcom/android/systemui/R$anim;->lock_to_error_rounded:I

    aput v2, v0, v4

    sget v2, Lcom/android/systemui/R$anim;->lock_unlock_rounded:I

    aput v2, v0, v5

    sget v2, Lcom/android/systemui/R$anim;->lock_lock_rounded:I

    aput v2, v0, v6

    sget v2, Lcom/android/systemui/R$anim;->lock_scanning_rounded:I

    aput v2, v0, v7

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/phone/LockIcon;->LOCK_ANIM_RES_IDS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .registers 11
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .param p9  # Lcom/android/systemui/dock/DockManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 89
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 108
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 133
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockIcon$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$2;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    .line 146
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockIcon$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$3;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 185
    iput-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 186
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 187
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 188
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 189
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 190
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 191
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 192
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 193
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 194
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 195
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/LockIcon;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardJustShown:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private canBlockUpdates()Z
    .registers 2

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

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

.method private getIconForState(I)I
    .registers 2

    if-eqz p1, :cond_16

    const/4 p0, 0x1

    if-eq p1, p0, :cond_12

    const/4 p0, 0x2

    if-eq p1, p0, :cond_16

    const/4 p0, 0x3

    if-ne p1, p0, :cond_c

    goto :goto_16

    .line 421
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_12
    const p0, 0x10803b7

    goto :goto_19

    :cond_16
    :goto_16
    const p0, 0x10803ae

    :goto_19
    return p0
.end method

.method private getState()I
    .registers 3

    .line 514
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardShowing:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 516
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    if-nez v1, :cond_20

    const/4 p0, 0x1

    return p0

    .line 518
    :cond_20
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    if-eqz v1, :cond_26

    const/4 p0, 0x3

    return p0

    .line 520
    :cond_26
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-nez p0, :cond_32

    const/4 p0, 0x2

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private updateClickability()V
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_5

    return-void

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 378
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 379
    :goto_1a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    .line 380
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz v0, :cond_28

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    .line 381
    :goto_29
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method private updateDarkTint()V
    .registers 4

    .line 552
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 553
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateIconVisibility()Z
    .registers 6

    .line 339
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDocked:Z

    if-eqz v0, :cond_10

    :cond_e
    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-nez v0, :cond_1e

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v2

    .line 342
    :goto_1f
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerShowingScrimmed:Z

    if-nez v3, :cond_4c

    .line 343
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUpGoingAway()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 344
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-ne v3, v2, :cond_4c

    :cond_43
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 345
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v3

    if-nez v3, :cond_4c

    move v0, v2

    .line 349
    :cond_4c
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_55

    move v3, v2

    goto :goto_56

    :cond_55
    move v3, v1

    :goto_56
    if-eq v0, v3, :cond_90

    if-eqz v0, :cond_5b

    move v1, v4

    .line 351
    :cond_5b
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez v0, :cond_8f

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 355
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 356
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 357
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 358
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 359
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xe9

    .line 361
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8f
    return v2

    :cond_90
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .line 200
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mSimLocked:Z

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_36

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 211
    :cond_36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->onThemeChanged()V

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onBiometricAuthModeChanged(ZZ)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 587
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    :cond_5
    if-eqz p2, :cond_17

    .line 589
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->canBlockUpdates()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 591
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    .line 593
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 253
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 255
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq p1, v0, :cond_e

    .line 256
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_e
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 4

    .line 558
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 562
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 563
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 564
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 217
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardMonitorCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->removeListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_2e

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_2e
    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .registers 3

    .line 529
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozeAmount:F

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 2

    .line 547
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDozing:Z

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .registers 2

    .line 453
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_11
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 387
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v0, :cond_35

    if-eqz v1, :cond_35

    .line 391
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 394
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->accessibility_unlock_without_fingerprint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 396
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_waiting_for_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_4f

    .line 398
    :cond_35
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz v0, :cond_4f

    .line 400
    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onLocaleListChanged()V
    .registers 3

    .line 570
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onPreDraw()Z
    .registers 6

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdatePending:Z

    .line 278
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v1

    .line 281
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v0

    .line 283
    :goto_17
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    .line 284
    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 285
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mKeyguardJustShown:Z

    if-ne v2, v1, :cond_26

    .line 287
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mForceUpdate:Z

    if-eqz v2, :cond_24

    goto :goto_26

    :cond_24
    move v2, v0

    goto :goto_27

    :cond_26
    :goto_26
    move v2, v3

    .line 288
    :goto_27
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBlockUpdates:Z

    if-eqz v4, :cond_32

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->canBlockUpdates()Z

    move-result v4

    if-eqz v4, :cond_32

    move v2, v0

    :cond_32
    if-eqz v2, :cond_5d

    .line 292
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mForceUpdate:Z

    .line 296
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(I)I

    move-result v1

    .line 298
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 299
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_48

    .line 300
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    .line 302
    :goto_49
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIsFaceUnlockState:Z

    if-eqz v0, :cond_5d

    .line 304
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_scanning_face:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 326
    :cond_5d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconVisibility()Z

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    return v3
.end method

.method public onScrimVisibilityChanged(I)V
    .registers 3

    .line 608
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 610
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mWakeAndUnlockRunning:Z

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_c
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Z)V
    .registers 2

    .line 600
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mShowingLaunchAffordance:Z

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onThemeChanged()V
    .registers 5

    .line 231
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 233
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconColor:I

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateDarkTint()V

    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .registers 1

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setBouncerShowingScrimmed(Z)V
    .registers 2

    .line 462
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBouncerShowingScrimmed:Z

    .line 463
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_d
    return-void
.end method

.method public setPulsing(Z)V
    .registers 2

    .line 538
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPulsing:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientBiometricsError(Z)V
    .registers 2

    .line 247
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientBiometricsError:Z

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .registers 2

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 267
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mForceUpdate:Z

    .line 269
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdatePending:Z

    if-nez p1, :cond_12

    .line 270
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdatePending:Z

    .line 271
    invoke-virtual {p0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_12
    return-void
.end method
