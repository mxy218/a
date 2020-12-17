.class public Lcom/meizu/settings/soundandvibrate/HifiSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "HifiSettings.java"


# instance fields
.field private HIFI_MUSIC_ENABLED:Ljava/lang/String;

.field private HIFI_MUSIC_PARAM:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCanClick:Z

.field private mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

.field private mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

.field private mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

.field private mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

.field private mImpedance:I

.field private mIsHifiEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mCanClick:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mIsHifiEnabled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/settings/soundandvibrate/HifiSettings;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mIsHifiEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->readImpedance()V

    return-void
.end method

.method static synthetic access$202(Lcom/meizu/settings/soundandvibrate/HifiSettings;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mImpedance:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->updateCheckTextView()V

    return-void
.end method

.method static synthetic access$402(Lcom/meizu/settings/soundandvibrate/HifiSettings;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mCanClick:Z

    return p1
.end method

.method private checkAutoAdjustStreamVolume()V
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_18

    const-string v0, "HifiSettings"

    const-string v3, "checkAutoAdjustStreamVolume: auto set music_stream volume index: 50"

    .line 294
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_18
    return-void
.end method

.method private initMode()V
    .registers 5

    .line 154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_PARAM:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_70

    if-eq v0, v1, :cond_5b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_46

    const/4 v3, 0x3

    if-eq v0, v3, :cond_31

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow HIFI_MUSIC_PARAM:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HifiSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 175
    :cond_31
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 178
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    goto :goto_84

    .line 169
    :cond_46
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 172
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    goto :goto_84

    .line 163
    :cond_5b
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 166
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    goto :goto_84

    .line 157
    :cond_70
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 160
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    :goto_84
    return-void
.end method

.method private readImpedance()V
    .registers 6

    .line 111
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/arizona/wm8998_hp_impedance/hp_impedance"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "HifiSettings"

    if-eqz v1, :cond_a6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_a6

    :cond_17
    const/4 v1, 0x0

    .line 118
    :try_start_18
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_74

    .line 120
    :try_start_22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    if-eqz v1, :cond_46

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 126
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x23

    iput v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mImpedance:I

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readImpedance(): mImpedance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mImpedance:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_6e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_71} :catch_72

    goto :goto_a5

    :catch_72
    move-exception p0

    goto :goto_76

    :catch_74
    move-exception p0

    move-object v3, v1

    .line 133
    :goto_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readImpedance error  one= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a5

    .line 136
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_a5

    :catch_90
    move-exception p0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readImpedance error two = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    :goto_a5
    return-void

    :cond_a6
    :goto_a6
    const-string p0, "readImpedance file not exist , return"

    .line 113
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMode(Landroid/preference/Preference;)V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_37

    .line 236
    invoke-virtual {v0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 239
    :cond_d
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 240
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 241
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 242
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 243
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_PARAM:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "hifi_gain=0"

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_d7

    .line 245
    :cond_37
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    if-ne p1, v0, :cond_6b

    .line 246
    invoke-virtual {v0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_42

    return-void

    .line 249
    :cond_42
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 250
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 251
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 252
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 253
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_PARAM:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "hifi_gain=1"

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_d7

    .line 255
    :cond_6b
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    if-ne p1, v0, :cond_a3

    .line 256
    invoke-virtual {v0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_76

    return-void

    .line 259
    :cond_76
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 260
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 261
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 262
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 263
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->checkAutoAdjustStreamVolume()V

    .line 264
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_PARAM:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "hifi_gain=2"

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_d7

    .line 266
    :cond_a3
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    if-ne p1, v0, :cond_d7

    .line 267
    invoke-virtual {v0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_ae

    return-void

    .line 270
    :cond_ae
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 271
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 272
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 273
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 274
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_PARAM:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "hifi_gain=3"

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_d7
    :goto_d7
    return-void
.end method

.method private updateCheckTextView()V
    .registers 5

    .line 188
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mIsHifiEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 189
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 191
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mImpedance:I

    const/16 v3, 0x14

    if-lt v0, v3, :cond_21

    .line 192
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 193
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p0, v2}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    goto :goto_55

    .line 196
    :cond_21
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_PARAM:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_55

    .line 201
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-direct {p0, v0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->setMode(Landroid/preference/Preference;)V

    goto :goto_55

    .line 205
    :cond_41
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    .line 208
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setEnabled(Z)V

    :cond_55
    :goto_55
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 60
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    const p1, 0x7f16007a

    .line 62
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    const-string p1, "hifi_auto"

    .line 65
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiAuto:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    const-string p1, "hifi_low_gain"

    .line 66
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLowGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    const-string p1, "hifi_high_gain"

    .line 67
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiHighGain:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    const-string p1, "hifi_line_out"

    .line 68
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mHifiLineOut:Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    :try_start_47
    const-string p1, "hifi_music_enabled"

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_ENABLED:Ljava/lang/String;

    const-string p1, "hifi_music_param"

    .line 72
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->HIFI_MUSIC_PARAM:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4f} :catch_4f

    .line 76
    :catch_4f
    new-instance p1, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;-><init>(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 282
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 283
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    const-string p1, "HifiSettings"

    const-string v0, "----------------------- onPreferenceTreeClick ------------------------"

    .line 214
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mCanClick:Z

    const/4 v0, 0x1

    if-nez p1, :cond_d

    return v0

    :cond_d
    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mCanClick:Z

    .line 220
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/meizu/settings/soundandvibrate/HifiSettings$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings$2;-><init>(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 228
    instance-of p1, p2, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;

    if-eqz p1, :cond_26

    .line 229
    invoke-direct {p0, p2}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->setMode(Landroid/preference/Preference;)V

    :cond_26
    return v0
.end method

.method public onResume()V
    .registers 2

    .line 146
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->initMode()V

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings;->mIsHifiEnabled:Z

    .line 148
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->readImpedance()V

    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->updateCheckTextView()V

    .line 150
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
