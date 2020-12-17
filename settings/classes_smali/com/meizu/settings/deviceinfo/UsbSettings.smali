.class public Lcom/meizu/settings/deviceinfo/UsbSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBicrPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

.field private mChargeOnlyPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

.field private mCurrentFunction:Ljava/lang/String;

.field private mFlymeUsbPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUsbConnected:Z

.field private mMidiPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

.field private mMtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

.field private mPtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSuperUsbSpeedDialog:Landroid/content/DialogInterface;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/meizu/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/meizu/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/UsbSettings;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/deviceinfo/UsbSettings;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/UsbSettings;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mIsUsbConnected:Z

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/deviceinfo/UsbSettings;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/UsbSettings;)Landroid/content/DialogInterface;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mSuperUsbSpeedDialog:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/UsbSettings;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method private addMacUserTipCategory(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .registers 4

    .line 154
    new-instance p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;

    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1216b7

    .line 155
    invoke-virtual {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->setNormalStr(I)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1216c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->setUrlStr(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .registers 2

    .line 308
    new-instance v0, Lcom/meizu/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/meizu/settings/deviceinfo/UsbSettings;)V

    return-object v0
.end method

.method private initPreference()V
    .registers 4

    const v0, 0x7f1600b3

    .line 111
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "key_usb_speed"

    .line 113
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "mtp"

    .line 114
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mMtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    const-string/jumbo v0, "ptp"

    .line 115
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mPtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    const-string v0, "midi"

    .line 116
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mMidiPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    const-string v0, "none"

    .line 117
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mChargeOnlyPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    const-string v0, "bicr"

    .line 118
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mBicrPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mMtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mPtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mMidiPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mChargeOnlyPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mBicrPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    .line 132
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mMtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mPtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 137
    :cond_82
    sget-object v0, Landroid/os/BuildExt;->IS_M80:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string v0, "auto-speed"

    const-string/jumbo v2, "persist.sys.UsbSpeedSettings"

    .line 138
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 140
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_be

    :cond_9f
    const-string/jumbo v0, "super-speed"

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 142
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_be

    .line 144
    :cond_af
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_be

    .line 147
    :cond_b5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    :goto_be
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/deviceinfo/UsbSettings;->addMacUserTipCategory(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private reportData()V
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "mtp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_3e

    .line 294
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string/jumbo v1, "ptp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    goto :goto_3e

    .line 296
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    goto :goto_3e

    .line 298
    :cond_25
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "bicr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x4

    goto :goto_3e

    .line 300
    :cond_31
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "midi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x6

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    .line 304
    :goto_3e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbSettings"

    const-string v2, "insert_into_usb_hole"

    const-string/jumbo v3, "use_type"

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .registers 3

    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1216c7

    .line 342
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1216ab

    .line 343
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 344
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 345
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/UsbSettings;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mSuperUsbSpeedDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method private updateAllPrefrenceStatus(Z)V
    .registers 3

    .line 285
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    .line 286
    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .registers 10

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateToggles:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mFlymeUsbPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    .line 209
    invoke-virtual {v4}, Landroid/preference/Preference;->hasKey()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 210
    invoke-virtual {v4, v5}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->setChecked(Z)Z

    .line 211
    invoke-virtual {v4, v2}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    :goto_42
    move v3, v5

    goto :goto_1f

    .line 213
    :cond_44
    invoke-virtual {v4}, Landroid/preference/Preference;->hasKey()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const-string v6, "charging"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 214
    invoke-virtual {v4, v5}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->setChecked(Z)Z

    goto :goto_42

    .line 217
    :cond_62
    invoke-virtual {v4, v2}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->setChecked(Z)Z

    goto :goto_1f

    :cond_66
    if-nez v3, :cond_73

    const-string/jumbo p1, "updateToggles default checked charging only"

    .line 222
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mChargeOnlyPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-virtual {p1, v5}, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;->setChecked(Z)Z

    .line 227
    :cond_73
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChinamobileVersion()Z

    move-result p1

    if-eqz p1, :cond_8d

    const-string/jumbo p1, "persist.sys.usb.activation"

    const-string v0, "no"

    .line 228
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    move p1, v5

    goto :goto_8e

    :cond_8d
    move p1, v2

    .line 231
    :goto_8e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 232
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "no_usb_file_transfer"

    .line 231
    invoke-static {v0, v4, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez p1, :cond_c6

    .line 234
    iget-boolean v3, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mIsUsbConnected:Z

    if-nez v3, :cond_a3

    goto :goto_c6

    :cond_a3
    if-eqz v0, :cond_b0

    .line 238
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mMtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 239
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mPtpPreference:Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_dd

    .line 240
    :cond_b0
    iget-boolean p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-eqz p1, :cond_bd

    if-eqz v3, :cond_b7

    goto :goto_bd

    :cond_b7
    const-string p0, "USB Accessory Mode"

    .line 245
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    :cond_bd
    :goto_bd
    const-string p1, "USB Normal Mode"

    .line 242
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, v5}, Lcom/meizu/settings/deviceinfo/UsbSettings;->updateAllPrefrenceStatus(Z)V

    goto :goto_dd

    .line 235
    :cond_c6
    :goto_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB is locked down, mUnActivated:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0, v2}, Lcom/meizu/settings/deviceinfo/UsbSettings;->updateAllPrefrenceStatus(Z)V

    :goto_dd
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mSuperUsbSpeedDialog:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_18

    const/4 p1, -0x1

    if-ne p2, p1, :cond_10

    .line 329
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_18

    const/4 p1, 0x1

    .line 330
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_18

    .line 333
    :cond_10
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_18

    const/4 p1, 0x0

    .line 334
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 162
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "usb"

    .line 164
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 165
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUserManager:Landroid/os/UserManager;

    .line 167
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/UsbSettings;->initPreference()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 172
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 173
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/UsbSettings;->reportData()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .line 254
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbSuperSpeedSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_1a

    .line 259
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 260
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/UsbSettings;->showDialog(Landroid/content/Context;)V

    :cond_19
    return v1

    .line 268
    :cond_1a
    instance-of v0, p2, Lcom/meizu/settings/deviceinfo/FlymeUsbPreference;

    if-eqz v0, :cond_4a

    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 269
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 271
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_44

    .line 273
    :cond_3d
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 276
    :goto_44
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return v1

    .line 281
    :cond_4a
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 5

    .line 180
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 183
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 190
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    :cond_27
    return-void
.end method
