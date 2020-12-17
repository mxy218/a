.class public Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;
.super Landroid/preference/ListPreference;
.source "NotificationStatusbarSettingsPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->refresh()V

    .line 36
    invoke-virtual {p0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private getMatchIndex(I)I
    .registers 5

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    .line 86
    :goto_9
    array-length v1, p0

    const/4 v2, -0x1

    if-ge v0, v1, :cond_19

    .line 87
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    move v0, v2

    :goto_1a
    if-ne v0, v2, :cond_35

    .line 93
    array-length p0, p0

    add-int/lit8 v0, p0, -0x1

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateToggleLockScreenShowNotificationContentList roll back defualt index = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationStatusbarSettingsPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return v0
.end method

.method private refresh()V
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "mz_face_unlock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 64
    :goto_f
    iget-object v3, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mz_face_unlock_screen_launcher"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1a

    move v1, v2

    :cond_1a
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    const v2, 0x7f0300ce

    goto :goto_25

    :cond_22
    const v2, 0x7f0300d1

    :goto_25
    if-eqz v0, :cond_2d

    if-eqz v1, :cond_2d

    const v0, 0x7f0300cc

    goto :goto_30

    :cond_2d
    const v0, 0x7f0300cd

    .line 72
    :goto_30
    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 73
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 75
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->getMzFaceAllowPrivateNotification(Landroid/content/Context;)I

    move-result v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationStatusbarSettingsPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0, v0}, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->getMatchIndex(I)I

    move-result v0

    .line 78
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 79
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    const-string p1, "NotificationStatusbarSettingsPreference"

    const/4 v0, 0x0

    .line 43
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/meizu/settings/face/FaceUtil;->updateMzFaceAllowPrivateNotification(Landroid/content/Context;I)V

    .line 45
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/settings/face/FaceUtil;->isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2c

    .line 46
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/settings/face/FaceUtil;->settingsOnLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)V

    .line 47
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/meizu/settings/face/FaceUtil;->updateSettingsLockScreenAllowPrivateNotificationBefore(Landroid/content/Context;I)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_2c

    :catch_27
    const-string p2, "onPreferenceChange set mode error"

    .line 50
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2c
    :goto_2c
    iget-object p2, p0, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v0}, Lcom/meizu/settings/face/FaceUtil;->reportShowNotificationOnLockscreenData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 54
    invoke-direct {p0, v0}, Lcom/meizu/settings/notificationstatusbar/NotificationStatusbarSettingsPreference;->getMatchIndex(I)I

    move-result p2

    .line 55
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 56
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange: Entry: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",Summary:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
