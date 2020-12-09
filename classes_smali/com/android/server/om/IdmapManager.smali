.class Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# static fields
.field private static final FEATURE_FLAG_IDMAP2:Z = true

.field private static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field private final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const/4 v1, 0x1

    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_16

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    move v1, v0

    .line 56
    :goto_15
    goto :goto_18

    .line 53
    :catch_16
    move-exception v0

    .line 55
    nop

    .line 58
    :goto_18
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 67
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    .line 68
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getInstance()Lcom/android/server/om/IdmapDaemon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 69
    return-void
.end method

.method private calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I
    .registers 6

    .line 172
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 173
    nop

    .line 176
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 178
    const/16 p1, 0x11

    goto :goto_13

    .line 176
    :cond_12
    const/4 p1, 0x1

    .line 182
    :goto_13
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 183
    or-int/lit8 p1, p1, 0x4

    return p1

    .line 187
    :cond_1c
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 188
    or-int/lit8 p1, p1, 0x8

    return p1

    .line 192
    :cond_25
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 193
    or-int/lit8 p1, p1, 0x20

    return p1

    .line 197
    :cond_2e
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 198
    or-int/lit8 p1, p1, 0x40

    return p1

    .line 203
    :cond_37
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProductServices()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 204
    return p1

    .line 208
    :cond_3e
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 209
    or-int/lit8 p1, p1, 0x2

    return p1

    .line 212
    :cond_47
    return p1
.end method

.method private enforceOverlayable(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    .line 149
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 150
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_a

    .line 152
    return v1

    .line 155
    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 159
    sget-boolean p1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return p1

    .line 164
    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method private getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/IdmapDaemon;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 131
    :catch_7
    move-exception p2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get idmap path for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    const-string p2, "OverlayManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .registers 13

    .line 77
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    .line 78
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 82
    const/4 v8, 0x0

    :try_start_14
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v4

    .line 83
    invoke-direct {p0, p2}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    .line 84
    iget-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p1, v7, v4, v5, p3}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;IZI)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_26

    .line 85
    return p2

    .line 87
    :cond_26
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object v2, v0

    move-object v3, v7

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_34

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    move p2, v8

    :goto_33
    return p2

    .line 93
    :catch_34
    move-exception p1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to generate idmap for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    const-string p2, "OverlayManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v8
.end method

.method idmapExists(Landroid/content/om/OverlayInfo;)Z
    .registers 4

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget p1, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method idmapExists(Landroid/content/pm/PackageInfo;I)Z
    .registers 4

    .line 122
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/IdmapManager;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    .line 122
    return p1
.end method

.method removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .registers 5

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 111
    :catch_9
    move-exception p2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to remove idmap for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverlayManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 p1, 0x0

    return p1
.end method
