.class public Lcom/meizu/settings/security/FlymeAccessPasswordSettings;
.super Lcom/meizu/settings/AppListBaseSettings;
.source "FlymeAccessPasswordSettings.java"


# instance fields
.field private mApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppLockEnable:Z

.field private mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mPasswordConfirmed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/meizu/settings/AppListBaseSettings;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mApps:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;I)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->startConfirmPassword(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;Z)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->startCreatePassword(Z)V

    return-void
.end method

.method private createOnPartOneClickListener()Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;
    .registers 2

    .line 196
    new-instance v0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$3;-><init>(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)V

    return-object v0
.end method

.method private saveApplist()V
    .registers 3

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$2;-><init>(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startConfirmPassword(I)V
    .registers 5

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/MzSettingsActivity$MzConfirmPasswordActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password_from"

    const/4 v2, 0x2

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startCreatePassword(Z)V
    .registers 6

    const/4 v0, 0x2

    if-eqz p1, :cond_10

    .line 98
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordType(I)I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 101
    :goto_11
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/meizu/settings/MzSettingsActivity$EnterPasswordActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 103
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "password_from"

    .line 104
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "extra_key_password_type"

    .line 106
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const-string v3, ":settings:show_fragment_as_subsetting"

    .line 107
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const p1, 0x7f1201b9

    const-string v3, ":settings:show_fragment_title_resid"

    .line 108
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "create_password_bundle"

    .line 110
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public createMzSingleArrayGroupAdapter(Ljava/util/List;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)",
            "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    const/4 v0, 0x0

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/MzAppEntry;

    if-eqz v1, :cond_17

    .line 51
    iget-object v2, v1, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_17

    iget-object v1, v1, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_30

    .line 52
    :cond_17
    new-instance v1, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 53
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    aput v0, v1, v2

    .line 60
    :cond_30
    new-instance v0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    .line 61
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    iget-object v3, p0, Lcom/meizu/settings/AppListBaseSettings;->mLaunchNames:Ljava/util/HashMap;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[ILjava/util/HashMap;)V

    .line 64
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->createOnPartOneClickListener()Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->setOnPartOneClickListener(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;)V

    return-object v0
.end method

.method protected createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .line 70
    new-instance v0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings$1;-><init>(Lcom/meizu/settings/security/FlymeAccessPasswordSettings;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p1, :cond_1d

    if-ne p2, v0, :cond_1a

    .line 165
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAppLockEnable(Z)V

    .line 166
    new-instance p1, Landroid/content/Intent;

    const-string p2, "flyme.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    :cond_1a
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    goto :goto_58

    :cond_1d
    if-ne p1, v1, :cond_27

    if-ne p2, v0, :cond_24

    .line 173
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->startCreatePassword(Z)V

    .line 175
    :cond_24
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    goto :goto_58

    :cond_27
    const/16 v2, 0x64

    const/4 v3, 0x2

    if-ne p1, v2, :cond_44

    if-ne p2, v0, :cond_3a

    .line 178
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAssociateFlymeAccountOpened(IZ)V

    goto :goto_41

    .line 181
    :cond_3a
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/meizu/settings/utils/FlymeAccountHelper;->handleValidatePasswordError(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 183
    :goto_41
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    goto :goto_58

    :cond_44
    const/4 p3, 0x3

    if-ne p1, p3, :cond_54

    if-ne p2, v0, :cond_4c

    .line 186
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    goto :goto_58

    .line 188
    :cond_4c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_58

    :cond_54
    if-ne p1, v3, :cond_58

    .line 191
    iput-boolean v1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    :cond_58
    :goto_58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 40
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 42
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "password_confirmed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    return-void
.end method

.method public onCreateAppLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;"
        }
    .end annotation

    .line 122
    new-instance p1, Lcom/meizu/settings/security/FlymeLockItemsLoader;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mApps:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/meizu/settings/AppListBaseSettings;->mLaunchNames:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/meizu/settings/security/FlymeLockItemsLoader;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;[I)V

    return-object p1
.end method

.method public onPause()V
    .registers 2

    .line 141
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    .line 144
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->saveApplist()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 149
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mIsAppLockEnable:Z

    .line 151
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mPasswordConfirmed:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mIsAppLockEnable:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    .line 152
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->startConfirmPassword(I)V

    .line 154
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    if-eqz v0, :cond_1e

    .line 155
    invoke-virtual {v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 158
    :cond_1e
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/AppListBaseSettings;->setFastScrollLetterEnable(ZZ)V

    return-void
.end method
