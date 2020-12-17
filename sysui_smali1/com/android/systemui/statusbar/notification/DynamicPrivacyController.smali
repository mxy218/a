.class public Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
.super Ljava/lang/Object;
.source "DynamicPrivacyController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mCacheInvalid:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLastDynamicUnlocked:Z

.field private mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    .line 54
    invoke-direct {p0, p3, p2, p1, p4}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    return-void
.end method

.method private isDynamicPrivacyEnabled()Z
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 91
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 90
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDynamicallyUnlocked()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 96
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 97
    :cond_18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public isInLockedDownShade()Z
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 110
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    return v1

    .line 113
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    return v1

    .line 117
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x1

    return p0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public onUnlockMethodStateChanged()V
    .registers 3

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v0

    .line 77
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    if-ne v0, v1, :cond_12

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    if-eqz v1, :cond_2a

    .line 78
    :cond_12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;

    .line 80
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;->onDynamicPrivacyChanged()V

    goto :goto_1a

    :cond_2a
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    goto :goto_31

    :cond_2e
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    :goto_31
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method
