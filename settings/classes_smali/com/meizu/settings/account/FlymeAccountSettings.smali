.class public Lcom/meizu/settings/account/FlymeAccountSettings;
.super Ljava/lang/Object;
.source "FlymeAccountSettings.java"


# static fields
.field private static final FILTER_ACCOUNT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessiblePreferenceCategory:Lcom/android/settings/AccessiblePreferenceCategory;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountSettings:Lcom/android/settings/accounts/AccountPreferenceController;

.field private mAddAccountButton:Landroid/view/View;

.field private mAddAccountPreference:Landroidx/preference/Preference;

.field private mAlipayPreference:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

.field private mFlymeCloudCategory:Landroidx/preference/PreferenceCategory;

.field private mFlymeCloudServicePref:Landroidx/preference/Preference;

.field private mFlymeCloudServiceSummaryPref:Landroidx/preference/Preference;

.field private mIsFlymeAccountLogin:Z

.field private mNeedOverridePending:Z

.field private mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSinaWeiboPreference:Landroidx/preference/Preference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    .line 93
    sget-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    const-string v1, "com.meizu.account"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    const-string v1, "com.taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    const-string v1, "com.aliyun.tyid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_37

    .line 97
    sget-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    const-string v1, "com.alipay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone.perf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mNeedOverridePending:Z

    .line 104
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    .line 105
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 106
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    .line 107
    invoke-direct {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->addOnAccountsUpdatedListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/account/FlymeAccountSettings;)Landroid/content/Context;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/account/FlymeAccountSettings;)Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mIsFlymeAccountLogin:Z

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/account/FlymeAccountSettings;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mIsFlymeAccountLogin:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/account/FlymeAccountSettings;)Lcom/meizu/settings/utils/FlymeAccountHelper;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/account/FlymeAccountSettings;)Landroidx/preference/Preference;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAddAccountPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/account/FlymeAccountSettings;)Lcom/android/settings/accounts/AccountPreferenceController;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccountSettings:Lcom/android/settings/accounts/AccountPreferenceController;

    return-object p0
.end method

.method private addOnAccountsUpdatedListener()V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-nez v0, :cond_1c

    .line 112
    new-instance v0, Lcom/meizu/settings/account/FlymeAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/account/FlymeAccountSettings$1;-><init>(Lcom/meizu/settings/account/FlymeAccountSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 126
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccountManager:Landroid/accounts/AccountManager;

    .line 127
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    :cond_1c
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAlipayClick()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 232
    invoke-direct {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->startAlipay()V

    goto :goto_21

    .line 234
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f120783

    invoke-direct {p0, v2}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12010f

    .line 235
    invoke-direct {p0, v3}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {v0, v2, p0, v1}, Lcom/meizu/settings/utils/MzUtils;->downloadFromMStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private initAddAccountButton(Landroid/view/View;)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_modify_accounts"

    .line 173
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const v1, 0x7f0a005b

    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a012e

    .line 177
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAddAccountButton:Landroid/view/View;

    if-eqz v0, :cond_26

    const p1, 0x3ecccccd  # 0.4f

    .line 180
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 183
    :cond_26
    new-instance p1, Lcom/meizu/settings/account/FlymeAccountSettings$2;

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/account/FlymeAccountSettings$2;-><init>(Lcom/meizu/settings/account/FlymeAccountSettings;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAccountSyncable(Landroid/accounts/Account;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p3, :cond_39

    .line 364
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 365
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v0, p0

    :cond_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 368
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 369
    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_34

    .line 370
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    move v0, p0

    :goto_35
    if-eqz v0, :cond_e

    :cond_37
    move p0, v0

    goto :goto_4f

    .line 375
    :cond_39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no syncadapters found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlymeAccountSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return p0
.end method

.method public static needFilter(Ljava/lang/String;)Z
    .registers 2

    .line 253
    sget-object v0, Lcom/meizu/settings/account/FlymeAccountSettings;->FILTER_ACCOUNT:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private reportData()V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "FlymeAccountSettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v2, "account_autosync"

    invoke-virtual {p0, v2, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private startAlipay()V
    .registers 3

    .line 242
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "alipays://platformapi/startApp?appId=20000001&actionType=20000004&tabSelectedIndex=2"

    .line 244
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private updateAccoountPreference(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 290
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 291
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 292
    array-length v4, v2

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v4, :cond_21

    .line 293
    aget-object v7, v2, v6

    .line 294
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 295
    iget-object v7, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 298
    :cond_21
    iget-object v2, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 299
    invoke-virtual {v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 300
    :goto_28
    array-length v7, v4

    if-ge v6, v7, :cond_16c

    .line 301
    aget-object v7, v4, v6

    .line 302
    iget-object v8, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 303
    invoke-virtual {v8, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 304
    iget-object v9, v0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    iget-object v10, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 305
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v9

    .line 306
    array-length v10, v9

    const/4 v11, 0x0

    :goto_45
    if-ge v11, v10, :cond_166

    .line 309
    aget-object v12, v9, v11

    if-eqz v8, :cond_53

    .line 310
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_53

    const/4 v13, 0x1

    goto :goto_54

    :cond_53
    const/4 v13, 0x0

    .line 312
    :goto_54
    invoke-direct {v0, v12, v3, v8}, Lcom/meizu/settings/account/FlymeAccountSettings;->isAccountSyncable(Landroid/accounts/Account;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result v14

    .line 315
    iget-object v15, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v15}, Lcom/meizu/settings/account/FlymeAccountSettings;->needFilter(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_105

    .line 317
    iget-object v15, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v5, ","

    if-eqz v15, :cond_8d

    .line 318
    iget-object v15, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v15, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    goto :goto_a9

    :cond_8d
    move-object/from16 v16, v3

    .line 321
    iget-object v3, v1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroidx/preference/PreferenceGroup;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 324
    :goto_a9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "preference:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", packageType:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v2, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v15, "test"

    .line 324
    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_160

    const v5, 0x7f121596

    if-eqz v14, :cond_dd

    .line 329
    invoke-direct {v0, v5}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    .line 331
    :cond_dd
    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v14, "com.lakala.android.meizu"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const v14, 0x7f121595

    if-eqz v12, :cond_fd

    if-nez v13, :cond_f5

    .line 334
    invoke-direct {v0, v5}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_160

    .line 336
    :cond_f5
    invoke-direct {v0, v14}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_160

    .line 338
    :cond_fd
    invoke-direct {v0, v14}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_160

    :cond_105
    move-object/from16 v16, v3

    .line 342
    iget-object v3, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.eg.android.AlipayGphone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v5, 0x7f1204f2

    if-nez v3, :cond_145

    iget-object v3, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v15, "com.alipay"

    .line 343
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11f

    goto :goto_145

    .line 350
    :cond_11f
    iget-object v3, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "com.meizu.sns.sina"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_160

    if-eqz v13, :cond_138

    if-eqz v14, :cond_12e

    goto :goto_138

    .line 354
    :cond_12e
    iget-object v3, v0, Lcom/meizu/settings/account/FlymeAccountSettings;->mSinaWeiboPreference:Landroidx/preference/Preference;

    invoke-direct {v0, v5}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_160

    .line 352
    :cond_138
    :goto_138
    iget-object v3, v0, Lcom/meizu/settings/account/FlymeAccountSettings;->mSinaWeiboPreference:Landroidx/preference/Preference;

    const v5, 0x7f120fa9

    invoke-direct {v0, v5}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_160

    :cond_145
    :goto_145
    if-eqz v13, :cond_154

    if-eqz v14, :cond_14a

    goto :goto_154

    .line 348
    :cond_14a
    iget-object v3, v0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAlipayPreference:Landroidx/preference/Preference;

    invoke-direct {v0, v5}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_160

    .line 345
    :cond_154
    :goto_154
    iget-object v3, v0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAlipayPreference:Landroidx/preference/Preference;

    const v5, 0x7f120fa9

    invoke-direct {v0, v5}, Lcom/meizu/settings/account/FlymeAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_160
    :goto_160
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_45

    :cond_166
    move-object/from16 v16, v3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_28

    :cond_16c
    return-void
.end method


# virtual methods
.method public getAccessiblePreferenceCategory()Lcom/android/settings/AccessiblePreferenceCategory;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccessiblePreferenceCategory:Lcom/android/settings/AccessiblePreferenceCategory;

    return-object p0
.end method

.method public initPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    const-string/jumbo v0, "other_account"

    .line 144
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AccessiblePreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccessiblePreferenceCategory:Lcom/android/settings/AccessiblePreferenceCategory;

    const-string/jumbo v0, "sina_weibo"

    .line 145
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mSinaWeiboPreference:Landroidx/preference/Preference;

    const-string v0, "alipay"

    .line 146
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAlipayPreference:Landroidx/preference/Preference;

    const-string v0, "flyme_cloud_service"

    .line 148
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeCloudServicePref:Landroidx/preference/Preference;

    const-string v0, "flyme_cloud_service_summary"

    .line 149
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeCloudServiceSummaryPref:Landroidx/preference/Preference;

    const-string v0, "flyme_account_category"

    .line 150
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeCloudCategory:Landroidx/preference/PreferenceCategory;

    .line 152
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 153
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccessiblePreferenceCategory:Lcom/android/settings/AccessiblePreferenceCategory;

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAlipayPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 156
    :cond_43
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccessiblePreferenceCategory:Lcom/android/settings/AccessiblePreferenceCategory;

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mSinaWeiboPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 158
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAlipayPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccountSettings:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d019f

    const/4 p4, 0x0

    .line 166
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 167
    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    invoke-direct {p0, p2}, Lcom/meizu/settings/account/FlymeAccountSettings;->initAddAccountButton(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz p0, :cond_b

    .line 393
    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    :cond_b
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 388
    invoke-direct {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->reportData()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mSinaWeiboPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_12

    .line 207
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.meizu.sns.action.SNS_SINA_LOGIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 209
    :cond_12
    invoke-virtual {p1}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    const-string v2, "FlymeAccountSettings"

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "alipay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 210
    invoke-direct {p0}, Lcom/meizu/settings/account/FlymeAccountSettings;->handleAlipayClick()V

    .line 212
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string/jumbo v0, "open_ali_pay"

    invoke-virtual {p0, v2, v0, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;)V

    return v1

    .line 215
    :cond_32
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeCloudServicePref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_58

    .line 216
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "account_flyme_cloudservice"

    invoke-virtual {p1, v0, v2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-boolean p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mIsFlymeAccountLogin:Z

    if-eqz p1, :cond_49

    .line 219
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->startFlymeDataSyncActivity(Landroid/content/Context;)V

    goto :goto_50

    .line 221
    :cond_49
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->startFlymeAccountLogincActivity(Landroid/content/Context;)V

    .line 223
    :goto_50
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    .line 224
    iput-boolean v1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mNeedOverridePending:Z

    return v1

    :cond_58
    const/4 p0, 0x0

    return p0
.end method

.method public onRsume()V
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "FlymeAccountSettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mIsFlymeAccountLogin:Z

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 398
    iget-boolean v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mNeedOverridePending:Z

    if-eqz v0, :cond_c

    .line 399
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setCloseAnimationToPreviousPage(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mNeedOverridePending:Z

    :cond_c
    return-void
.end method

.method public setAccountPreferenceController(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccountSettings:Lcom/android/settings/accounts/AccountPreferenceController;

    return-void
.end method

.method public setAddAccountButtonVisiable(Z)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAddAccountButton:Landroid/view/View;

    if-eqz p0, :cond_d

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    .line 197
    :goto_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public setAddAccountPrefrence(Landroidx/preference/Preference;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAddAccountPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public updateUi(Landroid/util/SparseArray;Landroidx/preference/PreferenceScreen;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;",
            ">;",
            "Landroidx/preference/PreferenceScreen;",
            ")V"
        }
    .end annotation

    .line 261
    iput-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 263
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p2, :cond_1e

    .line 265
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 266
    iget-object v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 267
    invoke-direct {p0, v2}, Lcom/meizu/settings/account/FlymeAccountSettings;->updateAccoountPreference(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 271
    :cond_1e
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    .line 272
    iget-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.meizu.mzsyncservice"

    invoke-static {p2, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    .line 273
    iget-object v1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_56

    if-nez p1, :cond_56

    if-nez p2, :cond_37

    goto :goto_56

    .line 278
    :cond_37
    iget-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "flyme_cloud_service_summary"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 279
    iget-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "flyme_cloud_service"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    const v0, 0x7f0801dd

    .line 280
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 281
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAccountSettings:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_6b

    .line 274
    :cond_56
    :goto_56
    iget-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeCloudCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 275
    iget-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeCloudServicePref:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 276
    iget-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mFlymeCloudServiceSummaryPref:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_6b
    if-eqz p1, :cond_74

    .line 284
    iget-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mRootPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSettings;->mAlipayPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_74
    return-void
.end method
