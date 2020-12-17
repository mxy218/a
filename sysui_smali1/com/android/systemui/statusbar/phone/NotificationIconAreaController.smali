.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# instance fields
.field private iconLp:Landroid/widget/FrameLayout$LayoutParams;

.field private mAnimationsEnabled:Z

.field private mAodIconAppearTranslation:I

.field private mAodIconTint:I

.field private mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mAodIconsVisible:Z

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field protected mCenteredIconArea:Landroid/view/View;

.field private mCenteredIconTint:I

.field private mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mContext:Landroid/content/Context;

.field private final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mIconHPadding:I

.field private mIconLeftPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mNotificationScrollLayout:Landroid/view/ViewGroup;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mTintArea:Landroid/graphics/Rect;

.field private final mUpdateStatusBarIcons:Ljava/lang/Runnable;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .registers 10

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 777
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->iconLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 98
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 100
    const-class p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 101
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 102
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 103
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 104
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 105
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 106
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 107
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    return-void
.end method

.method private animateInAodIconTranslation()V
    .registers 3

    .line 651
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 652
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 654
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 655
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private applyNotificationIconsTint()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 555
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 556
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 557
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 558
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_26

    .line 560
    :cond_1e
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$kEHcYKNlJqRNuom7zI__dD3YiUQ;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 564
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 566
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_45

    .line 567
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_4d

    .line 569
    :cond_45
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$DNX7QrLi_n7I734CPybT_ZrNpwI;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 573
    :cond_50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method private isIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 748
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 749
    iget-object p1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    if-eqz p1, :cond_2b

    .line 751
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 752
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 753
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p0

    if-ne p0, p2, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method private isIconNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .registers 3

    .line 742
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 743
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->isIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)Z

    move-result p0

    return p0
.end method

.method private isThirdPartNotication(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 3

    .line 762
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_third_app_notify:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->isIconNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateAodNotificationIcons$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->aodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method static synthetic lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method private reloadAodColor()V
    .registers 3

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    return-void
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .registers 5

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050212

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 185
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 186
    sget v0, Lcom/android/systemui/R$dimen;->shelf_appear_translation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconAppearTranslation:I

    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->iconLp:Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    sget v0, Lcom/android/systemui/R$dimen;->notification_icon_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconLeftPadding:I

    return-void
.end method

.method private updateAnimations()V
    .registers 6

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 626
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_17

    if-nez v0, :cond_17

    move v4, v1

    goto :goto_18

    :cond_17
    move v4, v2

    :goto_18
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 627
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz v4, :cond_25

    if-eqz v0, :cond_25

    move v4, v1

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 628
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_32

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method private updateAodIconColors()V
    .registers 4

    const/4 v0, 0x0

    .line 663
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 664
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 665
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 666
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_25

    .line 668
    :cond_1d
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$PUTDTipRCmrDLS4VQZByqHC4HFA;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$PUTDTipRCmrDLS4VQZByqHC4HFA;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method private updateAodIconsVisibility(Z)V
    .registers 6

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 695
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v1

    .line 696
    :goto_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-eq v3, v1, :cond_1f

    move v0, v2

    :cond_1f
    if-eqz v0, :cond_27

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->isPulseExpanding()Z

    move-result v0

    .line 705
    :cond_27
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    if-eqz v0, :cond_7b

    .line 706
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_6a

    .line 709
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    .line 710
    :goto_44
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconsVisible:Z

    if-eqz p1, :cond_61

    if-eqz v1, :cond_58

    .line 713
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 714
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->appearAodIcons()V

    goto :goto_7b

    .line 718
    :cond_58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 720
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_7b

    .line 724
    :cond_61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 725
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;)V

    goto :goto_7b

    .line 728
    :cond_6a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 729
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 730
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method private updateCenterIcon()V
    .registers 1

    return-void
.end method

.method private updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZ)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "ZZZZZZZ)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 391
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 392
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    new-instance v13, Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    move v6, v8

    move v7, v6

    move/from16 v16, v7

    .line 403
    :goto_21
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v5, 0x1

    if-ge v7, v0, :cond_11e

    .line 404
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 405
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_10e

    .line 406
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v14, v4

    move/from16 v4, p5

    move/from16 v5, p6

    move v11, v6

    move/from16 v6, p7

    move/from16 v17, v7

    move/from16 v7, p8

    move-object/from16 v18, v12

    move v12, v8

    move/from16 v8, p9

    .line 407
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 411
    iget-object v0, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v11, :cond_69

    .line 412
    invoke-direct {v9, v14}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->isThirdPartNotication(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_69

    :cond_67
    move v1, v12

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v1, 0x1

    :goto_6a
    if-eqz v1, :cond_7b

    if-nez v16, :cond_7b

    .line 416
    invoke-interface {v10, v14}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_79

    .line 418
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    const/16 v16, 0x1

    .line 422
    :cond_7b
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 423
    invoke-static {v2}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    move-object/from16 v2, v18

    const/4 v4, 0x2

    goto/16 :goto_108

    .line 428
    :cond_96
    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_f7

    .line 429
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f8

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v2, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->iconLevel:I

    .line 432
    invoke-virtual {v15, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_ef

    const-string/jumbo v3, "vendor.meizu.sys.cts_state"

    .line 433
    invoke-static {v3, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_ef

    goto :goto_106

    .line 436
    :cond_ef
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f8

    :cond_f7
    const/4 v4, 0x2

    .line 440
    :cond_f8
    :goto_f8
    invoke-interface {v10, v14}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_106

    move-object/from16 v2, v18

    .line 442
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_108

    :cond_106
    :goto_106
    move-object/from16 v2, v18

    :goto_108
    move v6, v1

    goto :goto_115

    :cond_10a
    move-object/from16 v2, v18

    const/4 v4, 0x2

    goto :goto_114

    :cond_10e
    move v11, v6

    move/from16 v17, v7

    move-object v2, v12

    move v4, v14

    move v12, v8

    :goto_114
    move v6, v11

    :goto_115
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v11, p2

    move v14, v4

    move v8, v12

    move-object v12, v2

    goto/16 :goto_21

    :cond_11e
    move v11, v6

    move-object v2, v12

    move v12, v8

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIconsForLayout: hasThirdPartNotiIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationIconAreaController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_142

    .line 453
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_143

    :cond_142
    move-object v13, v2

    .line 463
    :goto_143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v12

    .line 464
    :goto_149
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_166

    move-object/from16 v2, p2

    .line 465
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 466
    instance-of v4, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v4, :cond_15a

    goto :goto_163

    .line 469
    :cond_15a
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_163

    .line 495
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_163
    :goto_163
    add-int/lit8 v1, v1, 0x1

    goto :goto_149

    :cond_166
    move-object/from16 v2, p2

    .line 510
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v12

    :goto_16d
    if-ge v3, v1, :cond_17b

    .line 512
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16d

    .line 517
    :cond_17b
    iget-object v0, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->iconLp:Landroid/widget/FrameLayout$LayoutParams;

    move v1, v12

    .line 519
    :goto_17e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1a0

    .line 520
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 522
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeTransientView(Landroid/view/View;)V

    .line 523
    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_19d

    if-eqz p4, :cond_19a

    .line 525
    iget-object v4, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 527
    :cond_19a
    invoke-virtual {v2, v3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_19d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    :cond_1a0
    const/4 v1, 0x1

    .line 531
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v1, v12

    :goto_1a9
    if-ge v1, v0, :cond_1c6

    .line 535
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 537
    iget v4, v9, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconLeftPadding:I

    invoke-virtual {v3, v4, v12, v12, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 539
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v3, v4, :cond_1bd

    goto :goto_1c3

    .line 543
    :cond_1bd
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 544
    invoke-virtual {v2, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_1c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a9

    .line 546
    :cond_1c6
    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    const/4 v0, 0x0

    .line 547
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private updateShelfIcons()V
    .registers 1

    return-void
.end method

.method private updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .registers 5

    .line 577
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lcom/android/systemui/R$id;->icon_is_pre_L:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    if-eqz v0, :cond_23

    .line 581
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 583
    :cond_23
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 584
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method


# virtual methods
.method public appearAodIcons()V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconAppearTranslation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->animateInAodIconTranslation()V

    .line 642
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 643
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 644
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 645
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 646
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_39
    return-void
.end method

.method public getCenteredNotificationAreaView()Landroid/view/View;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    return-object p0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object p0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 114
    sget p0, Lcom/android/systemui/R$layout;->notification_icon_area:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initAodIcons()V
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-eqz v0, :cond_15

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 141
    :cond_15
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$id;->clock_notification_icon_container:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOnLockScreen(Z)V

    .line 144
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    if-eqz v0, :cond_35

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    :cond_35
    return-void
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .registers 4

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    .line 129
    sget v0, Lcom/android/systemui/R$layout;->center_icon_area:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->centeredIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initAodIcons()V

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$4$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .registers 3

    .line 560
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method public synthetic lambda$applyNotificationIconsTint$5$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .registers 3

    .line 569
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method public synthetic lambda$updateAodIconColors$6$NotificationIconAreaController(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .registers 3

    .line 668
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIconTint:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    if-nez p1, :cond_8

    .line 218
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 220
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 223
    :goto_d
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    if-eqz p2, :cond_1a

    .line 224
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 225
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    goto :goto_1c

    .line 228
    :cond_1a
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 231
    :cond_1c
    :goto_1c
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconArea:Landroid/view/View;

    if-eqz p2, :cond_29

    .line 232
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 233
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    goto :goto_2b

    .line 236
    :cond_29
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconTint:I

    .line 239
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .registers 5

    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->iconLp:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    move v1, v0

    .line 159
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 161
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    move v1, v0

    .line 163
    :goto_1c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 165
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    move v1, v0

    .line 167
    :goto_31
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIcon:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 169
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 171
    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_59
    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 5

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 609
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 610
    :goto_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDozing(ZZJ)V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .registers 4

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    and-int/2addr v1, p1

    .line 682
    :cond_1c
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    return-void
.end method

.method public onPulseExpansionChanged(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 689
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    :cond_6
    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    const/4 p1, 0x0

    .line 620
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconsVisibility(Z)V

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public onThemeChanged()V
    .registers 1

    .line 632
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadAodColor()V

    .line 633
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodIconColors()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .registers 2

    .line 614
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    .line 615
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAnimations()V

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .registers 3

    .line 603
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .registers 3

    .line 152
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZ)Z
    .registers 13

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mCenteredIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->centeredIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_12

    .line 253
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-eqz p8, :cond_16

    return v0

    :cond_16
    if-eqz p6, :cond_21

    if-eqz v0, :cond_21

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result p6

    if-nez p6, :cond_21

    return v2

    .line 260
    :cond_21
    iget-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p6

    iget-object p8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p6, p8}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_32

    if-nez p2, :cond_32

    return v2

    :cond_32
    if-eqz p5, :cond_43

    .line 263
    iget-object p5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_43

    return v2

    .line 266
    :cond_43
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopLevelChild()Z

    move-result p5

    if-nez p5, :cond_4a

    return v2

    .line 269
    :cond_4a
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p5

    const/16 p6, 0x8

    if-ne p5, p6, :cond_57

    return v2

    .line 272
    :cond_57
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p5

    if-eqz p5, :cond_60

    if-eqz p3, :cond_60

    return v2

    :cond_60
    if-eqz p4, :cond_69

    .line 275
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isLastMessageFromReply()Z

    move-result p3

    if-eqz p3, :cond_69

    return v2

    :cond_69
    if-nez p2, :cond_72

    .line 279
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressStatusBar()Z

    move-result p2

    if-eqz p2, :cond_72

    return v2

    :cond_72
    if-eqz p7, :cond_89

    .line 282
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showingPulsing()Z

    move-result p2

    if-eqz p2, :cond_89

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 283
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result p2

    if-eqz p2, :cond_88

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPulseSuppressed()Z

    move-result p2

    if-nez p2, :cond_89

    :cond_88
    return v2

    .line 289
    :cond_89
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lmeizu/space/MSpaceControllerImpl;->getController(Landroid/content/Context;)Lmeizu/space/MSpaceController;

    move-result-object p2

    .line 290
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_99

    move p0, v1

    goto :goto_9a

    :cond_99
    move p0, v2

    .line 291
    :goto_9a
    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p2, p3, p0}, Lmeizu/space/MSpaceController;->isSilenceNotification(Landroid/service/notification/StatusBarNotification;Z)Z

    move-result p0

    .line 292
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object p2

    .line 294
    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez p3, :cond_ab

    return v2

    .line 298
    :cond_ab
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object p3, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean p3, p3, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz p3, :cond_b4

    return v2

    :cond_b4
    if-eqz p0, :cond_b7

    return v2

    .line 306
    :cond_b7
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->priority:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_d1

    const-string p0, "android"

    .line 307
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    const-string p0, "com.android.systemui"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d1

    :cond_d0
    return v2

    :cond_d1
    return v1
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .registers 3

    .line 599
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    return-void
.end method

.method public updateAodNotificationIcons()V
    .registers 11

    .line 367
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$b7MkWJaTAeTosmR_aU3q7JZNLpI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$b7MkWJaTAeTosmR_aU3q7JZNLpI;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAodIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 373
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    .line 367
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZ)V

    return-void
.end method

.method public updateNotificationIcons()V
    .registers 1

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateShelfIcons()V

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateCenterIcon()V

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAodNotificationIcons()V

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method public updateStatusBarIcons()V
    .registers 11

    .line 342
    sget-object v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$ujxUr-qwlryo8PHBzga56kRshsA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZZZZ)V

    return-void
.end method
