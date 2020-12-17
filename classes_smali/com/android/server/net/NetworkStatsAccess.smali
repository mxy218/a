.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .registers 12
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "callingUid"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 108
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 110
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    nop

    .line 111
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 112
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 113
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 115
    .local v4, "hasCarrierPrivileges":Z
    :goto_1f
    if-eqz v0, :cond_2a

    const/4 v5, -0x2

    invoke-virtual {v0, p1, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v5

    if-eqz v5, :cond_2a

    move v5, v3

    goto :goto_2b

    :cond_2a
    move v5, v2

    .line 117
    .local v5, "isDeviceOwner":Z
    :goto_2b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 118
    .local v6, "appId":I
    if-nez v4, :cond_5d

    if-nez v5, :cond_5d

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_5d

    const/16 v7, 0x431

    if-ne v6, v7, :cond_3c

    goto :goto_5d

    .line 125
    :cond_3c
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    .line 126
    .local v7, "hasAppOpsPermission":Z
    if-nez v7, :cond_5b

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4b

    goto :goto_5b

    .line 131
    :cond_4b
    if-eqz v0, :cond_56

    const/4 v8, -0x1

    invoke-virtual {v0, p1, v8}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v8

    if-eqz v8, :cond_56

    move v8, v3

    goto :goto_57

    :cond_56
    move v8, v2

    .line 133
    .local v8, "isProfileOwner":Z
    :goto_57
    if-eqz v8, :cond_5a

    .line 136
    return v3

    .line 140
    :cond_5a
    return v2

    .line 128
    .end local v8  # "isProfileOwner":Z
    :cond_5b
    :goto_5b
    const/4 v2, 0x2

    return v2

    .line 122
    .end local v7  # "hasAppOpsPermission":Z
    :cond_5d
    :goto_5d
    const/4 v2, 0x3

    return v2
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 8
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "callingUid"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    if-eqz p2, :cond_23

    .line 176
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 179
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1f

    .line 184
    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    .line 186
    .local v3, "permissionCheck":I
    if-nez v3, :cond_1e

    move v0, v4

    :cond_1e
    return v0

    .line 188
    .end local v3  # "permissionCheck":I
    :cond_1f
    if-nez v2, :cond_22

    move v0, v4

    :cond_22
    return v0

    .line 190
    .end local v1  # "appOps":Landroid/app/AppOpsManager;
    .end local v2  # "mode":I
    :cond_23
    return v0
.end method

.method public static isAccessibleToUser(III)Z
    .registers 9
    .param p0, "uid"  # I
    .param p1, "callerUid"  # I
    .param p2, "accessLevel"  # I

    .line 149
    const/4 v0, -0x5

    const/4 v1, -0x4

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_28

    const/4 v5, 0x2

    if-eq p2, v5, :cond_13

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    .line 169
    if-ne p0, p1, :cond_11

    move v3, v4

    :cond_11
    return v3

    .line 152
    :cond_12
    return v4

    .line 157
    :cond_13
    if-eq p0, v2, :cond_26

    if-eq p0, v1, :cond_26

    if-eq p0, v0, :cond_26

    const/4 v0, -0x1

    if-eq p0, v0, :cond_26

    .line 159
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_27

    :cond_26
    move v3, v4

    .line 157
    :cond_27
    return v3

    .line 163
    :cond_28
    if-eq p0, v2, :cond_38

    if-eq p0, v1, :cond_38

    if-eq p0, v0, :cond_38

    .line 165
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_39

    :cond_38
    move v3, v4

    .line 163
    :cond_39
    return v3
.end method
