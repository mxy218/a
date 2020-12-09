.class public Lcom/android/server/pm/dex/ArtManagerService;
.super Landroid/content/pm/dex/IArtManager$Stub;
.source "ArtManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final BOOT_IMAGE_PROFILE_NAME:Ljava/lang/String; = "android.prof"

.field private static final DEBUG:Z

.field public static final DEXOPT_REASON_WITH_DEX_METADATA_ANNOTATION:Ljava/lang/String; = "-dm"

.field private static final TAG:Ljava/lang/String; = "ArtManagerService"

.field private static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x2

.field private static final TRON_COMPILATION_FILTER_ERROR:I = 0x0

.field private static final TRON_COMPILATION_FILTER_EVERYTHING:I = 0xb

.field private static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xa

.field private static final TRON_COMPILATION_FILTER_EXTRACT:I = 0x3

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xc

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xd

.field private static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xe

.field private static final TRON_COMPILATION_FILTER_QUICKEN:I = 0x5

.field private static final TRON_COMPILATION_FILTER_SPACE:I = 0x7

.field private static final TRON_COMPILATION_FILTER_SPACE_PROFILE:I = 0x6

.field private static final TRON_COMPILATION_FILTER_SPEED:I = 0x9

.field private static final TRON_COMPILATION_FILTER_SPEED_PROFILE:I = 0x8

.field private static final TRON_COMPILATION_FILTER_UNKNOWN:I = 0x1

.field private static final TRON_COMPILATION_FILTER_VERIFY:I = 0x4

.field private static final TRON_COMPILATION_REASON_AB_OTA:I = 0x6

.field private static final TRON_COMPILATION_REASON_BG_DEXOPT:I = 0x5

.field private static final TRON_COMPILATION_REASON_BOOT:I = 0x3

.field private static final TRON_COMPILATION_REASON_ERROR:I = 0x0

.field private static final TRON_COMPILATION_REASON_FIRST_BOOT:I = 0x2

.field private static final TRON_COMPILATION_REASON_INACTIVE:I = 0x7

.field private static final TRON_COMPILATION_REASON_INSTALL:I = 0x4

.field private static final TRON_COMPILATION_REASON_INSTALL_WITH_DEX_METADATA:I = 0x9

.field private static final TRON_COMPILATION_REASON_SHARED:I = 0x8

.field private static final TRON_COMPILATION_REASON_UNKNOWN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    const-string v0, "ArtManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    .line 97
    invoke-static {}, Lcom/android/server/pm/dex/ArtManagerService;->verifyTronLoggingConstants()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Landroid/content/pm/dex/IArtManager$Stub;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 104
    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 105
    iput-object p4, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    .line 106
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    .line 108
    const-class p1, Landroid/content/pm/dex/ArtManagerInternal;

    new-instance p2, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;-><init>(Lcom/android/server/pm/dex/ArtManagerService;Lcom/android/server/pm/dex/ArtManagerService$1;)V

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationFilterTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private checkAndroidPermissions(ILjava/lang/String;)Z
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ArtManagerService"

    const-string v2, "android.permission.READ_RUNTIME_PROFILES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 118
    const/16 v2, 0x2b

    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_29

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    .line 126
    const/4 p1, 0x0

    return p1

    .line 122
    :cond_21
    iget-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return p2

    .line 120
    :cond_29
    return p2
.end method

.method private checkShellPermissions(ILjava/lang/String;I)Z
    .registers 6

    .line 142
    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-eq p3, v1, :cond_6

    .line 143
    return v0

    .line 145
    :cond_6
    sget-boolean p3, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    const/4 v1, 0x1

    if-eqz p3, :cond_c

    .line 146
    return v1

    .line 148
    :cond_c
    if-ne p1, v1, :cond_f

    .line 150
    return v0

    .line 152
    :cond_f
    const/4 p1, 0x0

    .line 154
    :try_start_10
    iget-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p3, p2, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    .line 157
    goto :goto_18

    .line 155
    :catch_17
    move-exception p2

    .line 158
    :goto_18
    if-nez p1, :cond_1b

    .line 159
    return v0

    .line 163
    :cond_1b
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_24

    move v0, v1

    :cond_24
    return v0
.end method

.method private createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 9

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    const/4 v1, 0x2

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p4, p1, p2, p3}, Lcom/android/server/pm/Installer;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_11

    .line 264
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_f} :catch_83
    .catchall {:try_start_4 .. :try_end_f} :catchall_81

    .line 265
    :try_start_f
    monitor-exit v0

    return-void

    .line 270
    :cond_11
    nop

    .line 271
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_81

    .line 274
    invoke-static {p1, p2}, Landroid/content/pm/dex/ArtManager;->getProfileSnapshotFileForName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 276
    nop

    .line 278
    const/high16 p3, 0x10000000

    :try_start_1a
    invoke-static {p2, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    .line 279
    if-eqz p3, :cond_2f

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->valid()Z

    move-result p4

    if-nez p4, :cond_2b

    goto :goto_2f

    .line 285
    :cond_2b
    invoke-direct {p0, p1, p3, p5}, Lcom/android/server/pm/dex/ArtManagerService;->postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_5d

    .line 280
    :cond_2f
    :goto_2f
    const-string p4, "ArtManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParcelFileDescriptor.open returned an invalid descriptor for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". isNull="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4f

    const/4 p3, 0x1

    goto :goto_50

    :cond_4f
    const/4 p3, 0x0

    :goto_50
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_5d} :catch_5e

    .line 291
    :goto_5d
    goto :goto_80

    .line 287
    :catch_5e
    move-exception p3

    .line 288
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not open snapshot profile for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ArtManagerService"

    invoke-static {p4, p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 292
    :goto_80
    return-void

    .line 271
    :catchall_81
    move-exception p1

    goto :goto_89

    .line 267
    :catch_83
    move-exception p2

    .line 268
    :try_start_84
    invoke-direct {p0, p5, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_81

    throw p1
.end method

.method private destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 295
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying profile snapshot for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Installer;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_25 .. :try_end_2a} :catch_2d
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    .line 305
    goto :goto_4c

    .line 306
    :catchall_2b
    move-exception p1

    goto :goto_4e

    .line 302
    :catch_2d
    move-exception v1

    .line 303
    :try_start_2e
    const-string v2, "ArtManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy profile snapshot for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :goto_4c
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_2b

    throw p1
.end method

.method private static getCompilationFilterTronValue(Ljava/lang/String;)I
    .registers 18

    .line 598
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    sparse-switch v1, :sswitch_data_de

    :cond_20
    goto/16 :goto_c9

    :sswitch_22
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v3

    goto/16 :goto_ca

    :sswitch_2e
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v4

    goto/16 :goto_ca

    :sswitch_3a
    const-string/jumbo v1, "quicken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v11

    goto/16 :goto_ca

    :sswitch_46
    const-string v1, "everything"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v5

    goto/16 :goto_ca

    :sswitch_51
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v10

    goto/16 :goto_ca

    :sswitch_5d
    const-string/jumbo v1, "speed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v7

    goto/16 :goto_ca

    :sswitch_69
    const-string/jumbo v1, "space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v9

    goto :goto_ca

    :sswitch_74
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v15

    goto :goto_ca

    :sswitch_7e
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move/from16 v0, v16

    goto :goto_ca

    :sswitch_8a
    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v12

    goto :goto_ca

    :sswitch_95
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    goto :goto_ca

    :sswitch_a0
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v8

    goto :goto_ca

    :sswitch_ab
    const-string v1, "extract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v13

    goto :goto_ca

    :sswitch_b5
    const-string v1, "everything-profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v6

    goto :goto_ca

    :sswitch_bf
    const-string v1, "assume-verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v14

    goto :goto_ca

    :goto_c9
    const/4 v0, -0x1

    :goto_ca
    packed-switch v0, :pswitch_data_11c

    .line 616
    return v16

    .line 615
    :pswitch_ce  #0xe
    return v2

    .line 613
    :pswitch_cf  #0xd
    return v3

    .line 611
    :pswitch_d0  #0xc
    return v4

    .line 610
    :pswitch_d1  #0xb
    return v5

    .line 609
    :pswitch_d2  #0xa
    return v6

    .line 608
    :pswitch_d3  #0x9
    return v7

    .line 607
    :pswitch_d4  #0x8
    return v8

    .line 606
    :pswitch_d5  #0x7
    return v9

    .line 605
    :pswitch_d6  #0x6
    return v10

    .line 604
    :pswitch_d7  #0x5
    return v11

    .line 603
    :pswitch_d8  #0x4
    return v12

    .line 602
    :pswitch_d9  #0x3
    return v13

    .line 601
    :pswitch_da  #0x2
    return v14

    .line 600
    :pswitch_db  #0x1
    return v16

    .line 599
    :pswitch_dc  #0x0
    return v15

    nop

    :sswitch_data_de
    .sparse-switch
        -0x74ad4b37 -> :sswitch_bf
        -0x6b7d2b71 -> :sswitch_b5
        -0x4dcd237f -> :sswitch_ab
        -0x4358c9dd -> :sswitch_a0
        -0x35c83f13 -> :sswitch_95
        -0x30df7787 -> :sswitch_8a
        -0x10fa53b6 -> :sswitch_7e
        0x5c4d208 -> :sswitch_74
        0x688f106 -> :sswitch_69
        0x6890047 -> :sswitch_5d
        0x14c5f7e2 -> :sswitch_51
        0x17efcab3 -> :sswitch_46
        0x273d6b56 -> :sswitch_3a
        0x36f5967b -> :sswitch_2e
        0x71a3adf4 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_dc  #00000000
        :pswitch_db  #00000001
        :pswitch_da  #00000002
        :pswitch_d9  #00000003
        :pswitch_d8  #00000004
        :pswitch_d7  #00000005
        :pswitch_d6  #00000006
        :pswitch_d5  #00000007
        :pswitch_d4  #00000008
        :pswitch_d3  #00000009
        :pswitch_d2  #0000000a
        :pswitch_d1  #0000000b
        :pswitch_d0  #0000000c
        :pswitch_cf  #0000000d
        :pswitch_ce  #0000000e
    .end packed-switch
.end method

.method private static getCompilationReasonTronValue(Ljava/lang/String;)I
    .registers 12

    .line 576
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v0, :sswitch_data_8c

    :cond_13
    goto/16 :goto_7c

    :sswitch_15
    const-string v0, "install"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v6

    goto/16 :goto_7d

    :sswitch_20
    const-string v0, "install-dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v1

    goto :goto_7d

    :sswitch_2a
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v10

    goto :goto_7d

    :sswitch_34
    const-string v0, "inactive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v3

    goto :goto_7d

    :sswitch_3e
    const-string v0, "boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v7

    goto :goto_7d

    :sswitch_48
    const-string v0, "first-boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v8

    goto :goto_7d

    :sswitch_52
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v9

    goto :goto_7d

    :sswitch_5d
    const-string/jumbo v0, "shared"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v2

    goto :goto_7d

    :sswitch_68
    const-string v0, "ab-ota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v4

    goto :goto_7d

    :sswitch_72
    const-string v0, "bg-dexopt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move p0, v5

    goto :goto_7d

    :goto_7c
    const/4 p0, -0x1

    :goto_7d
    packed-switch p0, :pswitch_data_b6

    .line 590
    return v10

    .line 589
    :pswitch_81  #0x9
    return v1

    .line 585
    :pswitch_82  #0x8
    return v2

    .line 584
    :pswitch_83  #0x7
    return v3

    .line 583
    :pswitch_84  #0x6
    return v4

    .line 582
    :pswitch_85  #0x5
    return v5

    .line 581
    :pswitch_86  #0x4
    return v6

    .line 580
    :pswitch_87  #0x3
    return v7

    .line 579
    :pswitch_88  #0x2
    return v8

    .line 578
    :pswitch_89  #0x1
    return v9

    .line 577
    :pswitch_8a  #0x0
    return v10

    nop

    :sswitch_data_8c
    .sparse-switch
        -0x754fea3c -> :sswitch_72
        -0x54fec890 -> :sswitch_68
        -0x35db539b -> :sswitch_5d
        -0x10fa53b6 -> :sswitch_52
        -0xc5e4811 -> :sswitch_48
        0x2e3af2 -> :sswitch_3e
        0x1785c6b -> :sswitch_34
        0x5c4d208 -> :sswitch_2a
        0x35aae5fb -> :sswitch_20
        0x74ae259b -> :sswitch_15
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_8a  #00000000
        :pswitch_89  #00000001
        :pswitch_88  #00000002
        :pswitch_87  #00000003
        :pswitch_86  #00000004
        :pswitch_85  #00000005
        :pswitch_84  #00000006
        :pswitch_83  #00000007
        :pswitch_82  #00000008
        :pswitch_81  #00000009
    .end packed-switch
.end method

.method private getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 516
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_17

    .line 517
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_17
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 520
    const/4 v1, 0x0

    :goto_20
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    .line 521
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3c

    .line 522
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 526
    :cond_3f
    return-object v0
.end method

.method static synthetic lambda$postError$0(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .registers 4

    .line 353
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 356
    goto :goto_1b

    .line 354
    :catch_4
    move-exception p0

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to callback after profile snapshot for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArtManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :goto_1b
    return-void
.end method

.method static synthetic lambda$postSuccess$1(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 6

    .line 370
    const-string v0, "ArtManagerService"

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 371
    invoke-interface {p1, p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_28

    .line 373
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The snapshot FD became invalid before posting the result for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2e
    .catchall {:try_start_2 .. :try_end_28} :catchall_2c

    .line 381
    :goto_28
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 382
    goto :goto_44

    .line 381
    :catchall_2c
    move-exception p1

    goto :goto_45

    .line 377
    :catch_2e
    move-exception p1

    .line 378
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call onSuccess after profile snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_2c

    goto :goto_28

    .line 383
    :goto_44
    return-void

    .line 381
    :goto_45
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V
    .registers 6

    .line 347
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_22
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;

    invoke-direct {v1, p1, p3, p2}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$_rD0Y6OPSJHMdjTIOtucoGQ1xag;-><init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method private postSuccess(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 6

    .line 362
    sget-boolean v0, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully snapshot profile for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/server/pm/dex/-$$Lambda$ArtManagerService$MEVzU-orlv4msZVF-bA5NLti04g;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method private snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 12

    .line 209
    nop

    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/dex/ArtManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    .line 221
    goto :goto_c

    .line 219
    :catch_a
    move-exception v2

    move-object v2, v0

    .line 222
    :goto_c
    if-nez v2, :cond_12

    .line 223
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 224
    return-void

    .line 227
    :cond_12
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    nop

    .line 229
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v3

    .line 230
    const/4 v4, 0x1

    if-nez v1, :cond_40

    if-eqz v3, :cond_40

    .line 231
    array-length v5, v3

    sub-int/2addr v5, v4

    :goto_2a
    if-ltz v5, :cond_40

    .line 232
    aget-object v6, v3, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 233
    nop

    .line 234
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 235
    move v1, v4

    goto :goto_40

    .line 231
    :cond_3d
    add-int/lit8 v5, v5, -0x1

    goto :goto_2a

    .line 239
    :cond_40
    :goto_40
    if-nez v1, :cond_46

    .line 240
    invoke-direct {p0, p3, p1, v4}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 241
    return-void

    .line 245
    :cond_46
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 246
    if-gez v6, :cond_6b

    .line 247
    const/4 p2, 0x2

    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/pm/dex/ArtManagerService;->postError(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;I)V

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AppId is -1 for package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArtManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_6b
    invoke-static {v0}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 255
    invoke-static {v0}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V
    .registers 10

    .line 331
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "BOOTCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 332
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 331
    const-string v1, ":"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 335
    const-string v3, "android"

    const-string v4, "android.prof"

    const/4 v6, -0x1

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/ArtManagerService;->createProfileSnapshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 338
    const-string p1, "android"

    const-string v0, "android.prof"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/dex/ArtManagerService;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private static verifyTronLoggingConstants()V
    .registers 4

    .line 621
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 622
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 623
    invoke-static {v1}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v2

    .line 624
    if-eqz v2, :cond_16

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compilation reason not configured for TRON logging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_2d
    return-void
.end method


# virtual methods
.method public clearAppProfiles(Landroid/content/pm/PackageParser$Package;)V
    .registers 7

    .line 445
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    .line 447
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    iget-object v3, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/Installer;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_19} :catch_1d

    .line 446
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 452
    :cond_1c
    goto :goto_27

    .line 450
    :catch_1d
    move-exception p1

    .line 451
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ArtManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_27
    return-void
.end method

.method public compileLayouts(Landroid/content/pm/PackageParser$Package;)Z
    .registers 10

    .line 479
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 480
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 481
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/code_cache/compiled_view.dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v4

    if-nez v4, :cond_6f

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 484
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isDefaultToDeviceProtectedStorage()Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_6f

    .line 492
    :cond_2d
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compiling layouts in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_70

    .line 496
    :try_start_57
    iget-object v6, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_6a

    .line 497
    :try_start_5a
    iget-object v7, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v2, v1, v3, p1}, Lcom/android/server/pm/Installer;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_67

    .line 501
    :try_start_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_70

    .line 497
    return p1

    .line 499
    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 501
    :catchall_6a
    move-exception p1

    :try_start_6b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_70

    .line 490
    :cond_6f
    :goto_6f
    return v0

    .line 504
    :catchall_70
    move-exception p1

    .line 505
    const-string v1, "PackageManager"

    const-string v2, "Failed to compile layouts"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    return v0
.end method

.method public dumpProfiles(Landroid/content/pm/PackageParser$Package;)V
    .registers 10

    .line 459
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 461
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_12
    if-ltz v2, :cond_31

    .line 463
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 464
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 465
    iget-object v5, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8 .. :try_end_23} :catch_32

    .line 466
    :try_start_23
    iget-object v6, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v7, v4, v3}, Lcom/android/server/pm/Installer;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 467
    monitor-exit v5

    .line 462
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 467
    :catchall_2e
    move-exception p1

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_30 .. :try_end_31} :catch_32

    .line 471
    :cond_31
    goto :goto_3a

    .line 469
    :catch_32
    move-exception p1

    .line 470
    const-string v0, "ArtManagerService"

    const-string v1, "Failed to dump profiles"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    :goto_3a
    return-void
.end method

.method public isRuntimeProfilingEnabled(ILjava/lang/String;)Z
    .registers 6

    .line 311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 312
    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_10

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 313
    return v1

    .line 316
    :cond_10
    const-string p2, "dalvik.vm.usejitprofiles"

    if-eqz p1, :cond_47

    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 320
    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p1, :cond_1f

    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-eqz p1, :cond_2e

    .line 321
    :cond_1f
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 322
    const-string p1, "dalvik.vm.profilebootimage"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 320
    :goto_2f
    return v0

    .line 324
    :cond_30
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid profile type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 318
    :cond_47
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public prepareAppProfiles(Landroid/content/pm/PackageParser$Package;IZ)V
    .registers 16

    .line 394
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 395
    if-gez p2, :cond_21

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid user id: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArtManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 399
    :cond_21
    if-gez v0, :cond_3a

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid app id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArtManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 404
    :cond_3a
    :try_start_3a
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->getPackageProfileNames(Landroid/content/pm/PackageParser$Package;)Landroid/util/ArrayMap;

    move-result-object v8

    .line 405
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v9, v1

    :goto_45
    if-ltz v9, :cond_a3

    .line 406
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 407
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 408
    nop

    .line 412
    const/4 v1, 0x0

    if-eqz p3, :cond_6b

    .line 413
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 414
    if-nez v2, :cond_65

    goto :goto_69

    :cond_65
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_69
    move-object v7, v1

    goto :goto_6c

    .line 412
    :cond_6b
    move-object v7, v1

    .line 416
    :goto_6c
    iget-object v11, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v11
    :try_end_6f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3a .. :try_end_6f} :catch_a4

    .line 417
    :try_start_6f
    iget-object v1, p0, Lcom/android/server/pm/dex/ArtManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v3, p2

    move v4, v0

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Installer;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 419
    if-nez v1, :cond_9c

    .line 420
    const-string v1, "ArtManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare profile for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_9c
    monitor-exit v11

    .line 405
    add-int/lit8 v9, v9, -0x1

    goto :goto_45

    .line 423
    :catchall_a0
    move-exception p2

    monitor-exit v11
    :try_end_a2
    .catchall {:try_start_6f .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw p2
    :try_end_a3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a2 .. :try_end_a3} :catch_a4

    .line 427
    :cond_a3
    goto :goto_bd

    .line 425
    :catch_a4
    move-exception p2

    .line 426
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to prepare profile for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ArtManagerService"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :goto_bd
    return-void
.end method

.method public prepareAppProfiles(Landroid/content/pm/PackageParser$Package;[IZ)V
    .registers 6

    .line 435
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_c

    .line 436
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/pm/dex/ArtManagerService;->prepareAppProfiles(Landroid/content/pm/PackageParser$Package;IZ)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    :cond_c
    return-void
.end method

.method public snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V
    .registers 8

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 173
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/dex/ArtManagerService;->checkShellPermissions(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 174
    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/dex/ArtManagerService;->checkAndroidPermissions(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 176
    const/4 p1, 0x2

    :try_start_11
    invoke-interface {p4, p1}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 178
    goto :goto_16

    .line 177
    :catch_15
    move-exception p1

    .line 179
    :goto_16
    return-void

    .line 183
    :cond_17
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 186
    :goto_1f
    if-nez v0, :cond_27

    .line 187
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 188
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 192
    :cond_27
    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/dex/ArtManagerService;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_59

    .line 196
    sget-boolean p1, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz p1, :cond_4f

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested snapshot for "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ":"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "ArtManagerService"

    invoke-static {p5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_4f
    if-eqz v0, :cond_55

    .line 201
    invoke-direct {p0, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotBootImageProfile(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    goto :goto_58

    .line 203
    :cond_55
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/pm/dex/ArtManagerService;->snapshotAppProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;)V

    .line 205
    :goto_58
    return-void

    .line 193
    :cond_59
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Runtime profiling is not enabled for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
