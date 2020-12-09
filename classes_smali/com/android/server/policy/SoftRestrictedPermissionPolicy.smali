.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "SoftRestrictedPermissionPolicy.java"


# static fields
.field private static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

.field private static final FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;-><init>()V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .registers 13

    .line 128
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1833add0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1b

    const v1, 0x516a29a7

    if-eq v0, v1, :cond_11

    :cond_10
    goto :goto_25

    :cond_11
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_26

    :cond_1b
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_26

    :goto_25
    const/4 v0, -0x1

    :goto_26
    if-eqz v0, :cond_4b

    if-eq v0, v2, :cond_2d

    .line 249
    sget-object p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-object p0

    .line 216
    :cond_2d
    if-eqz p1, :cond_43

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    .line 219
    and-int/lit16 p3, p3, 0x3800

    if-eqz p3, :cond_3e

    move v3, v2

    .line 220
    :cond_3e
    invoke-static {p0, p1, p2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result p0

    .line 221
    goto :goto_45

    .line 222
    :cond_43
    nop

    .line 223
    move p0, v3

    .line 226
    :goto_45
    new-instance p1, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    invoke-direct {p1, v3, p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(ZI)V

    return-object p1

    .line 139
    :cond_4b
    if-eqz p1, :cond_99

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    .line 142
    and-int/lit16 v1, p3, 0x4000

    if-eqz v1, :cond_5d

    move v1, v2

    goto :goto_5e

    :cond_5d
    move v1, v3

    .line 143
    :goto_5e
    and-int/lit16 p3, p3, 0x3800

    if-eqz p3, :cond_63

    goto :goto_64

    :cond_63
    move v2, v3

    .line 144
    :goto_64
    invoke-static {p0, p1, p2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result p0

    .line 146
    nop

    .line 147
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result p3

    .line 152
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 153
    if-eqz v4, :cond_96

    .line 154
    array-length v5, v4

    move v6, p3

    move p3, v3

    :goto_78
    if-ge p3, v5, :cond_94

    aget-object v7, v4, p3

    .line 155
    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_91

    .line 158
    :try_start_84
    invoke-virtual {v0, v7, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_84 .. :try_end_88} :catch_90

    .line 161
    nop

    .line 163
    nop

    .line 164
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_91

    .line 159
    :catch_90
    move-exception v7

    .line 154
    :cond_91
    :goto_91
    add-int/lit8 p3, p3, 0x1

    goto :goto_78

    :cond_94
    move v3, v6

    goto :goto_97

    .line 153
    :cond_96
    move v3, p3

    .line 169
    :goto_97
    nop

    .line 170
    goto :goto_a0

    .line 171
    :cond_99
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    move p0, v3

    move v1, p0

    move v2, v1

    .line 178
    :goto_a0
    new-instance p1, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    invoke-direct {p1, v1, v3, v2, p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZZZI)V

    return-object p1
.end method

.method private static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .registers 10

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 92
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 94
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_2f

    .line 96
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_12
    if-ge v0, v2, :cond_2e

    aget-object v5, v1, v0

    .line 97
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 100
    :try_start_1e
    invoke-virtual {p0, v5, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_22} :catch_2a

    .line 103
    nop

    .line 105
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v4, v5}, Ljava/lang/Integer;->min(II)I

    move-result v4

    goto :goto_2b

    .line 101
    :catch_2a
    move-exception v5

    .line 96
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2e
    move v0, v4

    .line 110
    :cond_2f
    return v0
.end method


# virtual methods
.method public abstract canBeGranted()Z
.end method

.method public abstract getDesiredOpMode()I
.end method

.method public abstract resolveAppOp()I
.end method

.method public abstract shouldSetAppOpIfNotDefault()Z
.end method
