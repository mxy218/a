.class public Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AccessibilityHearingAidPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityHearingAidPreferenceController"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHearingAidPreference:Landroidx/preference/Preference;

.field private mHearingAidProfileSupported:Z

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance p1, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getLocalBluetoothManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 92
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->isHearingAidProfileSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private getLocalBluetoothManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .registers 3

    .line 183
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$q777pqjRfk42YMnop2-CICM0B18;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityHearingAidPreferenceController$q777pqjRfk42YMnop2-CICM0B18;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 187
    :try_start_a
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_13} :catch_14
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    const-string v0, "AccessibilityHearingAidPreferenceController"

    const-string v1, "Error getting LocalBluetoothManager."

    .line 190
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private isHearingAidProfileSupported()Z
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_20

    .line 175
    :cond_c
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object p0

    const/16 v0, 0x15

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    const/4 p0, 0x3

    :goto_7
    return p0
.end method

.method getConnectedHearingAidDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_46

    .line 159
    :cond_11
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 164
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isSubDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 165
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_46
    :goto_46
    return-object v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getConnectedHearingAidDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_10

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f12005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 144
    :cond_10
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 126
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getConnectedHearingAidDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_18

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->launchHearingAidInstructionDialog()V

    goto :goto_1b

    .line 131
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->launchBluetoothDeviceDetailSetting(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$getLocalBluetoothManager$0$AccessibilityHearingAidPreferenceController()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method launchBluetoothDeviceDetailSetting(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 205
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_address"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p1, 0x7f1206ce

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x2

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method launchHearingAidInstructionDialog()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 219
    invoke-static {}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->newInstance()Lcom/android/settings/accessibility/HearingAidDialogFragment;

    move-result-object v0

    .line 220
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-class v1, Lcom/android/settings/accessibility/HearingAidDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_b

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidProfileSupported:Z

    if-eqz v0, :cond_1a

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1a
    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method setPreference(Landroidx/preference/Preference;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-void
.end method
