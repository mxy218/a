.class public Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;
.super Lcom/meizu/settings/MzSettingsPreferenceFragment;
.source "FlymeIcclockSettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlymeIcclockSettingsChooser"


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mSimCards:Landroid/preference/PreferenceScreen;

.field private mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/MzSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mAvailableSubInfos:Ljava/util/List;

    .line 53
    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSubInfoList:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$1;-><init>(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;)V

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createPreferences()V
    .registers 7

    .line 93
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 94
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 98
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 99
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mAvailableSubInfos:Ljava/util/List;

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_74

    .line 102
    invoke-direct {p0, v1}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 103
    sget-object v3, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get SubscriptionInfo from slot =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4e

    const-string v5, "is empty"

    goto :goto_52

    .line 104
    :cond_4e
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_71

    .line 106
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimCards:Landroid/preference/PreferenceScreen;

    new-instance v4, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2, v1}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;-><init>(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    iget-object v3, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_74
    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSubInfoList:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    .line 135
    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSubInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 136
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 217
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 222
    sget-object p0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p1, :cond_19

    if-eqz p0, :cond_19

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    const-string p0, "SIM"

    const-string p1, "UIM"

    .line 224
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    return-object p2
.end method

.method public static initIccLockSettings(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 176
    :goto_b
    invoke-static {p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 177
    invoke-virtual {p1, p4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p4

    if-eqz p4, :cond_17

    move p4, v2

    goto :goto_18

    :cond_17
    move p4, v1

    .line 178
    :goto_18
    invoke-virtual {p1, p5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p5

    if-eqz p5, :cond_1f

    move v1, v2

    :cond_1f
    if-nez v3, :cond_23

    const/4 p5, -0x1

    goto :goto_27

    .line 180
    :cond_23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p5

    .line 181
    :goto_27
    sget-object v4, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initIccLockSettings isPrimary = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " simInfos size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " isIcclockChooserPrefExist = "

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " isIcclockPrefExit = "

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v4, 0x7f12140d

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p0, v2, p5}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getUIMStr(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_69

    .line 186
    invoke-virtual {p2, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_69
    if-eqz p3, :cond_6e

    .line 189
    invoke-virtual {p3, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6e
    if-eqz v0, :cond_99

    if-eqz v3, :cond_99

    if-eqz v3, :cond_7b

    .line 192
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7b

    goto :goto_99

    :cond_7b
    if-eqz v3, :cond_8e

    .line 199
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_8e

    if-eqz p4, :cond_88

    .line 201
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_88
    if-nez v1, :cond_a3

    .line 204
    invoke-virtual {p1, p3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a3

    :cond_8e
    if-nez p4, :cond_93

    .line 208
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_93
    if-eqz v1, :cond_a3

    .line 211
    invoke-virtual {p1, p3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a3

    :cond_99
    :goto_99
    if-eqz p4, :cond_9e

    .line 194
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9e
    if-eqz v1, :cond_a3

    .line 197
    invoke-virtual {p1, p3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a3
    :goto_a3
    return-void
.end method

.method private registerSimInfoChangedReceiver()V
    .registers 3

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateAllOptions()V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->updateSimSlotValues()V

    return-void
.end method

.method private updateSimSlotValues()V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 119
    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 120
    instance-of v3, v2, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;

    if-eqz v3, :cond_18

    .line 121
    check-cast v2, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;

    invoke-virtual {v2}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->update()V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 85
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSubInfoList:Ljava/util/List;

    if-nez p1, :cond_19

    .line 86
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSubInfoList:Ljava/util/List;

    .line 88
    :cond_19
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->createPreferences()V

    .line 89
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->updateAllOptions()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 167
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 168
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->mSimInfoChangeReceicer:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9

    .line 231
    instance-of p1, p2, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;

    if-eqz p1, :cond_2c

    .line 232
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 233
    check-cast p2, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;

    invoke-static {p2}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->access$100(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;)I

    move-result p1

    .line 234
    invoke-static {p2}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;->access$200(Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser$IccLockPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    .line 235
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p2, "extra_slotid"

    .line 236
    invoke-virtual {v5, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-class p1, Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/MzSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    :cond_2c
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .registers 3

    .line 154
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->registerSimInfoChangedReceiver()V

    .line 156
    invoke-direct {p0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->updateAllOptions()V

    .line 158
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->getSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_28

    .line 160
    :cond_1a
    sget-object v0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;->TAG:Ljava/lang/String;

    const-string v1, "onResume sim count not enough"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_28
    return-void
.end method
