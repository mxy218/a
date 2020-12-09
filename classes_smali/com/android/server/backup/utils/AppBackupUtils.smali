.class public Lcom/android/server/backup/utils/AppBackupUtils;
.super Ljava/lang/Object;
.source "AppBackupUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final systemPackagesWhitelistedForAllUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-string v0, "@pm@"

    const-string v1, "android"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/AppBackupUtils;->systemPackagesWhitelistedForAllUsers:Ljava/util/Set;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 194
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 198
    :cond_13
    return v1
.end method

.method static appIsDisabled(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 3

    .line 151
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0, v0, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z

    move-result p0

    return p0
.end method

.method static appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result p1

    .line 159
    const/4 p2, 0x1

    if-eqz p1, :cond_15

    const/4 p0, 0x2

    if-eq p1, p0, :cond_14

    const/4 p0, 0x3

    if-eq p1, p0, :cond_14

    const/4 p0, 0x4

    if-eq p1, p0, :cond_14

    .line 167
    const/4 p0, 0x0

    return p0

    .line 163
    :cond_14
    return p2

    .line 165
    :cond_15
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr p0, p2

    return p0
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 3

    .line 68
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 69
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 68
    invoke-static {p0, v0, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z

    move-result p0

    return p0
.end method

.method static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 77
    return v1

    .line 81
    :cond_a
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 83
    if-eqz p2, :cond_1f

    sget-object v0, Lcom/android/server/backup/utils/AppBackupUtils;->systemPackagesWhitelistedForAllUsers:Ljava/util/Set;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 84
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 85
    return v1

    .line 89
    :cond_1f
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 90
    return v1

    .line 95
    :cond_24
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 96
    return v1

    .line 100
    :cond_2f
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 101
    return v1

    .line 104
    :cond_36
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManagerInternal;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 206
    invoke-static {p0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z
    .registers 6

    .line 123
    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2, p1, v0, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 125
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    invoke-static {p2, p3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 127
    invoke-static {p2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 128
    invoke-static {p2, p3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p2
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_19} :catch_4c

    if-eqz p2, :cond_1c

    goto :goto_4b

    .line 131
    :cond_1c
    if-eqz p0, :cond_49

    .line 133
    :try_start_1e
    const-string p2, "AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport"

    .line 134
    invoke-virtual {p0, p2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object p0

    .line 136
    nop

    .line 137
    invoke-static {p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p2

    .line 136
    invoke-interface {p0, p1, p2}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_2d} :catch_4c

    return p0

    .line 138
    :catch_2e
    move-exception p0

    .line 139
    :try_start_2f
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to ask about eligibility: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_49} :catch_4c

    .line 143
    :cond_49
    const/4 p0, 0x1

    return p0

    .line 129
    :cond_4b
    :goto_4b
    return v1

    .line 144
    :catch_4c
    move-exception p0

    .line 145
    return v1
.end method

.method public static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 184
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .registers 10

    .line 229
    const/4 v0, 0x0

    if-eqz p1, :cond_55

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_55

    .line 238
    :cond_8
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 242
    return v2

    .line 246
    :cond_11
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 247
    return v0

    .line 250
    :cond_18
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 251
    if-nez v1, :cond_25

    .line 252
    const-string p0, "BackupManagerService"

    const-string/jumbo p1, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v0

    .line 262
    :cond_25
    array-length v3, p0

    .line 263
    if-ne v3, v2, :cond_31

    .line 269
    aget-object p0, p0, v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 274
    :cond_31
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 275
    array-length p2, p1

    .line 278
    move v1, v0

    :goto_37
    if-ge v1, v3, :cond_54

    .line 279
    nop

    .line 280
    move v4, v0

    :goto_3b
    if-ge v4, p2, :cond_4d

    .line 281
    aget-object v5, p0, v1

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 282
    nop

    .line 283
    move v4, v2

    goto :goto_4e

    .line 280
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_4d
    move v4, v0

    .line 286
    :goto_4e
    if-nez v4, :cond_51

    .line 287
    return v0

    .line 278
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 291
    :cond_54
    return v2

    .line 230
    :cond_55
    :goto_55
    return v0
.end method