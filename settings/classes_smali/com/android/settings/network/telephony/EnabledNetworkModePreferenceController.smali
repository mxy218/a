.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "EnabledNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mIsGlobalCdma:Z

.field mShow4GForLTE:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getPreferredNetworkMode()I
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private updatePreferenceEntries(Landroidx/preference/ListPreference;)V
    .registers 9

    .line 127
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const v2, 0x7f030084

    const v3, 0x7f03007f

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_93

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lte_service_forced"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 130
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-ne v1, v4, :cond_3f

    goto :goto_40

    :cond_3f
    move v4, v5

    .line 136
    :goto_40
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 136
    invoke-static {v1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_11e

    if-nez v0, :cond_6c

    .line 142
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 144
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_11e

    :cond_6c
    packed-switch v1, :pswitch_data_136

    .line 166
    :pswitch_6f  #0x9
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 168
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_11e

    :pswitch_77  #0x7, 0x8, 0xa, 0xb
    const v0, 0x7f030082

    .line 160
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030083

    .line 162
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_11e

    :pswitch_85  #0x4, 0x5, 0x6
    const v0, 0x7f030080

    .line 151
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030081

    .line 153
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_11e

    :cond_93
    if-ne v0, v4, :cond_11e

    .line 175
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, v4}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_ad

    const v0, 0x7f03008d

    .line 176
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03008e

    .line 178
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_11e

    :cond_ad
    const-string v0, "lte_enabled_bool"

    const-string/jumbo v4, "prefer_2g_bool"

    if-eqz v1, :cond_cd

    .line 181
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_cd

    .line 182
    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_cd

    const v0, 0x7f030088

    .line 183
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f030089

    .line 184
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_11e

    :cond_cd
    if-eqz v1, :cond_ea

    .line 186
    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 187
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v0, :cond_dd

    const v0, 0x7f030086

    goto :goto_e0

    :cond_dd
    const v0, 0x7f030087

    .line 190
    :goto_e0
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03008a

    .line 191
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_11e

    :cond_ea
    if-eqz v1, :cond_ff

    .line 194
    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ff

    const v0, 0x7f03008b

    .line 195
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03008c

    .line 197
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_11e

    .line 199
    :cond_ff
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz v0, :cond_10a

    .line 200
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 201
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_11e

    .line 203
    :cond_10a
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz v0, :cond_112

    const v0, 0x7f03007e

    goto :goto_115

    :cond_112
    const v0, 0x7f030085

    .line 205
    :goto_115
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const v0, 0x7f03008f

    .line 206
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 211
    :cond_11e
    :goto_11e
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_134

    const p0, 0x7f0300df

    .line 212
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntries(I)V

    const p0, 0x7f0300e9

    .line 214
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_134
    return-void

    nop

    :pswitch_data_136
    .packed-switch 0x4
        :pswitch_85  #00000004
        :pswitch_85  #00000005
        :pswitch_85  #00000006
        :pswitch_77  #00000007
        :pswitch_77  #00000008
        :pswitch_6f  #00000009
        :pswitch_77  #0000000a
        :pswitch_77  #0000000b
    .end packed-switch
.end method

.method private updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V
    .registers 10

    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v0, 0x7f120e7b

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120e9d

    const v4, 0x7f120e9c

    const/16 v5, 0xa

    const v6, 0x7f120e7a

    packed-switch p2, :pswitch_data_148

    .line 331
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120cf2

    new-array v2, v2, [Ljava/lang/Object;

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_146

    :pswitch_30  #0x15
    const/16 p0, 0x15

    .line 284
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    :pswitch_3e  #0xe, 0x10, 0x12
    const/16 p0, 0x12

    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    :pswitch_4c  #0xd
    const/16 p0, 0xd

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    .line 311
    :pswitch_5a  #0xa, 0xf, 0x11, 0x13, 0x14, 0x16
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_72

    const/16 p0, 0x16

    .line 313
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 312
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    .line 318
    :cond_72
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 317
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 320
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9c

    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_9c

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 322
    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_91

    goto :goto_9c

    .line 325
    :cond_91
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz p0, :cond_96

    goto :goto_97

    :cond_96
    move v0, v3

    :goto_97
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    .line 323
    :cond_9c
    :goto_9c
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    .line 254
    :pswitch_a1  #0x9
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {p2, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_b3

    const p0, 0x7f12106c

    .line 255
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    .line 261
    :cond_b3
    :pswitch_b3  #0xb, 0xc
    iget-boolean p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p2, :cond_cb

    const/16 p2, 0x9

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 265
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    if-eqz p0, :cond_c5

    goto :goto_c6

    :cond_c5
    move v0, v3

    .line 264
    :goto_c6
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    .line 268
    :cond_cb
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_146

    .line 274
    :pswitch_d7  #0x8
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {p2, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_e8

    const p0, 0x7f12106b

    .line 275
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_146

    :cond_e8
    const/16 p0, 0x8

    .line 279
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_146

    :pswitch_f5  #0x5
    const/4 p0, 0x5

    .line 297
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const p0, 0x7f120e78

    .line 298
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_146

    :pswitch_104  #0x4, 0x6, 0x7
    const/4 p0, 0x4

    .line 292
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_146

    .line 242
    :pswitch_110  #0x1
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p0, :cond_122

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const p0, 0x7f120e79

    .line 245
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_146

    .line 248
    :cond_122
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_146

    .line 232
    :pswitch_12d  #0x0, 0x2, 0x3
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p0, :cond_13c

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_146

    .line 236
    :cond_13c
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_146
    return-void

    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_12d  #00000000
        :pswitch_110  #00000001
        :pswitch_12d  #00000002
        :pswitch_12d  #00000003
        :pswitch_104  #00000004
        :pswitch_f5  #00000005
        :pswitch_104  #00000006
        :pswitch_104  #00000007
        :pswitch_d7  #00000008
        :pswitch_a1  #00000009
        :pswitch_5a  #0000000a
        :pswitch_b3  #0000000b
        :pswitch_b3  #0000000c
        :pswitch_4c  #0000000d
        :pswitch_3e  #0000000e
        :pswitch_5a  #0000000f
        :pswitch_3e  #00000010
        :pswitch_5a  #00000011
        :pswitch_3e  #00000012
        :pswitch_5a  #00000013
        :pswitch_5a  #00000014
        :pswitch_30  #00000015
        :pswitch_5a  #00000016
    .end packed-switch
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_16

    :goto_14
    move p0, v1

    goto :goto_4a

    :cond_16
    if-nez v0, :cond_19

    goto :goto_14

    :cond_19
    const-string p1, "hide_carrier_network_settings_bool"

    .line 63
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_14

    :cond_22
    const-string p1, "hide_preferred_network_type_bool"

    .line 66
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 68
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 69
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_14

    :cond_3f
    const-string/jumbo p0, "world_phone_bool"

    .line 72
    invoke-virtual {v0, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    goto :goto_14

    :cond_49
    const/4 p0, 0x1

    :goto_4a
    if-eqz p0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x2

    :goto_4e
    return v1
.end method

.method public init(I)V
    .registers 5

    .line 106
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 107
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    if-eqz v0, :cond_31

    const-string/jumbo v0, "show_cdma_choices_bool"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-eqz p1, :cond_3d

    const-string/jumbo v0, "show_4g_for_lte_data_icon_bool"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 117
    :cond_3d
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mShow4GForLTE:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 92
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 94
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 84
    check-cast p1, Landroidx/preference/ListPreference;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceEntries(Landroidx/preference/ListPreference;)V

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreferenceValueAndSummary(Landroidx/preference/ListPreference;I)V

    return-void
.end method
