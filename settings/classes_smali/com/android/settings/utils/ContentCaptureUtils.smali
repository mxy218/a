.class public final Lcom/android/settings/utils/ContentCaptureUtils;
.super Ljava/lang/Object;
.source "ContentCaptureUtils.java"


# static fields
.field private static final MY_USER_ID:I

.field private static final TAG:Ljava/lang/String; = "ContentCaptureUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/utils/ContentCaptureUtils;->MY_USER_ID:I

    return-void
.end method

.method public static getServiceSettingsComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 56
    :try_start_0
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getServiceSettingsComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 58
    sget-object v1, Lcom/android/settings/utils/ContentCaptureUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEnabledForUser(Landroid/content/Context;)Z
    .registers 4

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/utils/ContentCaptureUtils;->MY_USER_ID:I

    const/4 v1, 0x1

    const-string v2, "content_capture_enabled"

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static isFeatureAvailable()Z
    .registers 1

    const-string v0, "content_capture"

    .line 49
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static setEnabledForUser(Landroid/content/Context;Z)V
    .registers 4

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 43
    sget v0, Lcom/android/settings/utils/ContentCaptureUtils;->MY_USER_ID:I

    const-string v1, "content_capture_enabled"

    .line 42
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
