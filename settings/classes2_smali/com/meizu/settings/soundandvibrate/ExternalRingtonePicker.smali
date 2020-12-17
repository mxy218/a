.class public Lcom/meizu/settings/soundandvibrate/ExternalRingtonePicker;
.super Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;
.source "ExternalRingtonePicker.java"


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
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHasDefaultItem:Z

    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHasSilentItem:Z

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, -0x1

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    .line 20
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v2, :cond_39

    .line 21
    iget v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-static {v2}, Landroid/media/MzRingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_39
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mExistingUri:Landroid/net/Uri;

    const-string v2, "android.intent.extra.ringtone.TITLE"

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mTitle:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_58

    const v0, 0x1040630

    .line 26
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mTitle:Ljava/lang/String;

    .line 30
    :cond_58
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mApplyRingtone:Z

    return-void
.end method
