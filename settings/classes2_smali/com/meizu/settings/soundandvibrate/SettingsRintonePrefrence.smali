.class public Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;
.super Landroid/preference/RingtonePreference;
.source "SettingsRintonePrefrence.java"


# static fields
.field public static EXTRA_PREFRENCE_KEY:Ljava/lang/String; = "preference_key"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mType:I

.field protected mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mUserId:I

    .line 28
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mContext:Landroid/content/Context;

    .line 29
    sget-object v1, Lcom/android/settings/R$styleable;->SettingsRingtonePreference:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mType:I

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private prepareRingtonePickerBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 56
    invoke-virtual {p0}, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getShowSilent()Z

    move-result v0

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mType:I

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 61
    sget-object v0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->EXTRA_PREFRENCE_KEY:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 9

    .line 48
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    invoke-direct {p0, v2}, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->prepareRingtonePickerBundle(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mContext:Landroid/content/Context;

    const-class v1, Lcom/meizu/settings/soundandvibrate/SettingsRingtonePicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iget v7, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mUserId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 76
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x1020016

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x41700000  # 15.0f

    .line 83
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, -0x1000000

    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x1020010

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mType:I

    invoke-static {v0, p0}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .registers 3

    .line 71
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public setUserId(I)V
    .registers 3

    .line 37
    iput p1, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mUserId:I

    .line 38
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SettingsRintonePrefrence;->mContext:Landroid/content/Context;

    return-void
.end method
