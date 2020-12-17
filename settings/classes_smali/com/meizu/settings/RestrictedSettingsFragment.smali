.class public abstract Lcom/meizu/settings/RestrictedSettingsFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# instance fields
.field private mAdminSupportDetails:Landroid/view/View;

.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mIsAdminUser:Z

.field private mOnlyAvailableForAdmins:Z

.field private final mRestrictionKey:Ljava/lang/String;

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 94
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mOnlyAvailableForAdmins:Z

    .line 78
    new-instance v0, Lcom/meizu/settings/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/RestrictedSettingsFragment$1;-><init>(Lcom/meizu/settings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/RestrictedSettingsFragment;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/RestrictedSettingsFragment;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/settings/RestrictedSettingsFragment;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method private ensurePin()V
    .registers 5

    .line 164
    iget-boolean v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 165
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 166
    iget-object v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x1

    .line 168
    iput-boolean v1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    const/4 v1, 0x0

    .line 169
    iput-boolean v1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 170
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 172
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.request.mesg"

    .line 171
    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x3015

    .line 174
    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3d
    return-void
.end method

.method private initAdminSupportDetailsView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected initEmptyTextView()Landroid/widget/TextView;
    .registers 2

    .line 213
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 118
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    invoke-direct {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->initAdminSupportDetailsView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mAdminSupportDetails:Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->initEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x3015

    if-ne p1, v0, :cond_11

    const/4 p1, -0x1

    const/4 p3, 0x0

    if-ne p2, p1, :cond_e

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    .line 153
    iput-boolean p3, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    goto :goto_10

    .line 155
    :cond_e
    iput-boolean p3, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    :goto_10
    return-void

    .line 160
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 100
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "restrictions"

    .line 102
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    const-string/jumbo v0, "user"

    .line 103
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mIsAdminUser:Z

    if-eqz p1, :cond_34

    const/4 v0, 0x0

    const-string v1, "chsc"

    .line 107
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    const-string v1, "chrq"

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    .line 111
    :cond_34
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 135
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/RestrictedSettingsFragment;->shouldBeProviderProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 138
    invoke-direct {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->ensurePin()V

    :cond_e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 125
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 128
    iget-boolean v0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeRequested:Z

    const-string v1, "chrq"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    iget-boolean p0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mChallengeSucceeded:Z

    const-string v0, "chsc"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1b
    return-void
.end method

.method protected shouldBeProviderProtected(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "restrict_if_overridable"

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mRestrictionKey:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    move p1, v0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move p1, v1

    :goto_1c
    if-eqz p1, :cond_27

    .line 204
    iget-object p0, p0, Lcom/meizu/settings/RestrictedSettingsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {p0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result p0

    if-eqz p0, :cond_27

    move v0, v1

    :cond_27
    return v0
.end method
