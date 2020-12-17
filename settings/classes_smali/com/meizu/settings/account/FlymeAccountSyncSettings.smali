.class public Lcom/meizu/settings/account/FlymeAccountSyncSettings;
.super Ljava/lang/Object;
.source "FlymeAccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountType:Ljava/lang/String;

.field private mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mContext:Landroid/content/Context;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 40
    iput-object p3, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/account/FlymeAccountSyncSettings;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/account/FlymeAccountSyncSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/account/FlymeAccountSyncSettings;)Landroid/os/UserHandle;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mAccountType:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_10

    return v0

    .line 128
    :cond_10
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 129
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 131
    :try_start_14
    iget-object p0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 132
    iget-boolean p1, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez p1, :cond_24

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_22} :catch_26

    if-ne p1, p0, :cond_25

    :cond_24
    const/4 v0, 0x1

    :cond_25
    return v0

    :catch_26
    move-exception p0

    const-string p1, "FlymeAccountSyncSettings"

    const-string p2, "Intent considered unsafe due to exception."

    .line 135
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public addCategory(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 143
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-lez p0, :cond_1c

    .line 144
    new-instance p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1200ca

    .line 145
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, -0x1

    .line 146
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 147
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1c
    return-void
.end method

.method public setAccountAndType(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    .line 44
    iput-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mAccountType:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-void
.end method

.method public updatePreferenceIntents(Landroidx/preference/PreferenceScreen;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    :goto_a
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 53
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 70
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 74
    new-instance v3, Lcom/meizu/settings/account/FlymeAccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/meizu/settings/account/FlymeAccountSyncSettings$1;-><init>(Lcom/meizu/settings/account/FlymeAccountSyncSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_5d

    :cond_2f
    const/high16 v4, 0x10000

    .line 85
    iget-object v5, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 86
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 85
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_41

    .line 88
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_a

    .line 91
    :cond_41
    iget-object v4, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v5, "account"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    new-instance v3, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;-><init>(Lcom/meizu/settings/account/FlymeAccountSyncSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_60
    return-void
.end method
