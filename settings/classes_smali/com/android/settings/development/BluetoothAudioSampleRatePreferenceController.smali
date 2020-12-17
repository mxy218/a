.class public Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioSampleRatePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .registers 4

    .line 100
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result p0

    const/4 p1, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_17

    if-eq p0, v0, :cond_15

    if-eq p0, p1, :cond_13

    const/16 v0, 0x8

    if-eq p0, v0, :cond_18

    const/4 p1, 0x0

    goto :goto_18

    :cond_13
    const/4 p1, 0x3

    goto :goto_18

    :cond_15
    move p1, v0

    goto :goto_18

    :cond_17
    move p1, v1

    :cond_18
    :goto_18
    return p1
.end method

.method protected getDefaultIndex()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getListValues()[Ljava/lang/String;
    .registers 2

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "bluetooth_select_a2dp_sample_rate"

    return-object p0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)Z
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v3, :cond_20

    if-eq p1, v1, :cond_1e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2c

    if-eq p1, v0, :cond_1b

    move v0, v2

    goto :goto_2c

    :cond_1b
    const/16 v0, 0x8

    goto :goto_2c

    :cond_1e
    move v0, v1

    goto :goto_2c

    :cond_20
    move v0, v3

    goto :goto_2c

    .line 67
    :cond_22
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->getCodecType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultSampleRate(I)I

    move-result v0

    .line 85
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->getSampleRate()I

    move-result p1

    if-nez p1, :cond_41

    .line 87
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 88
    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->getCodecType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultSampleRate(I)I

    move-result p1

    if-eq v0, p1, :cond_44

    goto :goto_45

    :cond_41
    if-eq p1, v0, :cond_44

    goto :goto_45

    :cond_44
    move v3, v2

    .line 93
    :goto_45
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setSampleRate(I)V

    return v3
.end method
