.class public Lcom/meizu/settings/MzSimCardStatus;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzSimCardStatus.java"


# instance fields
.field private mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

.field private mContext:Landroid/content/Context;

.field private mDataState:I

.field private mNetworkModeReceiver:Landroid/content/BroadcastReceiver;

.field private mNumPhones:I

.field private mPhone:Landroid/telephony/ITelephonyExt;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPre:Landroid/preference/Preference;

.field private mSimSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private plmn:Ljava/lang/String;

.field private sUnknown:Ljava/lang/String;

.field private showplmn:Z

.field private showspn:Z

.field private spn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mDataState:I

    .line 88
    iput v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mNumPhones:I

    .line 102
    new-instance v0, Lcom/meizu/settings/MzSimCardStatus$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/MzSimCardStatus$1;-><init>(Lcom/meizu/settings/MzSimCardStatus;)V

    iput-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mNetworkModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/MzSimCardStatus;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/MzSimCardStatus;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/settings/MzSimCardStatus;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/meizu/settings/MzSimCardStatus;->showspn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/MzSimCardStatus;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus;->spn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/MzSimCardStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/MzSimCardStatus;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/meizu/settings/MzSimCardStatus;->showplmn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/MzSimCardStatus;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/meizu/settings/MzSimCardStatus;->showplmn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/MzSimCardStatus;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus;->plmn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/MzSimCardStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->plmn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/meizu/settings/MzSimCardStatus;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$602(Lcom/meizu/settings/MzSimCardStatus;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/MzSimCardStatus;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateServiceState()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/MzSimCardStatus;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/MzSimCardStatus;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/meizu/settings/MzSimCardStatus;->mDataState:I

    return p0
.end method

.method static synthetic access$902(Lcom/meizu/settings/MzSimCardStatus;I)I
    .registers 2

    .line 65
    iput p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mDataState:I

    return p1
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .registers 2

    .line 428
    new-instance p1, Lcom/meizu/settings/MzSimCardStatus$2;

    invoke-direct {p1, p0}, Lcom/meizu/settings/MzSimCardStatus$2;-><init>(Lcom/meizu/settings/MzSimCardStatus;)V

    return-object p1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    iget-object p2, p0, Lcom/meizu/settings/MzSimCardStatus;->sUnknown:Ljava/lang/String;

    .line 219
    :cond_8
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 220
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method

.method private updateDataState()V
    .registers 5

    .line 252
    iget v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mDataState:I

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeminiSimCardStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f12111b

    if-eqz v0, :cond_4c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_42

    const/4 v3, 0x2

    if-eq v0, v3, :cond_38

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2e

    .line 270
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 261
    :cond_2e
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f12111c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 258
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 264
    :cond_42
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f12111a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 267
    :cond_4c
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDataState display = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "data_state"

    .line 274
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNetworkType()V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 228
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {v1, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {v2, v3}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v2

    .line 229
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actualDataNetworkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "actualVoiceNetworkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GeminiSimCardStatus"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_45

    .line 234
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_45
    if-eqz v1, :cond_4c

    .line 236
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    .line 239
    :goto_4d
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_78

    if-eqz v0, :cond_78

    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 240
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_67

    const/4 v2, 0x2

    if-ne v1, v2, :cond_78

    .line 242
    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; NR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_78
    const-string v1, "network_type"

    .line 246
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateServiceState()V
    .registers 8

    const-string v0, "_r"

    .line 278
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12112f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_11a

    .line 280
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_33

    const/4 v3, 0x1

    if-eq v2, v3, :cond_29

    const/4 v3, 0x2

    if-eq v2, v3, :cond_29

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    goto :goto_3c

    .line 291
    :cond_1f
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12112d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    .line 288
    :cond_29
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12112e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    .line 284
    :cond_33
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f12112c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3c
    const-string/jumbo v2, "service_state"

    .line 295
    invoke-direct {p0, v2, v1}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    const-string/jumbo v2, "roaming_state"

    if-eqz v1, :cond_5a

    .line 298
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f121129

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 300
    :cond_5a
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f12112a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_66
    iget-boolean v1, p0, Lcom/meizu/settings/MzSimCardStatus;->showplmn:Z

    const-string v2, "GeminiSimCardStatus"

    const-string/jumbo v3, "operator_name"

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lcom/meizu/settings/MzSimCardStatus;->showspn:Z

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->spn:Ljava/lang/String;

    if-eqz v1, :cond_82

    const-string v0, "it needs show spn!"

    .line 306
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->spn:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_82
    const-string v1, "it needs show plmn"

    .line 310
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_115

    .line 315
    :try_start_8f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 316
    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 318
    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {}, Landroid/telephony/MzOperatorHelper;->getInstance()Landroid/telephony/MzOperatorHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 320
    invoke-virtual {v5, v1, v6}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 323
    invoke-static {}, Landroid/telephony/MzOperatorHelper;->getInstance()Landroid/telephony/MzOperatorHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_e5
    if-eqz v5, :cond_f0

    .line 325
    invoke-direct {p0, v3, v5}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "********------"

    .line 326
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 328
    :cond_f0
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_101

    .line 334
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 335
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    goto :goto_102

    :cond_101
    move-object v0, v1

    :goto_102
    const-string v2, "00000"

    .line 337
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    move-object v0, v1

    .line 341
    :cond_10b
    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_10e} :catch_10f

    goto :goto_11a

    .line 344
    :catch_10f
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 347
    :cond_115
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11a
    :goto_11a
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 546
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 122
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->isRadioPowerOn(Landroid/content/Context;I)Z

    move-result v1

    if-eqz p1, :cond_2d

    if-eqz v1, :cond_2d

    .line 130
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "subscription"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    goto :goto_36

    :cond_2d
    if-eqz p1, :cond_32

    .line 133
    iput v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    goto :goto_36

    :cond_32
    if-eqz v1, :cond_36

    .line 135
    iput v2, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    .line 137
    :cond_36
    :goto_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSimSlotId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeminiSimCardStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f160074

    .line 138
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 139
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 141
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mNumPhones:I

    .line 142
    new-instance p1, Landroid/telephony/SignalStrength;

    invoke-direct {p1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 143
    new-instance p1, Landroid/telephony/ServiceState;

    invoke-direct {p1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 144
    new-instance p1, Landroid/telephony/PhoneStateListener;

    invoke-direct {p1}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 145
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f1206d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->sUnknown:Ljava/lang/String;

    .line 147
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_b5

    const-string/jumbo p1, "phone_ext"

    .line 148
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhone:Landroid/telephony/ITelephonyExt;

    .line 150
    :try_start_a6
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhone:Landroid/telephony/ITelephonyExt;

    iget v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-interface {p1, v0}, Landroid/telephony/ITelephonyExt;->getServiceStateBySlot(I)Landroid/telephony/ServiceState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b0} :catch_b1

    goto :goto_b5

    :catch_b1
    move-exception p1

    .line 152
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    :cond_b5
    :goto_b5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {p1, v0}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/MzSimCardStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-string/jumbo p1, "signal_strength"

    .line 157
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrengthPre:Landroid/preference/Preference;

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 183
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 185
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhone:Landroid/telephony/ITelephonyExt;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 186
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {v1, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 187
    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2b
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 162
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 165
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {v0, v1}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSimNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "number"

    .line 166
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/MzSimCardStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhone:Landroid/telephony/ITelephonyExt;

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {v1, v2}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/meizu/settings/MzSimCardStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 174
    invoke-virtual {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateSignalStrength()V

    .line 175
    invoke-direct {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateServiceState()V

    .line 176
    invoke-direct {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateDataState()V

    .line 177
    invoke-direct {p0}, Lcom/meizu/settings/MzSimCardStatus;->updateNetworkType()V

    :cond_48
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 193
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus;->mNetworkModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method updateSignalStrength()V
    .registers 17

    move-object/from16 v0, p0

    const-string v1, "GeminiSimCardStatus"

    const-string/jumbo v2, "updateSignalStrength()"

    .line 353
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, v0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrengthPre:Landroid/preference/Preference;

    if-eqz v2, :cond_1b7

    .line 360
    iget-object v2, v0, Lcom/meizu/settings/MzSimCardStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 365
    iget-object v3, v0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/16 v4, 0x63

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_71

    .line 366
    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    const v7, 0x7fffffff

    const/4 v8, -0x1

    if-eq v8, v3, :cond_28

    if-ne v7, v3, :cond_29

    :cond_28
    move v3, v6

    .line 368
    :cond_29
    iget-object v9, v0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v9

    if-ne v8, v9, :cond_32

    move v9, v6

    :cond_32
    const/16 v10, 0xff

    if-ne v10, v9, :cond_37

    move v9, v4

    .line 374
    :cond_37
    iget-object v11, v0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v12, Landroid/telephony/CellSignalStrengthNr;

    .line 375
    invoke-virtual {v11, v12}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_50

    .line 376
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_50

    .line 377
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/CellSignalStrengthNr;

    iput-object v11, v0, Lcom/meizu/settings/MzSimCardStatus;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    goto :goto_52

    .line 379
    :cond_50
    iput-object v5, v0, Lcom/meizu/settings/MzSimCardStatus;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    .line 381
    :goto_52
    iget-object v11, v0, Lcom/meizu/settings/MzSimCardStatus;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz v11, :cond_6f

    .line 382
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result v11

    if-eq v8, v11, :cond_5e

    if-ne v7, v11, :cond_5f

    :cond_5e
    move v11, v6

    .line 384
    :cond_5f
    iget-object v7, v0, Lcom/meizu/settings/MzSimCardStatus;->mCellSignalStrengthNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getAsuLevel()I

    move-result v7

    if-ne v8, v7, :cond_68

    goto :goto_69

    :cond_68
    move v6, v7

    :goto_69
    if-ne v10, v6, :cond_6c

    goto :goto_6d

    :cond_6c
    move v4, v6

    :goto_6d
    move v6, v11

    goto :goto_74

    :cond_6f
    move v4, v6

    goto :goto_74

    :cond_71
    move v3, v6

    move v4, v3

    move v9, v4

    .line 391
    :goto_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSignalStrength, SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " asu"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSignalStrength, CellSignalStrengthNr is "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f12111f

    .line 395
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "   "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v12, 0x7f12111d

    .line 396
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 399
    iget-object v13, v0, Lcom/meizu/settings/MzSimCardStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    iget v15, v0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {v14, v15}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v14

    .line 399
    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v13

    .line 401
    iget-object v14, v0, Lcom/meizu/settings/MzSimCardStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    iget v5, v0, Lcom/meizu/settings/MzSimCardStatus;->mSimSlotId:I

    invoke-static {v15, v5}, Lcom/meizu/settings/MzMobileNetworksUtils;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v5

    .line 401
    invoke-virtual {v14, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    .line 403
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "actualDataNetworkType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "actualVoiceNetworkType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_12f

    .line 406
    invoke-static {v13}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_137

    :cond_12f
    if-eqz v5, :cond_136

    .line 408
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_137

    :cond_136
    const/4 v5, 0x0

    .line 411
    :goto_137
    iget-object v1, v0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1b2

    if-eqz v5, :cond_1b2

    const-string v1, "LTE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    if-eqz v6, :cond_1b2

    if-eqz v4, :cond_1b2

    .line 413
    iget-object v1, v0, Lcom/meizu/settings/MzSimCardStatus;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_155

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1b2

    .line 415
    :cond_155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n NR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 423
    :cond_1b2
    iget-object v0, v0, Lcom/meizu/settings/MzSimCardStatus;->mSignalStrengthPre:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1b7
    return-void
.end method
