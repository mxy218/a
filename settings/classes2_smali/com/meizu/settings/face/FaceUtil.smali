.class public Lcom/meizu/settings/face/FaceUtil;
.super Ljava/lang/Object;
.source "FaceUtil.java"


# direct methods
.method public static clearFaceData(Landroid/content/Context;)V
    .registers 3

    .line 211
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->isFaceDataExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    .line 212
    invoke-static {p0, v0}, Lcom/meizu/settings/face/FaceUtil;->updateFaceRecognitonAddedDataState(Landroid/content/Context;Z)V

    const-string v1, "mz_face_unlock"

    .line 213
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/face/FaceUtil;->setFaceUnlock(Landroid/content/Context;ZLjava/lang/String;)V

    const-string v1, "mz_face_unlock_app"

    .line 214
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/face/FaceUtil;->setFaceUnlock(Landroid/content/Context;ZLjava/lang/String;)V

    const-string v1, "mz_face_unlock_document"

    .line 215
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/face/FaceUtil;->setFaceUnlock(Landroid/content/Context;ZLjava/lang/String;)V

    .line 216
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 217
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->getMzFaceAllowPrivateNotification(Landroid/content/Context;)I

    move-result v0

    .line 218
    invoke-static {p0, v0}, Lcom/meizu/settings/face/FaceUtil;->updateMzFaceAllowPrivateNotification(Landroid/content/Context;I)V

    const-string v1, "FaceUtil"

    .line 219
    invoke-static {p0, v1, v0}, Lcom/meizu/settings/face/FaceUtil;->reportShowNotificationOnLockscreenData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 221
    :cond_2b
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->deleteFaceMetadatas()V

    :cond_33
    return-void
.end method

.method public static getHaveFaceData(Landroid/content/Context;)Z
    .registers 3

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_face_management_added_data"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static getMzFaceAllowPrivateNotification(Landroid/content/Context;)I
    .registers 6

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const/4 v3, 0x2

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v3

    .line 150
    :goto_17
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->supportFaceRecognition(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 151
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 152
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->getHaveFaceData(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_4d

    .line 155
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mz_face_allow_private_notification_before_addface"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_4d

    .line 166
    :cond_43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "mz_face_allow_private_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :goto_4d
    move v0, v2

    .line 169
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MzFaceAllowPrivateNotification value:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "FaceUtil"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_64
    invoke-static {v0, v1, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method public static isFaceDataExist(Landroid/content/Context;)Z
    .registers 3

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_face_management_added_data"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static isFaceRecognitionEnableForAppLock(Landroid/content/Context;)Z
    .registers 3

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_face_unlock_app"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static isFaceRecognitionEnableForDocumentLock(Landroid/content/Context;)Z
    .registers 3

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_face_unlock_document"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z
    .registers 2

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_face_allow_private_notification_after_addface"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static reportShowNotificationOnLockscreenData(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_c

    :cond_6
    if-ne p2, v1, :cond_9

    goto :goto_c

    :cond_9
    if-ne p2, v0, :cond_4

    const/4 v0, 0x0

    .line 187
    :goto_c
    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    .line 188
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "show_notification_on_lockscreen"

    .line 187
    invoke-virtual {p0, v0, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setFaceUnlock(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 3

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static settingsOnLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)V
    .registers 3

    .line 137
    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->getHaveFaceData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "mz_face_allow_private_notification_after_addface"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_10
    return-void
.end method

.method public static supportFaceRecognition(Landroid/content/Context;)Z
    .registers 2

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "flyme.face.facerecognition"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static updateFaceRecognitonAddedDataState(Landroid/content/Context;Z)V
    .registers 3

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_face_management_added_data"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static updateMzFaceAllowPrivateNotification(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 130
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_face_allow_private_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static updateSettingsLockScreenAllowPrivateNotificationBefore(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 123
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_face_allow_private_notification_before_addface"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
