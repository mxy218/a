.class public Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
.super Landroid/widget/FrameLayout;
.source "MultiUserSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mKeyguardMode:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field protected mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mTmpInt2:[I

.field private mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field final mUserManager:Landroid/os/UserManager;

.field protected mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method private refreshContentDescription()V
    .registers 6

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_14

    .line 172
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    .line 177
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 178
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_user:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 184
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_36
    return-void
.end method

.method private registerListener()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-nez v0, :cond_1a

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_1a

    .line 127
    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    :cond_1a
    return-void
.end method


# virtual methods
.method protected getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiUserEnabled()Z
    .registers 5

    .line 103
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-eqz v0, :cond_62

    .line 108
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_user_switch"

    .line 110
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_62

    .line 114
    :cond_2f
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getGuestUserDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 116
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getSwitchableUserCount()I

    move-result v3

    if-gt v3, v2, :cond_61

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_add_user"

    .line 118
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_53
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->qs_show_user_switcher_for_single_user:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_62

    :cond_61
    move v1, v2

    :cond_62
    :goto_62
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 145
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz p0, :cond_4c

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->show(Z)V

    goto :goto_4c

    .line 149
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz p1, :cond_4c

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_21

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_22

    :cond_21
    move-object p1, p0

    .line 152
    :goto_22
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    aget v3, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    aget v2, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    aput v2, v1, v0

    .line 156
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mTmpInt2:[I

    .line 156
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 64
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 65
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 191
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 197
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Z)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method

.method public setKeyguardMode(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardMode:Z

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 71
    const-class p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription()V

    return-void
.end method
