.class public Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioCodecPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .registers 2

    .line 133
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p0

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    goto :goto_16

    :pswitch_9  #0x6
    const/4 p0, 0x6

    goto :goto_16

    :pswitch_b  #0x5
    const/4 p0, 0x5

    goto :goto_16

    :pswitch_d  #0x4
    const/4 p0, 0x7

    goto :goto_16

    :pswitch_f  #0x3
    const/4 p0, 0x4

    goto :goto_16

    :pswitch_11  #0x2
    const/4 p0, 0x3

    goto :goto_16

    :pswitch_13  #0x1
    const/4 p0, 0x2

    goto :goto_16

    :pswitch_15  #0x0
    const/4 p0, 0x1

    :goto_16
    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_13  #00000001
        :pswitch_11  #00000002
        :pswitch_f  #00000003
        :pswitch_d  #00000004
        :pswitch_b  #00000005
        :pswitch_9  #00000006
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getListValues()[Ljava/lang/String;
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "bluetooth_select_a2dp_codec"

    return-object p0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)Z
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_7c

    move p1, v2

    move v3, p1

    goto :goto_4a

    .line 107
    :pswitch_16  #0x9
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 108
    :try_start_19
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_22

    .line 109
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 111
    :cond_22
    monitor-exit p1

    return v1

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw p0

    .line 100
    :pswitch_27  #0x8
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 101
    :try_start_2a
    iget-object v2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_33

    .line 102
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 104
    :cond_33
    monitor-exit p1

    return v1

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw p0

    :pswitch_38  #0x7
    const/4 p1, 0x6

    goto :goto_4a

    :pswitch_3a  #0x6
    const/4 p1, 0x4

    goto :goto_4a

    :pswitch_3c  #0x5
    const/4 p1, 0x5

    goto :goto_4a

    :pswitch_3e  #0x4
    const/4 p1, 0x3

    goto :goto_4a

    :pswitch_40  #0x3
    const/4 p1, 0x2

    goto :goto_4a

    :pswitch_42  #0x2
    move p1, v1

    goto :goto_4a

    :pswitch_44  #0x1
    move p1, v2

    goto :goto_4a

    .line 68
    :pswitch_46  #0x0
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultCodecType()I

    move-result p1

    .line 116
    :goto_4a
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->getCodecType()I

    move-result v0

    if-eq v0, p1, :cond_53

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    if-eqz v1, :cond_71

    .line 121
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultBitsPerSample(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setBitsPerSample(I)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultChannelMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setChannelMode(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultSampleRate(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setSampleRate(I)V

    .line 125
    :cond_71
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 126
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, v3}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    return v1

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_46  #00000000
        :pswitch_44  #00000001
        :pswitch_42  #00000002
        :pswitch_40  #00000003
        :pswitch_3e  #00000004
        :pswitch_3c  #00000005
        :pswitch_3a  #00000006
        :pswitch_38  #00000007
        :pswitch_27  #00000008
        :pswitch_16  #00000009
    .end packed-switch
.end method
