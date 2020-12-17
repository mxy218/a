.class public abstract Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "BaseRingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_VIBRATE_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAllInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MzRingtoneManager$RingtoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplyRingtone:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCustomCategory:Landroid/preference/PreferenceCategory;

.field private mDefaultDisplayName:Ljava/lang/String;

.field private mDefaultPreference:Lcom/meizu/settings/widget/ChecktextPreference;

.field protected mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field protected mHasDefaultItem:Z

.field protected mHasSilentItem:Z

.field private mLocalMusicPrefrence:Lcom/meizu/settings/widget/HilightTextPreference;

.field private mMergerRingtoneAndFlymeMusic:Z

.field private mOnlineRingtonePreference:Lcom/meizu/settings/widget/HilightTextPreference;

.field protected mParentKey:Ljava/lang/String;

.field private mPlayingRingtone:Lcom/meizu/settings/utils/RingtoneExt;

.field private mRingtoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/ChecktextPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneLoader:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field protected mRingtoneType:I

.field protected mSelectedUri:Landroid/net/Uri;

.field private mSilentPreference:Lcom/meizu/settings/widget/ChecktextPreference;

.field private mSuppress:Z

.field private mSystemCategory:Landroid/preference/PreferenceCategory;

.field protected mTitle:Ljava/lang/String;

.field protected mUriForDefaultItem:Landroid/net/Uri;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 57
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->NOTIFICATION_VIBRATE_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mMergerRingtoneAndFlymeMusic:Z

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneList:Ljava/util/ArrayList;

    .line 107
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSuppress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mDefaultDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mDefaultDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Landroid/content/Context;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Lcom/meizu/settings/widget/ChecktextPreference;)Lcom/meizu/settings/widget/ChecktextPreference;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mDefaultPreference:Lcom/meizu/settings/widget/ChecktextPreference;

    return-object p1
.end method

.method static synthetic access$302(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Lcom/meizu/settings/widget/ChecktextPreference;)Lcom/meizu/settings/widget/ChecktextPreference;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSilentPreference:Lcom/meizu/settings/widget/ChecktextPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Ljava/util/ArrayList;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mAllInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mAllInfos:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSuppress:Z

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Ljava/util/ArrayList;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Landroid/preference/PreferenceCategory;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSystemCategory:Landroid/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->updateHighlightUri()V

    return-void
.end method

.method private buildreturnData()V
    .registers 4

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private loadRingtonePreference()V
    .registers 3

    .line 207
    new-instance v0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;-><init>(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$1;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneLoader:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;

    .line 208
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneLoader:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private playRingtone(I)V
    .registers 5

    .line 422
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private previewNotificationSilentVibrate()V
    .registers 8

    .line 369
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v1, v2

    .line 370
    :cond_11
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    if-eq v0, v2, :cond_47

    const/16 v2, 0x800

    if-eq v0, v2, :cond_47

    const/16 v2, 0x1000

    if-eq v0, v2, :cond_47

    if-eqz v1, :cond_47

    .line 372
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FlymeVibratorHelper;->getInstance(Landroid/content/Context;)Landroid/os/FlymeVibratorHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FlymeVibratorHelper;->resetNotificationVibrateRtpId()V

    .line 373
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 p0, 0x4f4c

    .line 374
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v4

    sget-object v6, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->NOTIFICATION_VIBRATE_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-string v5, "notification_vibrate"

    .line 373
    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    :cond_47
    return-void
.end method

.method private setResultData(Landroid/content/Intent;ZZ)V
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    .line 387
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    :goto_c
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 388
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->buildreturnData()V

    .line 389
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz p3, :cond_24

    .line 392
    iget p2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {p1, p2, p0}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 393
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_29

    :cond_24
    if-eqz p2, :cond_29

    .line 395
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_29
    :goto_29
    return-void
.end method

.method private showOnline()Z
    .registers 4

    .line 473
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mMergerRingtoneAndFlymeMusic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 476
    :cond_6
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 479
    :cond_d
    iget p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/16 v2, 0x800

    if-eq p0, v2, :cond_20

    const/16 v2, 0x1000

    if-eq p0, v2, :cond_20

    const/16 v2, 0x100

    if-ne p0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :cond_20
    :goto_20
    return v0
.end method

.method private stopAnyPlayingRingtone(Z)V
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_7

    .line 460
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 463
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mPlayingRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    if-eqz v0, :cond_13

    .line 465
    invoke-virtual {v0, p1}, Lcom/meizu/settings/utils/RingtoneExt;->stop(Z)V

    .line 467
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz p0, :cond_1a

    .line 468
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :cond_1a
    return-void
.end method

.method private updateHighlightUri()V
    .registers 9

    .line 212
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mLocalMusicPrefrence:Lcom/meizu/settings/widget/HilightTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/HilightTextPreference;->setHilight(Z)V

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/widget/ChecktextPreference;

    .line 214
    invoke-virtual {v2, v1, v3, v3}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_c

    .line 217
    :cond_1d
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v0, :cond_29

    .line 218
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSilentPreference:Lcom/meizu/settings/widget/ChecktextPreference;

    if-eqz p0, :cond_28

    .line 219
    invoke-virtual {p0, v3, v3, v3}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    :cond_28
    return-void

    .line 224
    :cond_29
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 225
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mDefaultPreference:Lcom/meizu/settings/widget/ChecktextPreference;

    if-eqz p0, :cond_38

    .line 226
    invoke-virtual {p0, v3, v3, v3}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    :cond_38
    return-void

    .line 232
    :cond_39
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media/internal/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 233
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/ChecktextPreference;

    .line 234
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v4, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v7, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 237
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 236
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_97

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 240
    :cond_97
    invoke-virtual {v1, v3, v3, v3}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    return-void

    .line 247
    :cond_9b
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mLocalMusicPrefrence:Lcom/meizu/settings/widget/HilightTextPreference;

    invoke-virtual {p0, v3}, Lcom/meizu/settings/widget/HilightTextPreference;->setHilight(Z)V

    return-void
.end method

.method private updatePreference()V
    .registers 3

    .line 196
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mMergerRingtoneAndFlymeMusic:Z

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mLocalMusicPrefrence:Lcom/meizu/settings/widget/HilightTextPreference;

    const v1, 0x7f120fbc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 199
    :cond_c
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->showOnline()Z

    move-result v0

    if-nez v0, :cond_19

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mCustomCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mOnlineRingtonePreference:Lcom/meizu/settings/widget/HilightTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_19
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->loadRingtonePreference()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 402
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_27

    if-nez p1, :cond_d

    .line 406
    invoke-direct {p0, p3, v0, v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->setResultData(Landroid/content/Intent;ZZ)V

    goto :goto_2e

    :cond_d
    const/4 p2, 0x1

    if-ne p1, p2, :cond_14

    .line 408
    invoke-direct {p0, p3, v0, p2}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->setResultData(Landroid/content/Intent;ZZ)V

    goto :goto_2e

    :cond_14
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2e

    .line 410
    instance-of p1, p0, Lcom/meizu/settings/soundandvibrate/ExternalRingtonePicker;

    if-eqz p1, :cond_1f

    .line 411
    invoke-direct {p0, p3, p2, v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->setResultData(Landroid/content/Intent;ZZ)V

    goto :goto_2e

    .line 412
    :cond_1f
    instance-of p1, p0, Lcom/meizu/settings/soundandvibrate/SettingsRingtonePicker;

    if-eqz p1, :cond_2e

    .line 413
    invoke-direct {p0, p3, p2, p2}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->setResultData(Landroid/content/Intent;ZZ)V

    goto :goto_2e

    .line 417
    :cond_27
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 172
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f160097

    .line 173
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 175
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    .line 178
    new-instance p1, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 179
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->onInitArguments()V

    const-string p1, "custom_category"

    .line 181
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mCustomCategory:Landroid/preference/PreferenceCategory;

    const-string p1, "local_music"

    .line 182
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/HilightTextPreference;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mLocalMusicPrefrence:Lcom/meizu/settings/widget/HilightTextPreference;

    const-string p1, "online_ringtone"

    .line 183
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/HilightTextPreference;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mOnlineRingtonePreference:Lcom/meizu/settings/widget/HilightTextPreference;

    const-string p1, "system_category"

    .line 184
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSystemCategory:Landroid/preference/PreferenceCategory;

    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mExistingUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 188
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->updatePreference()V

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 191
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 293
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 294
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneLoader:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_b
    return-void
.end method

.method abstract onInitArguments()V
.end method

.method public onPause()V
    .registers 3

    .line 277
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSuppress:Z

    .line 279
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 280
    invoke-direct {p0, v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->stopAnyPlayingRingtone(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 16

    .line 304
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSuppress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 307
    :cond_6
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "local_music"

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BaseRingtonePicker"

    const-string v4, "_"

    const/4 v5, 0x0

    if-eqz v2, :cond_86

    .line 311
    invoke-direct {p0, v5}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->stopAnyPlayingRingtone(Z)V

    .line 313
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 315
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TITLE"

    .line 314
    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 318
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mApplyRingtone:Z

    const-string v1, "ringtone_args"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const v11, 0x7f1211db  # 1.9416E38f

    const/4 v12, 0x0

    move-object v9, p0

    invoke-static/range {v6 .. v12}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "local_ringtones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_83
    move v1, v5

    goto/16 :goto_10d

    :cond_86
    const-string v2, "online_ringtone"

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 327
    invoke-direct {p0, v5}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->stopAnyPlayingRingtone(Z)V

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.meizu.customizecenter.ringtone.online"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    .line 329
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_9d
    const-string v2, "only_get_ringtone_uri"

    .line 331
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 332
    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9d .. :try_end_a6} :catch_a7

    goto :goto_ac

    :catch_a7
    const-string v0, "can not found online ringtone activity"

    .line 334
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_ac
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "online_ringtones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_dc
    const-string v2, "default"

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x12c

    if-eqz v2, :cond_ee

    .line 341
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 342
    invoke-direct {p0, v4}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->playRingtone(I)V

    goto :goto_10d

    :cond_ee
    const-string v2, "silent"

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 345
    invoke-direct {p0, v5}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->stopAnyPlayingRingtone(Z)V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 347
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->previewNotificationSilentVibrate()V

    goto :goto_10d

    .line 350
    :cond_100
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 352
    invoke-direct {p0, v4}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->playRingtone(I)V

    :goto_10d
    if-eqz v1, :cond_13b

    .line 355
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mApplyRingtone:Z

    if-eqz v0, :cond_135

    .line 356
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 357
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mParentKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_135

    .line 358
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mParentKey:Ljava/lang/String;

    .line 359
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v0, v1, v3, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_135
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->buildreturnData()V

    .line 363
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->updateHighlightUri()V

    .line 365
    :cond_13b
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 2

    .line 271
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSuppress:Z

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 252
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 255
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-static {v0}, Lcom/meizu/settings/utils/RingtoneExt;->getStreamTypeByRingtoneType(I)I

    move-result v0

    .line 256
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 257
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    const-string v1, "BaseRingtonePicker"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 258
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mApplyRingtone:Z

    if-eqz v0, :cond_39

    .line 260
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 261
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    const/16 v1, 0x800

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    goto :goto_39

    .line 263
    :cond_31
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 266
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->updateHighlightUri()V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 285
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 287
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "BaseRingtonePicker"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    const-string p0, "BaseRingtonePicker"

    const-string v0, "mSelectedUri  is null, return"

    .line 428
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mPlayingRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    if-nez v0, :cond_1b

    .line 432
    new-instance v0, Lcom/meizu/settings/utils/RingtoneExt;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/utils/RingtoneExt;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mPlayingRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    .line 434
    :cond_1b
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 455
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mPlayingRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/utils/RingtoneExt;->play(Landroid/net/Uri;)V

    return-void
.end method
