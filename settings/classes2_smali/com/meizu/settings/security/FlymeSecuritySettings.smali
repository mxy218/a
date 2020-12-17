.class public Lcom/meizu/settings/security/FlymeSecuritySettings;
.super Lcom/meizu/settings/RestrictedSettingsFragment;
.source "FlymeSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDashboardFeatureProvider:Lcom/meizu/settings/dashboard/DashboardFeatureProvider;

.field private mDocumentLockPreference:Landroid/preference/Preference;

.field private mFPCategory:Landroid/preference/PreferenceCategory;

.field private mFPPreference:Landroid/preference/Preference;

.field private mFPTotal:I

.field private mFacePreference:Landroid/preference/Preference;

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mGuestModePreference:Landroid/preference/Preference;

.field private mIcclockSettingsChooserPref:Landroid/preference/Preference;

.field private mIcclockSettingsPref:Landroid/preference/Preference;

.field private mIsGuestUser:Z

.field private mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManageTrustAgents:Landroid/preference/Preference;

.field private mPasswordCategory:Landroid/preference/PreferenceCategory;

.field private mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mPinningSettingsPref:Landroid/preference/Preference;

.field private mProfileChallengeUserId:I

.field private mProfileFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mProfileLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mProfileLockPreference:Landroid/preference/Preference;

.field private mRootPermissionPreference:Landroid/preference/Preference;

.field private mScreenLockPreference:Landroid/preference/Preference;

.field private mSecretModePreference:Landroid/preference/Preference;

.field private mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

.field private mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUnifyProfile:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUserManager:Landroid/os/UserManager;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 1064
    new-instance v0, Lcom/meizu/settings/security/FlymeSecuritySettings$5;

    invoke-direct {v0}, Lcom/meizu/settings/security/FlymeSecuritySettings$5;-><init>()V

    sput-object v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/meizu/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 149
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 150
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPTotal:I

    .line 164
    new-instance v0, Lcom/meizu/settings/security/FlymeSecuritySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/security/FlymeSecuritySettings$1;-><init>(Lcom/meizu/settings/security/FlymeSecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 1051
    new-instance v0, Lcom/meizu/settings/security/FlymeSecuritySettings$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeSecuritySettings$4;-><init>(Lcom/meizu/settings/security/FlymeSecuritySettings;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeSecuritySettings;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateSecretModeSummary()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeSecuritySettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeSecuritySettings;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/security/FlymeSecuritySettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/security/FlymeSecuritySettings;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->launchConfirmProfileLockForUnification()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/security/FlymeSecuritySettings;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/security/FlymeSecuritySettings;)Landroid/content/DialogInterface;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/security/FlymeSecuritySettings;)Lcom/meizu/settings/widget/RestrictedSwitchPreference;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/security/FlymeSecuritySettings;Landroid/preference/PreferenceScreen;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeSecuritySettings;->initSIMPreference(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceCategory;)I
    .registers 9

    .line 1194
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 1196
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    .line 1197
    invoke-interface {v1}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v1

    .line 1198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1200
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v3, v1, p0, v2}, Lcom/meizu/settings/security/FlymeSecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/security/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 1202
    :goto_30
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_88

    .line 1203
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;

    .line 1204
    new-instance v4, Lcom/meizu/settings/widget/RestrictedPreference;

    .line 1205
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0214

    .line 1206
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    const-string v5, "trust_agent"

    .line 1207
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1208
    iget-object v5, v3, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object v5, v3, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1211
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1212
    iget-object v6, v3, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    .line 1213
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1216
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1218
    iget-object v3, v3, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1219
    invoke-virtual {v4}, Lcom/meizu/settings/widget/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v3

    if-nez v3, :cond_85

    if-nez v0, :cond_85

    .line 1220
    invoke-virtual {v4, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    const v3, 0x7f1206fc

    .line 1221
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1224
    :cond_88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method private createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .registers 2

    .line 391
    new-instance v0, Lcom/meizu/settings/security/FlymeSecuritySettings$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeSecuritySettings$3;-><init>(Lcom/meizu/settings/security/FlymeSecuritySettings;)V

    return-object v0
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .registers 6

    .line 921
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 920
    invoke-static {v0, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 922
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2d

    .line 923
    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p2

    const/high16 v1, 0x80000

    if-ne p2, v1, :cond_2d

    .line 926
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/widget/RestrictedPreference;

    .line 927
    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2d
    return-void
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/security/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/security/trustagent/TrustAgentManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .line 1229
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    sget-object v2, Lcom/meizu/settings/security/FlymeSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1233
    sget v3, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object p2

    .line 1236
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    .line 1235
    invoke-static {p0, v4, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p2, :cond_73

    .line 1238
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    const/4 v3, 0x0

    .line 1239
    :goto_2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 1240
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1241
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_3b

    goto :goto_70

    .line 1242
    :cond_3b
    invoke-virtual {p1, v4, v0}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_70

    .line 1246
    :cond_42
    invoke-static {v0, v4}, Lcom/meizu/settings/security/FlymeTrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 1247
    iget-object v6, v5, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_70

    .line 1249
    invoke-static {v4}, Lcom/meizu/settings/security/FlymeTrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1248
    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    iget-object v6, v5, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    .line 1250
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_70

    :cond_5d
    if-eqz p0, :cond_6c

    const/4 p1, 0x0

    .line 1252
    invoke-static {v4}, Lcom/meizu/settings/security/FlymeTrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object p2

    .line 1251
    invoke-virtual {p3, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6c

    .line 1253
    iput-object p0, v5, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1255
    :cond_6c
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_73
    :goto_73
    return-object v1
.end method

.method private handlePreferenceInCts()V
    .registers 4

    .line 885
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result v0

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCtsRunnning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeSecuritySettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_40

    const-string v0, "user"

    .line 890
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 892
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    const-string v0, "enterprise_privacy"

    .line 895
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 897
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 900
    :cond_3c
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->removeWorkProfile()V

    return-void

    .line 905
    :cond_40
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateProfilePreference()V

    return-void
.end method

.method private handleRootPermissionPreferenceClick()V
    .registers 8

    .line 614
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->isRootPermissionOpened()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 615
    const-class v0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1211f5

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_27

    .line 618
    :cond_17
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->isFlymeAccountLogined()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.action.ROOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private init()V
    .registers 3

    .line 194
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 195
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUserManager:Landroid/os/UserManager;

    .line 200
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    .line 202
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getFlymeDashboardFeatureProvider(Landroid/content/Context;)Lcom/meizu/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mDashboardFeatureProvider:Lcom/meizu/settings/dashboard/DashboardFeatureProvider;

    .line 205
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->registerSimInfoChangeReceiver()V

    .line 206
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->initPreference()V

    .line 208
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->registerSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private initManageTrustAgents(Landroid/preference/PreferenceScreen;)V
    .registers 10

    const-string v0, "manage_trust_agents"

    .line 799
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mManageTrustAgents:Landroid/preference/Preference;

    .line 801
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    if-eqz v0, :cond_16

    .line 802
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mManageTrustAgents:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    .line 807
    :cond_16
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 808
    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v0

    .line 809
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 810
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.trust.TrustAgentService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 811
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 814
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_41
    if-ge v4, v3, :cond_58

    .line 817
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 818
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_55

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_55

    :cond_54
    const/4 v5, 0x1

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_58
    if-nez v5, :cond_5f

    .line 824
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mManageTrustAgents:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5f
    return-void
.end method

.method private initPreference()V
    .registers 5

    const v0, 0x7f160082

    .line 655
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 656
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    .line 657
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const-string v1, "fp_management"

    .line 659
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPPreference:Landroid/preference/Preference;

    const-string v1, "fp_payment"

    .line 660
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v1, "fp_summary"

    .line 661
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "fp_category"

    .line 662
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "screen_lock"

    .line 663
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    .line 666
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 668
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120daf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isFingerprintSensorInSide()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 670
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1213e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 675
    :cond_5b
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "face_management"

    .line 686
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFacePreference:Landroid/preference/Preference;

    .line 687
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/face/FaceUtil;->supportFaceRecognition(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 688
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f120d80

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_89

    .line 692
    :cond_82
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFacePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_89
    const-string v1, "passcode_items"

    .line 697
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "file_manager_lock"

    .line 698
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mDocumentLockPreference:Landroid/preference/Preference;

    const-string v1, "toggle_install_applications"

    .line 699
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    .line 701
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 705
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "guest_mode"

    .line 711
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    .line 712
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->needRemoveGuestModePreference()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 713
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_ce
    const-string v1, "secret_mode"

    .line 715
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecretModePreference:Landroid/preference/Preference;

    .line 716
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->needRemoveSecretModePreference()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 717
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecretModePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e5
    const-string v1, "root_permission"

    .line 720
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    .line 721
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->needShowRootPreference()Z

    move-result v1

    if-nez v1, :cond_100

    const-string v1, "security_items"

    .line 722
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    .line 723
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 725
    :cond_100
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->initSIMPreference(Landroid/preference/PreferenceScreen;)V

    const-string v1, "screen_pinning_settings"

    .line 726
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPinningSettingsPref:Landroid/preference/Preference;

    .line 728
    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->initManageTrustAgents(Landroid/preference/PreferenceScreen;)V

    .line 729
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->removePreferenceInGuestMode()V

    const-string v1, "security_status"

    .line 731
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    .line 732
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_125

    iget-boolean v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    if-eqz v1, :cond_12d

    .line 733
    :cond_125
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    .line 734
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    :cond_12d
    return-void
.end method

.method private initSIMPreference(Landroid/preference/PreferenceScreen;)V
    .registers 9

    .line 950
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    if-nez v0, :cond_c

    const-string v0, "sim_lock_settings_category"

    .line 951
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    .line 953
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    if-nez v0, :cond_18

    const-string v0, "sim_lock_chooser_category"

    .line 954
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    .line 956
    :cond_18
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIcclockSettingsChooserPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIcclockSettingsPref:Landroid/preference/Preference;

    const-string v5, "sim_lock_chooser_category"

    const-string v6, "sim_lock_settings_category"

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->initIccLockSettings(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSecurityStatus(Landroid/preference/PreferenceScreen;)V
    .registers 10

    .line 740
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_5

    return-void

    .line 743
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 746
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mDashboardFeatureProvider:Lcom/meizu/settings/dashboard/DashboardFeatureProvider;

    .line 747
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result v3

    .line 746
    invoke-interface {v1, v0, v2, v3}, Lcom/meizu/settings/dashboard/DashboardFeatureProvider;->getSecurityPreferenceFromCategory(Landroid/app/Activity;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_ca

    .line 749
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ca

    .line 750
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    .line 752
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "security_status_security_patch_level"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 754
    new-instance v5, Landroid/content/Intent;

    const-string v6, "flyme.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.meizu.flyme.update"

    .line 755
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    invoke-static {v0, v5}, Lcom/meizu/settings/utils/MzUtils;->isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 758
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 760
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_aa

    .line 766
    :cond_64
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "security_status_find_device"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 767
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.meizu.flyme.service.find.ACTION_SETTING"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.meizu.flyme.service.find"

    .line 768
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-static {v0, v5}, Lcom/meizu/settings/utils/MzUtils;->isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const v6, 0x7f12087b

    .line 771
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 772
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 773
    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 774
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/settings/utils/MzUtils;->isFindPhoneEnabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_9d

    const/4 v5, 0x1

    goto :goto_9e

    :cond_9d
    move v5, v2

    :goto_9e
    if-eqz v5, :cond_a4

    const v5, 0x7f121331

    goto :goto_a7

    :cond_a4
    const v5, 0x7f121330

    .line 775
    :goto_a7
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 783
    :cond_aa
    :goto_aa
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 784
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "security_status_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 785
    iget-object v5, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2a

    :cond_c9
    move v2, v3

    :cond_ca
    if-nez v2, :cond_d4

    .line 792
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 p1, 0x0

    .line 793
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecurityStatusCategory:Landroid/preference/PreferenceCategory;

    :cond_d4
    return-void
.end method

.method private initTrustAgentPreference(Landroid/preference/PreferenceScreen;I)V
    .registers 7

    const-string v0, "manage_trust_agents"

    .line 1176
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 1178
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 1179
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const p0, 0x7f1206fc

    .line 1180
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_47

    :cond_1d
    const/4 v0, 0x1

    if-lez p2, :cond_3e

    .line 1182
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1183
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f10002b

    new-array v0, v0, [Ljava/lang/Object;

    .line 1185
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1183
    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 1187
    :cond_3e
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const p0, 0x7f120bd2

    .line 1188
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_47
    :goto_47
    return-void
.end method

.method private isFlymeAccountLogined()Z
    .registers 1

    .line 610
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isNonMarketAppsAllowed()Z
    .registers 3

    .line 403
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "install_non_market_apps"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isRootPermissionOpened()Z
    .registers 1

    .line 606
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isDeviceRooted(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private launchConfirmDeviceLockForUnification()V
    .registers 4

    .line 344
    sget v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startConfirmPasswordFragment(III)V

    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .registers 4

    .line 349
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    const/4 v1, 0x0

    const/16 v2, 0x81

    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startConfirmPasswordFragment(III)V

    return-void
.end method

.method private needRemoveGuestModePreference()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private needRemoveSecretModePreference()Z
    .registers 3

    .line 565
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 570
    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isSecretsModeEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1f

    .line 573
    :cond_17
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isInSecretsMode()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method

.method private needShowRootPreference()Z
    .registers 5

    .line 578
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    const/4 v1, 0x0

    if-nez v0, :cond_29

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_29

    .line 581
    :cond_c
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->isRootPermissionOpened()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    .line 584
    :cond_14
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->isFlymeAccountLogined()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 585
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "com.meizu.account"

    const-string v3, "com.meizu.action.ROOT"

    invoke-static {p0, v0, v3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    move v1, v2

    :cond_29
    :goto_29
    return v1
.end method

.method private registerSimInfoChangeReceiver()V
    .registers 3

    .line 464
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removePreferenceInGuestMode()V
    .registers 3

    .line 933
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    if-eqz v0, :cond_3b

    const-string v0, "fp_category"

    .line 934
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 936
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 939
    :cond_13
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 940
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "security_items"

    .line 941
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "device_admin"

    .line 942
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "manage_external_sources"

    .line 943
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3b

    :catch_3b
    :cond_3b
    return-void
.end method

.method private removeWorkProfile()V
    .registers 2

    const-string v0, "security_category_profile"

    .line 909
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 911
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 412
    :cond_b
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "install_non_market_apps"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showUnificationConfirmationDialog(Z)V
    .registers 5

    .line 311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120b51

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_16

    const v1, 0x7f120b4f

    goto :goto_19

    :cond_16
    const v1, 0x7f120b52

    .line 313
    :goto_19
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p1, :cond_23

    const v1, 0x7f120b50

    goto :goto_26

    :cond_23
    const v1, 0x7f120b53

    .line 317
    :goto_26
    new-instance v2, Lcom/meizu/settings/security/FlymeSecuritySettings$2;

    invoke-direct {v2, p0, p1}, Lcom/meizu/settings/security/FlymeSecuritySettings$2;-><init>(Lcom/meizu/settings/security/FlymeSecuritySettings;Z)V

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120442

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startConfirmPasswordFragment(III)V
    .registers 6

    .line 1040
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "password_from"

    .line 1041
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.intent.extra.USER_ID"

    .line 1042
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1043
    invoke-direct {p0, v0, p2}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startConfirmPasswordFragment(Landroid/os/Bundle;I)V

    return-void
.end method

.method private startConfirmPasswordFragment(Landroid/os/Bundle;I)V
    .registers 10

    .line 1047
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startFPManagementFragment(I)V
    .registers 2

    .line 1022
    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startFPManagementFragment(Landroid/app/Fragment;I)V

    return-void
.end method

.method private startFaceManagementFragment(I)V
    .registers 3

    .line 1027
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startFaceManagementFragment(Landroid/app/Fragment;I)V

    return-void
.end method

.method private startScreenPasswordFragment(I)V
    .registers 8

    .line 1016
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.USER_ID"

    .line 1017
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    const-class p1, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120b47

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private unifyLocks()V
    .registers 6

    .line 354
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_20

    .line 357
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 358
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 359
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget v3, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;[BI)Z

    goto :goto_2b

    .line 361
    :cond_20
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v4, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)Z

    .line 365
    :goto_2b
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 366
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 365
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 367
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    .line 368
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 371
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void
.end method

.method private unifyUncompliantLocks()V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 339
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 338
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 340
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateProfilePreference()V

    return-void
.end method

.method private ununifyLocks()V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Z)V

    .line 376
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startScreenPasswordFragment(I)V

    return-void
.end method

.method private updateDocumentLockSummary()V
    .registers 2

    .line 966
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mDocumentLockPreference:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isDocumentLockEnable()Z

    move-result p0

    if-eqz p0, :cond_e

    const p0, 0x7f120fa9

    goto :goto_11

    :cond_e
    const p0, 0x7f1204f2

    :goto_11
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private updateFPPreference()V
    .registers 10

    .line 470
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 471
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPTotal:I

    .line 473
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPTotal:I

    const-string v1, "mz_fingerprint_use_payment"

    const v2, 0x7f120da6

    const v3, 0x7f10002f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3c

    .line 474
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v6, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v6, v5}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    .line 476
    iget-object v6, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v6, v5}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    .line 477
    iget-object v6, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v6, v5}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    .line 478
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4e

    .line 481
    :cond_3c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v6, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPTotal:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 482
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 481
    invoke-virtual {v0, v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    :goto_4e
    iget-object v6, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    if-eqz v0, :cond_84

    iget v6, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    sget v7, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    if-eq v6, v7, :cond_84

    .line 488
    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintCount()I

    move-result v0

    const-string v6, "profile_fp_management"

    .line 489
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v0, :cond_71

    .line 491
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_84

    .line 493
    :cond_71
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Object;

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 493
    invoke-virtual {v2, v3, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_91

    goto :goto_92

    :cond_91
    move v4, v5

    :goto_92
    invoke-virtual {v0, v4}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updateFacePreference()V
    .registers 2

    .line 1031
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->isFaceDataExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1032
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFacePreference:Landroid/preference/Preference;

    const v0, 0x7f120d71

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1b

    .line 1034
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFacePreference:Landroid/preference/Preference;

    const v0, 0x7f120d72

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1b
    return-void
.end method

.method private updateGuestModeSummary()V
    .registers 3

    .line 534
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->needRemoveGuestModePreference()Z

    move-result v0

    const-string v1, "guest_mode"

    if-nez v0, :cond_2a

    .line 535
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_15

    .line 536
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 538
    :cond_15
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    .line 539
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isGuestModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_23

    const p0, 0x7f120fa9

    goto :goto_26

    :cond_23
    const p0, 0x7f1204f2

    .line 538
    :goto_26
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_37

    .line 542
    :cond_2a
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 543
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mGuestModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_37
    :goto_37
    return-void
.end method

.method private updatePreference()V
    .registers 2

    .line 503
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updatePreferenceInGuestMode()V

    .line 504
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateScreenLockSummary()V

    .line 505
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateDocumentLockSummary()V

    .line 506
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateToggleAppInstallation()V

    .line 507
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateGuestModeSummary()V

    .line 508
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateRootPermissionSummary()V

    .line 509
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateSecretModeSummary()V

    .line 510
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->handlePreferenceInCts()V

    .line 511
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateScreenPinningPreference()V

    .line 513
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    if-nez v0, :cond_22

    .line 514
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateFPPreference()V

    .line 518
    :cond_22
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateFacePreference()V

    .line 522
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updateTrustAgentPreference()V

    .line 525
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->initSecurityStatus(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private updatePreferenceInGuestMode()V
    .registers 6

    .line 627
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "children_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    .line 628
    :cond_f
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_6a

    const-string v3, "passcode_items"

    const-string v4, "fp_category"

    if-nez v0, :cond_50

    if-eqz v2, :cond_1a

    goto :goto_50

    :cond_1a
    :try_start_1a
    const-string v0, "security_items"

    .line 638
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 639
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 641
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 642
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 644
    :cond_3a
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_6a

    .line 646
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 647
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    goto :goto_6a

    .line 629
    :cond_50
    :goto_50
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 631
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 633
    :cond_5d
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 635
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_6a} :catch_6a

    :catch_6a
    :cond_6a
    :goto_6a
    return-void
.end method

.method private updateProfilePreference()V
    .registers 6

    .line 829
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUserManager:Landroid/os/UserManager;

    sget v1, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    .line 830
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_14

    .line 831
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->removeWorkProfile()V

    return-void

    .line 835
    :cond_14
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUnifyProfile:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    if-nez v0, :cond_22

    const-string v0, "unification"

    .line 836
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUnifyProfile:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    .line 839
    :cond_22
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    .line 840
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 841
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUnifyProfile:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_44

    .line 843
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUnifyProfile:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    .line 844
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    const-string v4, "no_unified_password"

    .line 843
    invoke-static {v2, v4, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 848
    :cond_44
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    if-eq v0, v1, :cond_bf

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 849
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 851
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    if-nez v0, :cond_61

    .line 852
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 855
    :cond_61
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    if-nez v0, :cond_71

    .line 856
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 859
    :cond_71
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPreference:Landroid/preference/Preference;

    const-string v1, "unlock_set_or_change_profile"

    if-nez v0, :cond_81

    .line 861
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPreference:Landroid/preference/Preference;

    .line 864
    :cond_81
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 865
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120b56

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 871
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    const-string v1, "screen_lock"

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto :goto_bf

    .line 875
    :cond_a9
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getScreenLockSummaryResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 876
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileLockPreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 877
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    :cond_bf
    :goto_bf
    return-void
.end method

.method private updateRootPermissionSummary()V
    .registers 3

    .line 592
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->needShowRootPreference()Z

    move-result v0

    const-string v1, "root_permission"

    if-eqz v0, :cond_2d

    .line 593
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3c

    const-string v0, "security_items"

    .line 594
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    .line 595
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 596
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    const-string v1, "location_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0}, Landroid/preference/Preference;->getOrder()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_3c

    .line 599
    :cond_2d
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 600
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method private updateScreenLockSummary()V
    .registers 2

    .line 962
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getScreenLockSummaryResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private updateScreenPinningPreference()V
    .registers 4

    .line 1145
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    const-string v1, "security_items"

    if-eqz v0, :cond_12

    .line 1146
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPinningSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_53

    :cond_12
    const-string v0, "screen_pinning_settings"

    .line 1148
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_25

    .line 1149
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPinningSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1151
    :cond_25
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lock_to_app_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_43

    .line 1153
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPinningSettingsPref:Landroid/preference/Preference;

    .line 1154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f121590

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1153
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_53

    .line 1156
    :cond_43
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPinningSettingsPref:Landroid/preference/Preference;

    .line 1157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f12158f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1156
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_53
    return-void
.end method

.method private updateSecretModeSummary()V
    .registers 3

    .line 549
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->needRemoveSecretModePreference()Z

    move-result v0

    const-string v1, "secret_mode"

    if-nez v0, :cond_37

    .line 550
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_22

    .line 551
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecretModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 552
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecretModePreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mDocumentLockPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 554
    :cond_22
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecretModePreference:Landroid/preference/Preference;

    .line 555
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isSecretsModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_30

    const p0, 0x7f120fa9

    goto :goto_33

    :cond_30
    const p0, 0x7f1204f2

    .line 554
    :goto_33
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_44

    .line 558
    :cond_37
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 559
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSecretModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_44
    :goto_44
    return-void
.end method

.method private updateToggleAppInstallation()V
    .registers 5

    .line 971
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 973
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUserManager:Landroid/os/UserManager;

    sget v2, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 974
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    const-string v2, "no_install_unknown_sources"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "no_install_apps"

    if-nez v0, :cond_38

    .line 976
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v3, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 978
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 980
    :cond_3e
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 981
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_58

    .line 984
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method private updateTrustAgentPreference()V
    .registers 3

    .line 1164
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mIsGuestUser:Z

    if-eqz v0, :cond_5

    return-void

    .line 1167
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "trust_agent"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1169
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1171
    :cond_14
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceCategory;)I

    move-result v0

    .line 1172
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->initTrustAgentPreference(Landroid/preference/PreferenceScreen;I)V

    return-void
.end method

.method private warnAppInstallation()V
    .registers 4

    .line 381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121806

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a1a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    .line 384
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    .line 385
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 386
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const-string v0, "flyme_password"

    const/4 v1, -0x1

    const/16 v2, 0x80

    if-ne p1, v2, :cond_13

    if-ne p2, v1, :cond_13

    .line 995
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 996
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->launchConfirmProfileLockForUnification()V

    return-void

    :cond_13
    const/16 v2, 0x81

    if-ne p1, v2, :cond_23

    if-ne p2, v1, :cond_23

    .line 1001
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 1002
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->unifyLocks()V

    return-void

    :cond_23
    const/16 p3, 0x82

    if-ne p1, p3, :cond_2d

    if-ne p2, v1, :cond_2d

    .line 1006
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->ununifyLocks()V

    return-void

    :cond_2d
    const/16 p3, 0x7e

    if-ne p1, p3, :cond_3d

    if-ne p2, v1, :cond_3d

    .line 1008
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p1, :cond_3d

    .line 1010
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 1011
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_3d
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_19

    const/4 p1, -0x1

    if-ne p2, p1, :cond_13

    const/4 p1, 0x1

    .line 420
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeSecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 421
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    if-eqz p0, :cond_19

    .line 422
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_19

    .line 425
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_19
    :goto_19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 189
    invoke-super {p0, p1}, Lcom/meizu/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->init()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 432
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 433
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_a

    .line 434
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 436
    :cond_a
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->unregisterSecretsModeRunningObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 440
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    iget p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPTotal:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "finger_input_quantity"

    const-string v2, "FlymeSecuritySettings"

    invoke-virtual {v0, v1, v2, p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 453
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 455
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    if-eqz v0, :cond_a

    .line 456
    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    .line 458
    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    if-eqz p0, :cond_11

    .line 459
    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    :cond_11
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeSecuritySettings"

    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 227
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fp_management"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 228
    sget v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startFPManagementFragment(I)V

    goto/16 :goto_180

    .line 229
    :cond_1e
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile_fp_management"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProfileChallengeUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startFPManagementFragment(I)V

    goto/16 :goto_180

    .line 232
    :cond_47
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_79

    .line 233
    iget v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFPTotal:I

    if-nez v2, :cond_5d

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 234
    sget v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startFPManagementFragment(I)V

    goto/16 :goto_180

    .line 236
    :cond_5d
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mPaymentPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 237
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->startAccountLoginActivity(Landroid/content/Context;)V

    goto/16 :goto_180

    .line 239
    :cond_6e
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mz_fingerprint_use_payment"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_180

    .line 243
    :cond_79
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mToggleAppInstallation:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    if-ne p2, v0, :cond_8d

    .line 244
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 245
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->warnAppInstallation()V

    goto/16 :goto_180

    .line 247
    :cond_88
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeSecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_180

    .line 249
    :cond_8d
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mScreenLockPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_98

    .line 250
    sget v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startScreenPasswordFragment(I)V

    goto/16 :goto_180

    .line 251
    :cond_98
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mRootPermissionPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_a1

    .line 252
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->handleRootPermissionPreferenceClick()V

    goto/16 :goto_180

    .line 253
    :cond_a1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f9

    .line 254
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v0, v3, v4}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_bd

    return v1

    .line 258
    :cond_bd
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUnifyProfile:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 260
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    .line 261
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v3, 0x10000

    if-lt v0, v3, :cond_dc

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    .line 263
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    move v1, v2

    .line 265
    :cond_dc
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeSecuritySettings;->showUnificationConfirmationDialog(Z)V

    goto/16 :goto_180

    .line 267
    :cond_e1
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_f2

    const/16 v0, 0x82

    .line 268
    sget v2, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-direct {p0, v1, v0, v2}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startConfirmPasswordFragment(III)V

    goto/16 :goto_180

    .line 271
    :cond_f2
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startScreenPasswordFragment(I)V

    goto/16 :goto_180

    .line 274
    :cond_f9
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "unlock_set_or_change_profile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 275
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_114

    return v1

    .line 279
    :cond_114
    iget v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startScreenPasswordFragment(I)V

    goto :goto_180

    .line 280
    :cond_11a
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "location_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 281
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 286
    :cond_137
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mFacePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_141

    .line 287
    sget v0, Lcom/meizu/settings/security/FlymeSecuritySettings;->MY_USER_ID:I

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->startFaceManagementFragment(I)V

    goto :goto_180

    .line 291
    :cond_141
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "trust_agent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 292
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 293
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string p1, "password_from"

    .line 294
    invoke-virtual {v8, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "verify_password_tips"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {v8, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_key_fingerprint_support"

    .line 300
    invoke-virtual {v8, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const-class p1, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120ff3

    const/16 v7, 0x7e

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v2

    .line 307
    :cond_180
    :goto_180
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 446
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onResume()V

    .line 448
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeSecuritySettings;->updatePreference()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 213
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 214
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "FlymeSecuritySettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 219
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 220
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeSecuritySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "FlymeSecuritySettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method
