.class public Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioQualityPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .registers 3

    .line 90
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x3

    if-lez p0, :cond_b

    .line 92
    rem-int/lit8 p0, p0, 0xa

    goto :goto_c

    :cond_b
    move p0, p1

    :goto_c
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    if-eq p0, p1, :cond_17

    move p0, p1

    :cond_17
    return p0
.end method

.method protected getDefaultIndex()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03002c

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

    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "bluetooth_select_a2dp_ldac_playback_quality"

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    if-eq p1, v0, :cond_18

    const/4 v2, 0x2

    if-eq p1, v2, :cond_18

    const/4 v2, 0x3

    if-eq p1, v2, :cond_18

    move p1, v1

    goto :goto_1a

    :cond_18
    add-int/lit16 p1, p1, 0x3e8

    .line 75
    :goto_1a
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->getCodecType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    .line 79
    :goto_25
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecSpecific1Value(J)V

    return v0
.end method
