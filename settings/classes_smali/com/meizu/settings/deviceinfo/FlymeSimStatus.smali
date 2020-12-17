.class public Lcom/meizu/settings/deviceinfo/FlymeSimStatus;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeSimStatus.java"


# instance fields
.field private final mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowICCID:Z

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$3;-><init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 473
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$4;-><init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/telephony/SubscriptionInfo;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Ljava/lang/String;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/widget/TabHost;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Landroid/telephony/ServiceState;)V
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Ljava/util/List;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/telephony/PhoneStateListener;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updatePreference()V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .registers 4

    .line 481
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object p0

    return-object p0
.end method

.method private getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_23

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1b

    const/4 p0, 0x3

    if-eq p1, p0, :cond_13

    const p0, 0x7f12112f

    .line 350
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const p0, 0x7f12112d

    .line 348
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const p0, 0x7f12112e

    .line 346
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const p0, 0x7f12112c

    .line 343
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .registers 2

    .line 245
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 247
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mDefaultText:Ljava/lang/String;

    .line 256
    :cond_8
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 258
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "latest_area_info"

    .line 356
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private updateDataState()V
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 294
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12112f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_33

    const/4 v2, 0x2

    if-eq v0, v2, :cond_29

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1f

    goto :goto_46

    .line 303
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f12111c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 300
    :cond_29
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 306
    :cond_33
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f12111a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 309
    :cond_3d
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f12111b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_46
    const-string v0, "data_state"

    .line 313
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNetworkType()V
    .registers 8

    const-string v0, "com.android.systemui"

    .line 265
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 266
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 267
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 266
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 268
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 269
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 268
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    if-eqz v1, :cond_26

    .line 271
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_26
    if-eqz v2, :cond_2d

    .line 273
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const/4 v2, 0x0

    .line 278
    :try_start_2f
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 279
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "config_show4GForLTE"

    const-string v6, "bool"

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 281
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_4b} :catch_4c

    goto :goto_53

    :catch_4c
    const-string v0, "SimStatus"

    const-string v3, "NameNotFoundException for show4GFotLTE"

    .line 283
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    if-eqz v1, :cond_61

    const-string v0, "LTE"

    .line 286
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    if-eqz v2, :cond_61

    const-string v1, "4G"

    :cond_61
    const-string v0, "network_type"

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePhoneInfos()V
    .registers 4

    .line 417
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_56

    .line 420
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 419
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 421
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 422
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_56

    if-nez v0, :cond_34

    const-string p0, "SimStatus"

    const-string v0, "Unable to locate a phone object for the given Subscription ID."

    .line 424
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_34
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 430
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_45

    const/4 v2, 0x0

    .line 431
    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 435
    :cond_45
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_56
    return-void
.end method

.method private updatePreference()V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 388
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mShowLatestAreaInfo:Z

    .line 391
    :cond_16
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 392
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 391
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "show_iccid_in_sim_status_bool"

    .line 393
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mShowICCID:Z

    .line 399
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "number"

    .line 398
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imei"

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imei_sv"

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mShowICCID:Z

    const-string v1, "iccid"

    if-nez v0, :cond_5b

    .line 404
    invoke-direct {p0, v1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_6a

    .line 407
    :cond_5b
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_6a
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mShowLatestAreaInfo:Z

    if-nez v0, :cond_73

    const-string v0, "latest_area_info"

    .line 412
    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_73
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .registers 6

    .line 317
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v0, :cond_14

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1b

    .line 324
    :cond_14
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    :cond_1b
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v0, v2}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v1, v2}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / Data: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "service_state"

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const-string/jumbo v1, "roaming_state"

    if-eqz v0, :cond_5c

    .line 333
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f121129

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 335
    :cond_5c
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12112a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_68
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "operator_name"

    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x2b

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 140
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "phone"

    .line 141
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p1, "carrier_config"

    .line 142
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 144
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSelectableSubInfos:Ljava/util/List;

    const p1, 0x7f160055

    .line 147
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 149
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    .line 150
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f1206d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mDefaultText:Ljava/lang/String;

    const-string/jumbo p1, "signal_strength"

    .line 152
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSignalStrength:Landroid/preference/Preference;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .line 158
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSelectableSubInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 159
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    goto/16 :goto_99

    .line 161
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    :cond_19
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_99

    const v0, 0x7f0d0111

    .line 164
    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0578

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 167
    invoke-static {p2, v0, v1, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 168
    invoke-super {p0, p1, v1, p3}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 169
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x1020012

    .line 171
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabHost:Landroid/widget/TabHost;

    const p1, 0x1020013

    .line 172
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabWidget;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabWidget:Landroid/widget/TabWidget;

    const p1, 0x102000a

    .line 173
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mListView:Landroid/widget/ListView;

    .line 175
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 176
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 177
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 179
    :goto_70
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_98

    .line 180
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 181
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 180
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_98
    return-object v0

    .line 186
    :cond_99
    :goto_99
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .registers 4

    .line 229
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_f

    .line 232
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 235
    :cond_f
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1c

    .line 236
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1c
    return-void
.end method

.method public onResume()V
    .registers 6

    .line 203
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 204
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_54

    .line 205
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updatePreference()V

    .line 207
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 208
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 209
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updateDataState()V

    .line 210
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 214
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_54

    .line 215
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.cellbroadcastreceiver"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_54
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 191
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 193
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->updatePhoneInfos()V

    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 8

    .line 361
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v0, :cond_4a

    .line 362
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_43

    const/4 v2, 0x3

    if-ne v2, v0, :cond_15

    goto :goto_43

    .line 370
    :cond_15
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 371
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_22

    move v0, v3

    :cond_22
    if-ne v2, p1, :cond_25

    move p1, v3

    .line 381
    :cond_25
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSignalStrength:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f121429

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    .line 381
    invoke-virtual {p0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 366
    :cond_43
    :goto_43
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string p1, "0"

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4a
    :goto_4a
    return-void
.end method
