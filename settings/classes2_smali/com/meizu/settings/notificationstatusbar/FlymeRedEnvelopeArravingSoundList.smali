.class public Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeRedEnvelopeArravingSoundList.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mChecktextPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/ChecktextPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasGetMusicAudioFocus:Z

.field private mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mRingtone:Lcom/meizu/settings/utils/RingtoneExt;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mChecktextPreferences:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHasGetMusicAudioFocus:Z

    .line 61
    new-instance v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$2;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->makeSoundList()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->play()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->stopPlay()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->leavePage()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHasGetMusicAudioFocus:Z

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;Z)Z
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHasGetMusicAudioFocus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)Landroid/os/Handler;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private leavePage()V
    .registers 2

    .line 182
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0}, Lcom/meizu/settings/utils/RingtoneExt;->stop(Z)V

    :cond_8
    return-void
.end method

.method private makeSoundList()V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mChecktextPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getSoundValues()[I

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/4 v1, 0x0

    .line 111
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_3d

    .line 112
    new-instance v2, Lcom/meizu/settings/widget/ChecktextPreference;

    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;)V

    .line 113
    aget v3, v0, v1

    .line 114
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {v4, v3}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getNameByValue(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mChecktextPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 120
    :cond_3d
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->updateCheckedItem()V

    return-void
.end method

.method private play()V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    if-nez v0, :cond_e

    .line 170
    new-instance v0, Lcom/meizu/settings/utils/RingtoneExt;

    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/utils/RingtoneExt;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    .line 172
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/utils/RingtoneExt;->play(Landroid/net/Uri;)V

    return-void
.end method

.method private stopPlay()V
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/meizu/settings/utils/RingtoneExt;->stop(Z)V

    :cond_8
    return-void
.end method

.method private updateCheckedItem()V
    .registers 10

    .line 142
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_red_envelope_arrving_ring_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mChecktextPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/settings/widget/ChecktextPreference;

    .line 146
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 148
    invoke-virtual {v6, v2, v2, v2}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    move v5, v2

    goto :goto_13

    .line 150
    :cond_32
    invoke-virtual {v6, v4, v4, v4}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_13

    :cond_36
    if-nez v5, :cond_67

    .line 155
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mChecktextPreferences:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/ChecktextPreference;

    .line 158
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 160
    invoke-virtual {v0, v2, v2, v2}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_45

    .line 162
    :cond_63
    invoke-virtual {v0, v4, v4, v4}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_45

    :cond_67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 76
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mContext:Landroid/content/Context;

    .line 78
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mScreen:Landroid/preference/PreferenceScreen;

    .line 80
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 81
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->isRemoteAvailable()Z

    move-result p0

    if-nez p0, :cond_36

    :cond_36
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 125
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 128
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_2c

    .line 132
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_red_envelope_arrving_ring_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->updateCheckedItem()V

    .line 135
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {v1, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->buildUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mUri:Landroid/net/Uri;

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0

    .line 130
    :catch_2c
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .registers 3

    .line 89
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHelper:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSoundListHelper;->updateRemoteRes()V

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 97
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 98
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
