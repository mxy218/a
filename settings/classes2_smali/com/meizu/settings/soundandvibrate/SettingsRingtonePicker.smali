.class public Lcom/meizu/settings/soundandvibrate/SettingsRingtonePicker;
.super Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;
.source "SettingsRingtonePicker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;-><init>()V

    return-void
.end method


# virtual methods
.method onInitArguments()V
    .registers 5

    .line 12
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHasDefaultItem:Z

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHasSilentItem:Z

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, -0x1

    .line 17
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    .line 19
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v2, :cond_35

    .line 20
    iget v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-static {v2}, Landroid/media/MzRingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_35
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 23
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mExistingUri:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.TITLE"

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mTitle:Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_54

    const v2, 0x1040630

    .line 26
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mTitle:Ljava/lang/String;

    .line 29
    :cond_54
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mApplyRingtone:Z

    .line 30
    sget-object v1, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->EXTRA_PREFRENCE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mParentKey:Ljava/lang/String;

    return-void
.end method
