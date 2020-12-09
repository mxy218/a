.class public final Lcom/android/server/location/LocationPermissionUtil;
.super Ljava/lang/Object;
.source "LocationPermissionUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesCallerReportToAppOps(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .registers 3

    .line 45
    invoke-static {p0, p1}, Lcom/android/server/location/LocationPermissionUtil;->hasPermissionLocationHardware(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 46
    invoke-static {p0, p1}, Lcom/android/server/location/LocationPermissionUtil;->hasPermissionUpdateAppOpsStats(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 45
    :goto_f
    return p0
.end method

.method private static hasPermissionLocationHardware(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .registers 4

    .line 51
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->mPid:I

    iget p1, p1, Lcom/android/server/location/CallerIdentity;->mUid:I

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static hasPermissionUpdateAppOpsStats(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .registers 4

    .line 57
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->mPid:I

    iget p1, p1, Lcom/android/server/location/CallerIdentity;->mUid:I

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
