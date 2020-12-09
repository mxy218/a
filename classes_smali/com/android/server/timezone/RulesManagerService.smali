.class public final Lcom/android/server/timezone/RulesManagerService;
.super Landroid/app/timezone/IRulesManager$Stub;
.source "RulesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$InstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$Lifecycle;
    }
.end annotation


# static fields
.field static final DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field static final REQUIRED_QUERY_PERMISSION:Ljava/lang/String; = "android.permission.QUERY_TIME_ZONE_RULES"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field static final REQUIRED_UPDATER_PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManagerService"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

.field private final mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

.field private final mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageTracker:Lcom/android/server/timezone/PackageTracker;

.field private final mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 70
    new-instance v0, Landroid/app/timezone/DistroFormatVersion;

    .line 72
    invoke-static {}, Llibcore/timezone/TzDataSetVersion;->currentFormatMajorVersion()I

    move-result v1

    .line 73
    invoke-static {}, Llibcore/timezone/TzDataSetVersion;->currentFormatMinorVersion()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/timezone/DistroFormatVersion;-><init>(II)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/RulesManagerIntentHelper;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 125
    invoke-direct {p0}, Landroid/app/timezone/IRulesManager$Stub;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    .line 127
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 128
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

    .line 129
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    .line 130
    iput-object p5, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    .line 131
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .registers 1

    .line 64
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 64
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService;->mIntentHelper:Lcom/android/server/timezone/RulesManagerIntentHelper;

    return-object p0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .registers 8

    .line 110
    new-instance v3, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;

    invoke-direct {v3, p0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-static {}, Llibcore/timezone/TimeZoneDataFiles;->getRuntimeModuleTzVersionFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/io/File;

    invoke-static {}, Llibcore/timezone/TimeZoneDataFiles;->getDataTimeZoneRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v6, Lcom/android/server/timezone/RulesManagerService;

    .line 117
    invoke-static {p0}, Lcom/android/server/timezone/PackageTracker;->create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v4

    new-instance v5, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    const-string/jumbo p0, "timezone.RulesManagerService"

    invoke-direct {v5, p0, v0, v1}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    move-object v0, v6

    move-object v1, v3

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezone/RulesManagerService;-><init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/RulesManagerIntentHelper;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V

    .line 113
    return-object v6
.end method

.method private static createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;
    .registers 5

    .line 565
    :try_start_0
    invoke-static {p0}, Lcom/android/server/timezone/CheckToken;->fromByteArray([B)Lcom/android/server/timezone/CheckToken;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_6

    .line 569
    nop

    .line 570
    return-object p0

    .line 566
    :catch_6
    move-exception v0

    .line 567
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read token bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static distroStatusToString(I)Ljava/lang/String;
    .registers 2

    .line 574
    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 581
    const-string p0, "Unknown"

    return-object p0

    .line 578
    :cond_9
    const-string p0, "Installed"

    return-object p0

    .line 576
    :cond_c
    const-string p0, "None"

    return-object p0
.end method

.method private getRulesStateInternal()Landroid/app/timezone/RulesState;
    .registers 19

    .line 147
    move-object/from16 v1, p0

    monitor-enter p0

    .line 150
    const/4 v2, 0x0

    :try_start_4
    iget-object v0, v1, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->readBaseVersion()Llibcore/timezone/TzDataSetVersion;

    move-result-object v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_87
    .catchall {:try_start_4 .. :try_end_a} :catchall_85

    .line 154
    nop

    .line 159
    nop

    .line 160
    nop

    .line 162
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_10
    iget-object v0, v1, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0
    :try_end_16
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_10 .. :try_end_16} :catch_2f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_2f
    .catchall {:try_start_10 .. :try_end_16} :catchall_85

    .line 163
    if-nez v0, :cond_1c

    .line 164
    nop

    .line 165
    move-object v7, v2

    move v0, v4

    goto :goto_27

    .line 167
    :cond_1c
    nop

    .line 168
    :try_start_1d
    new-instance v7, Landroid/app/timezone/DistroRulesVersion;

    iget-object v8, v0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v0, v0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v7, v8, v0}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_26
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_1d .. :try_end_26} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_2c
    .catchall {:try_start_1d .. :try_end_26} :catchall_85

    move v0, v5

    .line 174
    :goto_27
    move/from16 v16, v0

    move-object/from16 v17, v7

    goto :goto_3d

    .line 172
    :catch_2c
    move-exception v0

    move v7, v5

    goto :goto_31

    :catch_2f
    move-exception v0

    move v7, v6

    .line 173
    :goto_31
    :try_start_31
    const-string/jumbo v8, "timezone.RulesManagerService"

    const-string v9, "Failed to read installed distro."

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v17, v2

    move/from16 v16, v7

    .line 176
    :goto_3d
    iget-object v0, v1, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_85

    .line 179
    nop

    .line 180
    nop

    .line 181
    if-nez v13, :cond_77

    .line 184
    :try_start_47
    iget-object v0, v1, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;

    move-result-object v0

    .line 185
    if-nez v0, :cond_51

    .line 186
    move v6, v4

    goto :goto_65

    .line 187
    :cond_51
    iget-boolean v4, v0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z
    :try_end_53
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_47 .. :try_end_53} :catch_6b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_53} :catch_6b
    .catchall {:try_start_47 .. :try_end_53} :catchall_85

    if-eqz v4, :cond_57

    .line 188
    move v6, v5

    goto :goto_65

    .line 191
    :cond_57
    const/4 v4, 0x3

    .line 192
    :try_start_58
    iget-object v0, v0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    .line 193
    new-instance v5, Landroid/app/timezone/DistroRulesVersion;

    iget-object v6, v0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v0, v0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-direct {v5, v6, v0}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_63
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_58 .. :try_end_63} :catch_68
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_63} :catch_68
    .catchall {:try_start_58 .. :try_end_63} :catchall_85

    move v6, v4

    move-object v2, v5

    .line 199
    :goto_65
    move-object v15, v2

    move v14, v6

    goto :goto_79

    .line 197
    :catch_68
    move-exception v0

    move v6, v4

    goto :goto_6c

    :catch_6b
    move-exception v0

    .line 198
    :goto_6c
    :try_start_6c
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to read staged distro."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v15, v2

    move v14, v6

    goto :goto_79

    .line 181
    :cond_77
    move-object v15, v2

    move v14, v6

    .line 201
    :goto_79
    new-instance v0, Landroid/app/timezone/RulesState;

    iget-object v11, v3, Llibcore/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    sget-object v12, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V

    monitor-exit p0

    return-object v0

    .line 204
    :catchall_85
    move-exception v0

    goto :goto_92

    .line 151
    :catch_87
    move-exception v0

    .line 152
    const-string/jumbo v3, "timezone.RulesManagerService"

    const-string v4, "Failed to read base rules version"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    monitor-exit p0

    return-object v2

    .line 204
    :goto_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_6c .. :try_end_93} :catchall_85

    throw v0
.end method

.method private sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    .registers 4

    .line 419
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/timezone/ICallback;->onFinished(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 422
    goto :goto_d

    .line 420
    :catch_4
    move-exception p1

    .line 421
    const-string/jumbo p2, "timezone.RulesManagerService"

    const-string v0, "Unable to notify observer of result"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    :goto_d
    return-void
.end method

.method private static stagedOperationToString(I)Ljava/lang/String;
    .registers 2

    .line 586
    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 595
    const-string p0, "Unknown"

    return-object p0

    .line 592
    :cond_c
    const-string p0, "Install"

    return-object p0

    .line 590
    :cond_f
    const-string p0, "Uninstall"

    return-object p0

    .line 588
    :cond_12
    const-string p0, "None"

    return-object p0
.end method

.method private static toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 600
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 439
    iget-object p1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v0, "timezone.RulesManagerService"

    invoke-interface {p1, v0, p2}, Lcom/android/server/timezone/PermissionHelper;->checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 440
    return-void

    .line 443
    :cond_c
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object p1

    .line 444
    const-string v0, "Active rules version (ICU, ZoneInfoDB, TimeZoneFinder): "

    const-string v1, ","

    if-eqz p3, :cond_166

    array-length v2, p3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_166

    .line 447
    const/4 v2, 0x0

    aget-object v3, p3, v2

    const-string v4, "-format_state"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_166

    const/4 v3, 0x1

    aget-object v4, p3, v3

    if-eqz v4, :cond_166

    .line 448
    aget-object p3, p3, v3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    array-length v3, p3

    :goto_31
    if-ge v2, v3, :cond_165

    aget-char v4, p3, v2

    .line 449
    const/16 v5, 0x69

    const-string v6, "<None>"

    const-string v7, "Unknown"

    if-eq v4, v5, :cond_13b

    const/16 v5, 0x74

    if-eq v4, v5, :cond_115

    const/16 v5, 0x6f

    if-eq v4, v5, :cond_f5

    const/16 v5, 0x70

    if-eq v4, v5, :cond_d4

    packed-switch v4, :pswitch_data_1ce

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_161

    .line 470
    :pswitch_62  #0x63
    nop

    .line 471
    if-eqz p1, :cond_6d

    .line 472
    invoke-virtual {p1}, Landroid/app/timezone/RulesState;->getDistroStatus()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->distroStatusToString(I)Ljava/lang/String;

    move-result-object v7

    .line 474
    :cond_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current install state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    goto/16 :goto_161

    .line 461
    :pswitch_83  #0x62
    nop

    .line 462
    if-eqz p1, :cond_8a

    .line 463
    invoke-virtual {p1}, Landroid/app/timezone/RulesState;->getBaseRulesVersion()Ljava/lang/String;

    move-result-object v7

    .line 465
    :cond_8a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Base rules version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    goto/16 :goto_161

    .line 521
    :pswitch_a0  #0x61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-static {}, Llibcore/timezone/ZoneInfoDB;->getInstance()Llibcore/timezone/ZoneInfoDB$TzData;

    move-result-object v5

    invoke-virtual {v5}, Llibcore/timezone/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v5

    invoke-virtual {v5}, Llibcore/timezone/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 521
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    goto/16 :goto_161

    .line 452
    :cond_d4
    nop

    .line 453
    if-eqz p1, :cond_df

    .line 454
    invoke-virtual {p1}, Landroid/app/timezone/RulesState;->isOperationInProgress()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .line 456
    :cond_df
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operation in progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    goto/16 :goto_161

    .line 494
    :cond_f5
    nop

    .line 495
    if-eqz p1, :cond_100

    .line 496
    invoke-virtual {p1}, Landroid/app/timezone/RulesState;->getStagedOperationType()I

    move-result v4

    .line 497
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->stagedOperationToString(I)Ljava/lang/String;

    move-result-object v7

    .line 499
    :cond_100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Staged operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    goto :goto_161

    .line 505
    :cond_115
    nop

    .line 506
    if-eqz p1, :cond_125

    .line 507
    nop

    .line 508
    invoke-virtual {p1}, Landroid/app/timezone/RulesState;->getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v4

    .line 509
    if-nez v4, :cond_120

    .line 510
    goto :goto_126

    .line 512
    :cond_120
    invoke-virtual {v4}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v6

    goto :goto_126

    .line 506
    :cond_125
    move-object v6, v7

    .line 515
    :goto_126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Staged rules version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    goto :goto_161

    .line 479
    :cond_13b
    nop

    .line 480
    if-eqz p1, :cond_14b

    .line 481
    nop

    .line 482
    invoke-virtual {p1}, Landroid/app/timezone/RulesState;->getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v4

    .line 483
    if-nez v4, :cond_146

    .line 484
    goto :goto_14c

    .line 486
    :cond_146
    invoke-virtual {v4}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v6

    goto :goto_14c

    .line 480
    :cond_14b
    move-object v6, v7

    .line 489
    :goto_14c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed rules version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    nop

    .line 448
    :goto_161
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_31

    .line 532
    :cond_165
    return-void

    .line 536
    :cond_166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RulesManagerService state: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/RulesManagerService;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {}, Llibcore/timezone/ZoneInfoDB;->getInstance()Llibcore/timezone/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/timezone/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/timezone/TimeZoneFinder;->getIanaVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 537
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Distro state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/timezone/RulesState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {p1, p2}, Lcom/android/server/timezone/PackageTracker;->dump(Ljava/io/PrintWriter;)V

    .line 543
    return-void

    :pswitch_data_1ce
    .packed-switch 0x61
        :pswitch_a0  #00000061
        :pswitch_83  #00000062
        :pswitch_62  #00000063
    .end packed-switch
.end method

.method public getRulesState()Landroid/app/timezone/RulesState;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.QUERY_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method notifyIdle()V
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/timezone/PackageTracker;->triggerUpdateIfNeeded(Z)V

    .line 553
    return-void
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    .registers 8

    .line 211
    nop

    .line 213
    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v2, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    .line 216
    if-eqz p2, :cond_10

    .line 217
    invoke-static {p2}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v1

    .line 219
    :cond_10
    invoke-static {v1}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeTimezoneRequestInstall(Ljava/lang/String;)V

    .line 221
    monitor-enter p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_60

    .line 222
    const/4 p2, 0x0

    if-eqz p1, :cond_55

    .line 225
    if-eqz p3, :cond_4c

    .line 228
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 229
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_5d

    .line 246
    nop

    .line 248
    :try_start_27
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 251
    goto :goto_34

    .line 249
    :catch_2b
    move-exception p1

    .line 250
    const-string/jumbo p2, "timezone.RulesManagerService"

    const-string p3, "Failed to close distroParcelFileDescriptor"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :goto_34
    return v0

    .line 231
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;

    invoke-direct {v3, p0, p1, v1, p3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_5d

    .line 239
    nop

    .line 241
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_48

    .line 246
    nop

    .line 241
    return p2

    .line 242
    :catchall_48
    move-exception p3

    move v0, p2

    move-object p2, p3

    goto :goto_5e

    .line 226
    :cond_4c
    :try_start_4c
    new-instance p2, Ljava/lang/NullPointerException;

    const-string/jumbo p3, "observer == null"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 223
    :cond_55
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "distroParcelFileDescriptor == null"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 242
    :catchall_5d
    move-exception p2

    :goto_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw p2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 246
    :catchall_60
    move-exception p2

    if-eqz p1, :cond_72

    if-eqz v0, :cond_72

    .line 248
    :try_start_65
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 251
    goto :goto_72

    .line 249
    :catch_69
    move-exception p1

    .line 250
    const-string/jumbo p3, "timezone.RulesManagerService"

    const-string v0, "Failed to close distroParcelFileDescriptor"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    :cond_72
    :goto_72
    throw p2
.end method

.method public requestNothing([BZ)V
    .registers 5

    .line 427
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 428
    nop

    .line 429
    if-eqz p1, :cond_f

    .line 430
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object p1

    goto :goto_10

    .line 429
    :cond_f
    const/4 p1, 0x0

    .line 432
    :goto_10
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneRequestNothing(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 434
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeTimezoneNothingComplete(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public requestUninstall([BLandroid/app/timezone/ICallback;)I
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 336
    nop

    .line 337
    if-eqz p1, :cond_f

    .line 338
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object p1

    goto :goto_10

    .line 337
    :cond_f
    const/4 p1, 0x0

    .line 340
    :goto_10
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneRequestUninstall(Ljava/lang/String;)V

    .line 341
    monitor-enter p0

    .line 342
    if-eqz p2, :cond_39

    .line 346
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 347
    monitor-exit p0

    return v1

    .line 349
    :cond_25
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 354
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 355
    :catchall_37
    move-exception p1

    goto :goto_41

    .line 343
    :cond_39
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_37

    throw p1
.end method

.method public start()V
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageTracker;->start()Z

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RulesManagerService{mOperationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
