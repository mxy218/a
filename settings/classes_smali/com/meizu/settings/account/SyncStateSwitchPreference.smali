.class public Lcom/meizu/settings/account/SyncStateSwitchPreference;
.super Lcom/meizu/common/preference/SwitchPreference;
.source "SyncStateSwitchPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsActive:Z

    .line 35
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsPending:Z

    .line 36
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mFailed:Z

    .line 46
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 58
    iput-object p2, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mUid:I

    .line 61
    invoke-direct {p0}, Lcom/meizu/settings/account/SyncStateSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsActive:Z

    .line 35
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsPending:Z

    .line 36
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mFailed:Z

    .line 46
    iput-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/account/SyncStateSwitchPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0d02ae

    .line 88
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 8

    .line 93
    invoke-super {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0702

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/Switch;

    const v1, 0x7f0a070a

    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/LoadingView;

    .line 98
    iget-boolean v2, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsActive:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_22

    iget-boolean v2, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsPending:Z

    if-eqz v2, :cond_20

    goto :goto_22

    :cond_20
    move v2, v4

    goto :goto_23

    :cond_22
    :goto_22
    move v2, v3

    :goto_23
    const/16 v5, 0x8

    if-eqz v2, :cond_29

    move v2, v4

    goto :goto_2a

    :cond_29
    move v2, v5

    .line 99
    :goto_2a
    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 100
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_35

    move v1, v5

    goto :goto_36

    :cond_35
    move v1, v4

    :goto_36
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 102
    iget-boolean v1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-eqz v1, :cond_60

    .line 103
    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    const v0, 0x1020010

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12159e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 108
    :cond_60
    iget-boolean p1, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsActive:Z

    if-nez p1, :cond_68

    iget-boolean p0, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mIsPending:Z

    if-eqz p0, :cond_69

    :cond_68
    move v4, v5

    :cond_69
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :goto_6c
    return-void
.end method

.method protected onClick()V
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/meizu/settings/account/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_15

    .line 159
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "SyncState"

    const-string v0, "ignoring monkey\'s attempt to flip sync state"

    .line 160
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 162
    :cond_12
    invoke-super {p0}, Lcom/meizu/common/preference/SwitchPreference;->onClick()V

    :cond_15
    :goto_15
    return-void
.end method
