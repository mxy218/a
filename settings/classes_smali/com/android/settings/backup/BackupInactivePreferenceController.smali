.class public Lcom/android/settings/backup/BackupInactivePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BackupInactivePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 3

    .line 31
    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupServiceActive()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 p0, 0x1

    return p0

    .line 34
    :cond_f
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "backup_inactive"

    invoke-static {p0, v0}, Lcom/android/settings/backup/PrivacySettingsUtils;->isInvisibleKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x3

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
