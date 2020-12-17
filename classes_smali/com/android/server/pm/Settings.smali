.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DISTRACTION_FLAGS:Ljava/lang/String; = "distraction_flags"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field private static final ATTR_MEIZU_FINGERPRINT:Ljava/lang/String; = "meizu_fingerprint"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_MEIZU_VERSION:Ljava/lang/String; = "meizu_version"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"

.field private static final TAG_SUSPENDED_DIALOG_INFO:Ljava/lang/String; = "suspended-dialog-info"

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static mFirstAvailableUid:I


# instance fields
.field private final mAppIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

.field final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherAppIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private meizuFingerprint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 287
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3646
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3647
    const/high16 v2, 0x10000000

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3648
    const/high16 v2, 0x40000000  # 2.0f

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4478
    const/16 v3, 0x1e

    new-array v4, v3, [Ljava/lang/Object;

    .line 4479
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "SYSTEM"

    aput-object v7, v4, v5

    .line 4480
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v9, 0x3

    const-string v10, "DEBUGGABLE"

    aput-object v10, v4, v9

    .line 4481
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v11, 0x5

    const-string v12, "HAS_CODE"

    aput-object v12, v4, v11

    .line 4482
    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const/4 v15, 0x7

    const-string v16, "PERSISTENT"

    aput-object v16, v4, v15

    .line 4483
    const/16 v16, 0x10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v12

    const/16 v18, 0x9

    const-string v19, "FACTORY_TEST"

    aput-object v19, v4, v18

    .line 4484
    const/16 v19, 0x20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0xa

    aput-object v20, v4, v21

    const/16 v21, 0xb

    const-string v22, "ALLOW_TASK_REPARENTING"

    aput-object v22, v4, v21

    .line 4485
    const/16 v21, 0x40

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0xc

    aput-object v21, v4, v22

    const/16 v21, 0xd

    const-string v22, "ALLOW_CLEAR_USER_DATA"

    aput-object v22, v4, v21

    .line 4486
    const/16 v21, 0x80

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0xe

    aput-object v21, v4, v22

    const/16 v21, 0xf

    const-string v22, "UPDATED_SYSTEM_APP"

    aput-object v22, v4, v21

    .line 4487
    const/16 v21, 0x100

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v16

    const/16 v21, 0x11

    const-string v22, "TEST_ONLY"

    aput-object v22, v4, v21

    .line 4488
    const/16 v21, 0x4000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x12

    aput-object v21, v4, v22

    const/16 v21, 0x13

    const-string v22, "VM_SAFE_MODE"

    aput-object v22, v4, v21

    .line 4489
    const v21, 0x8000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x14

    aput-object v21, v4, v22

    const/16 v21, 0x15

    const-string v22, "ALLOW_BACKUP"

    aput-object v22, v4, v21

    .line 4490
    const/high16 v21, 0x10000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x16

    aput-object v21, v4, v22

    const/16 v21, 0x17

    const-string v22, "KILL_AFTER_RESTORE"

    aput-object v22, v4, v21

    .line 4491
    const/high16 v21, 0x20000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x18

    aput-object v21, v4, v22

    const/16 v21, 0x19

    const-string v22, "RESTORE_ANY_VERSION"

    aput-object v22, v4, v21

    .line 4492
    const/high16 v21, 0x40000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1a

    aput-object v21, v4, v22

    const/16 v21, 0x1b

    const-string v22, "EXTERNAL_STORAGE"

    aput-object v22, v4, v21

    .line 4493
    const/high16 v21, 0x100000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1c

    aput-object v21, v4, v22

    const/16 v21, 0x1d

    const-string v22, "LARGE_HEAP"

    aput-object v22, v4, v21

    sput-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4496
    const/16 v4, 0x30

    new-array v4, v4, [Ljava/lang/Object;

    .line 4497
    const/16 v21, 0x400

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v4, v5

    .line 4498
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v4, v9

    .line 4499
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v4, v11

    .line 4500
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v14

    const-string v0, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    aput-object v0, v4, v15

    .line 4501
    const/high16 v0, 0x20000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v12

    const-string v0, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    aput-object v0, v4, v18

    .line 4502
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v4, v1

    const/16 v0, 0xb

    const-string v1, "BACKUP_IN_FOREGROUND"

    aput-object v1, v4, v0

    .line 4503
    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    const-string v1, "CANT_SAVE_STATE"

    aput-object v1, v4, v0

    .line 4504
    const/16 v0, 0xe

    aput-object v20, v4, v0

    const/16 v0, 0xf

    const-string v1, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v1, v4, v0

    .line 4505
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v16

    const/16 v0, 0x11

    const-string v1, "DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4506
    const/16 v0, 0x12

    aput-object v17, v4, v0

    const/16 v0, 0x13

    const-string v1, "HAS_DOMAIN_URLS"

    aput-object v1, v4, v0

    .line 4507
    const/16 v0, 0x14

    aput-object v6, v4, v0

    const/16 v0, 0x15

    const-string v1, "HIDDEN"

    aput-object v1, v4, v0

    .line 4508
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v4, v1

    const/16 v0, 0x17

    const-string v1, "EPHEMERAL"

    aput-object v1, v4, v0

    .line 4509
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v4, v1

    const/16 v0, 0x19

    const-string v1, "ISOLATED_SPLIT_LOADING"

    aput-object v1, v4, v0

    .line 4510
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v4, v1

    const/16 v0, 0x1b

    const-string v1, "OEM"

    aput-object v1, v4, v0

    .line 4511
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, v4, v1

    const/16 v0, 0x1d

    const-string v1, "PARTIALLY_DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4512
    aput-object v13, v4, v3

    const/16 v0, 0x1f

    const-string v1, "PRIVILEGED"

    aput-object v1, v4, v0

    .line 4513
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v19

    const/16 v0, 0x21

    const-string v1, "REQUIRED_FOR_SYSTEM_USER"

    aput-object v1, v4, v0

    .line 4514
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v4, v1

    const/16 v0, 0x23

    const-string v1, "STATIC_SHARED_LIBRARY"

    aput-object v1, v4, v0

    .line 4515
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v4, v1

    const/16 v0, 0x25

    const-string v1, "VENDOR"

    aput-object v1, v4, v0

    .line 4516
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v4, v1

    const/16 v0, 0x27

    const-string v1, "PRODUCT"

    aput-object v1, v4, v0

    .line 4517
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v4, v1

    const/16 v0, 0x29

    const-string v1, "PRODUCT_SERVICES"

    aput-object v1, v4, v0

    .line 4518
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v4, v1

    const/16 v0, 0x2b

    const-string v1, "VIRTUAL_PRELOAD"

    aput-object v1, v4, v0

    .line 4519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v4, v1

    const/16 v0, 0x2d

    const-string v1, "ODM"

    aput-object v1, v4, v0

    .line 4521
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, v4, v1

    const/16 v0, 0x2f

    const-string v1, "CAN_UNINSTALL"

    aput-object v1, v4, v0

    sput-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4496
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 8
    .param p1, "dataDir"  # Ljava/io/File;
    .param p2, "permission"  # Lcom/android/server/pm/permission/PermissionSettings;
    .param p3, "lock"  # Ljava/lang/Object;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 266
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 269
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 272
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 279
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 290
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 343
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 346
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 360
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 366
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 390
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 391
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 392
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 394
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1fd

    invoke-static {v0, v2, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 400
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 401
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 402
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 403
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 405
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/sdcardfs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "kernelDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_fe

    move-object v1, v0

    goto :goto_ff

    :cond_fe
    const/4 v1, 0x0

    :goto_ff
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 409
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 410
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 413
    new-instance v1, Lcom/android/server/pm/FlymeMzAppManager;

    invoke-direct {v1}, Lcom/android/server/pm/FlymeMzAppManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    .line 415
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/Settings;
    .param p1, "x1"  # I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I
    .registers 5
    .param p1, "obj"  # Lcom/android/server/pm/SettingBase;

    .line 4225
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4226
    .local v0, "size":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1d

    .line 4227
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 4228
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4229
    add-int/lit16 v2, v1, 0x2710

    return v2

    .line 4226
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4234
    .end local v1  # "i":I
    :cond_1d
    const/16 v1, 0x270f

    if-le v0, v1, :cond_23

    .line 4235
    const/4 v1, -0x1

    return v1

    .line 4238
    :cond_23
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4239
    add-int/lit16 v1, v0, 0x2710

    return v1
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 8
    .param p1, "p"  # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"  # Lcom/android/server/pm/SharedUserSetting;

    .line 907
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    if-eqz p2, :cond_87

    .line 909
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_45

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 914
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_7e

    .line 915
    :cond_45
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v4, :cond_7e

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 923
    :cond_7e
    :goto_7e
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 924
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 925
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 930
    :cond_87
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 931
    .local v0, "userIdPs":Ljava/lang/Object;
    if-nez p2, :cond_99

    .line 932
    if-eqz v0, :cond_a2

    if-eq v0, p1, :cond_a2

    .line 933
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    goto :goto_a2

    .line 936
    :cond_99
    if-eqz v0, :cond_a2

    if-eq v0, p2, :cond_a2

    .line 937
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    .line 941
    :cond_a2
    :goto_a2
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 942
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v1, :cond_e0

    .line 943
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_d6

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying restored IVI for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_d6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 949
    :cond_e0
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 33
    .param p1, "pmInternal"  # Landroid/content/pm/PackageManagerInternal;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "flags"  # I
    .param p4, "cn"  # Landroid/content/ComponentName;
    .param p5, "scheme"  # Ljava/lang/String;
    .param p6, "ssp"  # Landroid/os/PatternMatcher;
    .param p7, "auth"  # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"  # Landroid/os/PatternMatcher;
    .param p9, "userId"  # I

    .line 3396
    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 3397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-virtual {v7, v1, v2, v0, v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v8

    .line 3398
    .local v8, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v9, "PackageSettings"

    if-eqz v0, :cond_37

    .line 3399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Queried "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " results: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    :cond_37
    const/4 v0, 0x0

    .line 3402
    .local v0, "systemMatch":I
    const/4 v10, 0x0

    .line 3403
    .local v10, "thirdPartyMatch":I
    if-nez v8, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 3404
    .local v6, "numMatches":I
    :goto_40
    const/4 v11, 0x1

    if-gt v6, v11, :cond_64

    .line 3405
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No potential matches found for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " while setting preferred "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3406
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3405
    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    return-void

    .line 3409
    :cond_64
    const/4 v12, 0x0

    .line 3410
    .local v12, "haveAct":Z
    const/4 v13, 0x0

    .line 3411
    .local v13, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/ComponentName;

    .line 3412
    .local v14, "set":[Landroid/content/ComponentName;
    const/4 v15, 0x0

    move/from16 v21, v0

    .end local v0  # "systemMatch":I
    .local v15, "i":I
    .local v21, "systemMatch":I
    :goto_6f
    if-ge v15, v6, :cond_144

    .line 3413
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3414
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/ComponentName;

    move/from16 v22, v6

    .end local v6  # "numMatches":I
    .local v22, "numMatches":I
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v14, v15

    .line 3415
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    const-string v11, "/"

    const-string v7, "Result "

    if-nez v6, :cond_c8

    .line 3416
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v6, v10, :cond_c5

    .line 3420
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_c1

    .line 3421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": non-system!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    :cond_c1
    aget-object v13, v14, v15

    .line 3424
    goto/16 :goto_148

    .line 3416
    :cond_c5
    move-object/from16 v17, v13

    goto :goto_139

    .line 3426
    :cond_c8
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v13

    .end local v13  # "haveNonSys":Landroid/content/ComponentName;
    .local v17, "haveNonSys":Landroid/content/ComponentName;
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 3427
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 3428
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_107

    .line 3429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    :cond_107
    const/4 v6, 0x1

    .line 3432
    .end local v12  # "haveAct":Z
    .local v6, "haveAct":Z
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    move v12, v6

    move/from16 v21, v7

    .end local v21  # "systemMatch":I
    .local v7, "systemMatch":I
    goto :goto_139

    .line 3434
    .end local v6  # "haveAct":Z
    .end local v7  # "systemMatch":I
    .restart local v12  # "haveAct":Z
    .restart local v21  # "systemMatch":I
    :cond_114
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_139

    .line 3435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": skipped"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    .end local v0  # "ai":Landroid/content/pm/ActivityInfo;
    :cond_139
    :goto_139
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    move-object/from16 v13, v17

    move/from16 v6, v22

    const/4 v11, 0x1

    goto/16 :goto_6f

    .end local v17  # "haveNonSys":Landroid/content/ComponentName;
    .end local v22  # "numMatches":I
    .local v6, "numMatches":I
    .restart local v13  # "haveNonSys":Landroid/content/ComponentName;
    :cond_144
    move/from16 v22, v6

    move-object/from16 v17, v13

    .line 3439
    .end local v6  # "numMatches":I
    .end local v15  # "i":I
    .restart local v22  # "numMatches":I
    :goto_148
    if-eqz v13, :cond_150

    move/from16 v6, v21

    .end local v21  # "systemMatch":I
    .local v6, "systemMatch":I
    if-ge v10, v6, :cond_152

    .line 3444
    const/4 v13, 0x0

    goto :goto_152

    .line 3439
    .end local v6  # "systemMatch":I
    .restart local v21  # "systemMatch":I
    :cond_150
    move/from16 v6, v21

    .line 3446
    .end local v21  # "systemMatch":I
    .restart local v6  # "systemMatch":I
    :cond_152
    :goto_152
    if-eqz v12, :cond_1ff

    if-nez v13, :cond_1ff

    .line 3447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 3448
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_169

    .line 3449
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3451
    :cond_169
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_187

    .line 3452
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_177
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_187

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3453
    .local v11, "cat":Ljava/lang/String;
    invoke-virtual {v7, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3454
    .end local v11  # "cat":Ljava/lang/String;
    goto :goto_177

    .line 3456
    :cond_187
    const/high16 v0, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_191

    .line 3457
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3459
    :cond_191
    if-eqz v3, :cond_196

    .line 3460
    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3462
    :cond_196
    if-eqz p6, :cond_1a3

    .line 3463
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    invoke-virtual {v7, v0, v11}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3465
    :cond_1a3
    if-eqz v4, :cond_1a8

    .line 3466
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3468
    :cond_1a8
    if-eqz v5, :cond_1ad

    .line 3469
    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3471
    :cond_1ad
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e1

    .line 3473
    :try_start_1b3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1ba
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1b3 .. :try_end_1ba} :catch_1bd

    .line 3476
    move-object/from16 v15, p4

    goto :goto_1e3

    .line 3474
    :catch_1bd
    move-exception v0

    .line 3475
    .local v0, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Malformed mimetype "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e3

    .line 3471
    .end local v0  # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_1e1
    move-object/from16 v15, p4

    .line 3478
    :goto_1e3
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v20, 0x1

    move-object v15, v0

    move-object/from16 v16, v7

    move/from16 v17, v6

    move-object/from16 v18, v14

    move-object/from16 v19, p4

    invoke-direct/range {v15 .. v20}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3479
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v11, p0

    move/from16 v15, p9

    invoke-virtual {v11, v15}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 3480
    .end local v0  # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v7  # "filter":Landroid/content/IntentFilter;
    goto :goto_264

    .line 3446
    :cond_1ff
    move-object/from16 v11, p0

    move/from16 v15, p9

    .line 3480
    if-nez v13, :cond_244

    .line 3481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3482
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v7, "No component "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3484
    const-string v7, " found setting preferred "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3486
    const-string v7, "; possible matches are "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_224
    array-length v2, v14

    if-ge v7, v2, :cond_23c

    .line 3488
    if-lez v7, :cond_22e

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    :cond_22e
    aget-object v2, v14, v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p3

    goto :goto_224

    .line 3491
    .end local v7  # "i":I
    :cond_23c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    goto :goto_264

    .line 3493
    :cond_244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; found third party match "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3494
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3493
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    :goto_264
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 35
    .param p1, "pmInternal"  # Landroid/content/pm/PackageManagerInternal;
    .param p2, "tmpPa"  # Landroid/content/IntentFilter;
    .param p3, "cn"  # Landroid/content/ComponentName;
    .param p4, "userId"  # I

    .line 3282
    move-object/from16 v0, p2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_18

    .line 3283
    const-string v1, "PackageSettings"

    const-string v2, "Processing preferred:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    new-instance v2, Landroid/util/LogPrinter;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v2, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3286
    :cond_18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3287
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0xc0000

    .line 3289
    .local v2, "flags":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3290
    const/4 v4, 0x0

    move v15, v2

    .end local v2  # "flags":I
    .local v4, "i":I
    .local v15, "flags":I
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-ge v4, v2, :cond_45

    .line 3291
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    .line 3292
    .local v2, "cat":Ljava/lang/String;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 3293
    const/high16 v5, 0x10000

    or-int/2addr v15, v5

    goto :goto_42

    .line 3295
    :cond_3f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3290
    .end local v2  # "cat":Ljava/lang/String;
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 3299
    .end local v4  # "i":I
    :cond_45
    const/4 v2, 0x1

    .line 3300
    .local v2, "doNonData":Z
    const/4 v4, 0x0

    .line 3302
    .local v4, "hasSchemes":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v14

    .line 3303
    .local v14, "dataSchemesCount":I
    const/4 v5, 0x0

    move/from16 v16, v4

    move v4, v2

    move v2, v5

    .local v2, "ischeme":I
    .local v4, "doNonData":Z
    .local v16, "hasSchemes":Z
    :goto_50
    if-ge v2, v14, :cond_1cd

    .line 3304
    const/4 v5, 0x1

    .line 3305
    .local v5, "doScheme":Z
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3306
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_62

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_62

    .line 3307
    const/4 v6, 0x1

    move/from16 v16, v6

    .line 3309
    :cond_62
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v12

    .line 3310
    .local v12, "dataSchemeSpecificPartsCount":I
    const/4 v6, 0x0

    move/from16 v17, v5

    move v11, v6

    .end local v5  # "doScheme":Z
    .local v11, "issp":I
    .local v17, "doScheme":Z
    :goto_6a
    if-ge v11, v12, :cond_bb

    .line 3311
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3312
    .local v10, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3313
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v18

    .line 3314
    .local v18, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3315
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3316
    .local v9, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3317
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v21, v9

    .end local v9  # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v22, v10

    .end local v10  # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move-object v10, v13

    move/from16 v23, v11

    .end local v11  # "issp":I
    .local v23, "issp":I
    move-object/from16 v11, v18

    move/from16 v24, v12

    .end local v12  # "dataSchemeSpecificPartsCount":I
    .local v24, "dataSchemeSpecificPartsCount":I
    move-object/from16 v12, v19

    move-object v3, v13

    .end local v13  # "scheme":Ljava/lang/String;
    .local v3, "scheme":Ljava/lang/String;
    move-object/from16 v13, v20

    move/from16 v20, v14

    .end local v14  # "dataSchemesCount":I
    .local v20, "dataSchemesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3319
    const/16 v17, 0x0

    .line 3310
    .end local v18  # "ssp":Landroid/os/PatternMatcher;
    .end local v21  # "finalIntent":Landroid/content/Intent;
    .end local v22  # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v23, 0x1

    move-object v13, v3

    move/from16 v14, v20

    move/from16 v12, v24

    const/4 v3, 0x0

    .end local v23  # "issp":I
    .restart local v11  # "issp":I
    goto :goto_6a

    .end local v3  # "scheme":Ljava/lang/String;
    .end local v20  # "dataSchemesCount":I
    .end local v24  # "dataSchemeSpecificPartsCount":I
    .restart local v12  # "dataSchemeSpecificPartsCount":I
    .restart local v13  # "scheme":Ljava/lang/String;
    .restart local v14  # "dataSchemesCount":I
    :cond_bb
    move/from16 v23, v11

    move/from16 v24, v12

    move-object v3, v13

    move/from16 v20, v14

    .line 3321
    .end local v11  # "issp":I
    .end local v12  # "dataSchemeSpecificPartsCount":I
    .end local v13  # "scheme":Ljava/lang/String;
    .end local v14  # "dataSchemesCount":I
    .restart local v3  # "scheme":Ljava/lang/String;
    .restart local v20  # "dataSchemesCount":I
    .restart local v24  # "dataSchemeSpecificPartsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v14

    .line 3322
    .local v14, "dataAuthoritiesCount":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "iauth":I
    :goto_c8
    if-ge v13, v14, :cond_18e

    .line 3323
    const/4 v5, 0x1

    .line 3324
    .local v5, "doAuth":Z
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v18

    .line 3325
    .local v18, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v12

    .line 3326
    .local v12, "dataPathsCount":I
    const/4 v6, 0x0

    move v11, v6

    move/from16 v21, v17

    move/from16 v17, v5

    .end local v5  # "doAuth":Z
    .local v11, "ipath":I
    .local v17, "doAuth":Z
    .local v21, "doScheme":Z
    :goto_d9
    if-ge v11, v12, :cond_13a

    .line 3327
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v5

    .line 3328
    .restart local v10  # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3329
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f1

    .line 3330
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3332
    :cond_f1
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v22

    .line 3333
    .local v22, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3334
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v5

    .line 3335
    .restart local v9  # "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3336
    const/16 v23, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v9

    move v8, v15

    move-object/from16 v25, v9

    .end local v9  # "finalIntent":Landroid/content/Intent;
    .local v25, "finalIntent":Landroid/content/Intent;
    move-object/from16 v9, p3

    move-object/from16 v26, v10

    .end local v10  # "builder":Landroid/net/Uri$Builder;
    .local v26, "builder":Landroid/net/Uri$Builder;
    move-object v10, v3

    move/from16 v27, v11

    .end local v11  # "ipath":I
    .local v27, "ipath":I
    move-object/from16 v11, v23

    move/from16 v23, v12

    .end local v12  # "dataPathsCount":I
    .local v23, "dataPathsCount":I
    move-object/from16 v12, v18

    move/from16 v28, v13

    .end local v13  # "iauth":I
    .local v28, "iauth":I
    move-object/from16 v13, v22

    move/from16 v29, v14

    .end local v14  # "dataAuthoritiesCount":I
    .local v29, "dataAuthoritiesCount":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3338
    const/16 v19, 0x0

    move/from16 v21, v19

    move/from16 v17, v19

    .line 3326
    .end local v22  # "path":Landroid/os/PatternMatcher;
    .end local v25  # "finalIntent":Landroid/content/Intent;
    .end local v26  # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v11, v27, 0x1

    move/from16 v12, v23

    move/from16 v13, v28

    move/from16 v14, v29

    .end local v27  # "ipath":I
    .restart local v11  # "ipath":I
    goto :goto_d9

    .end local v23  # "dataPathsCount":I
    .end local v28  # "iauth":I
    .end local v29  # "dataAuthoritiesCount":I
    .restart local v12  # "dataPathsCount":I
    .restart local v13  # "iauth":I
    .restart local v14  # "dataAuthoritiesCount":I
    :cond_13a
    move/from16 v27, v11

    move/from16 v23, v12

    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3340
    .end local v11  # "ipath":I
    .end local v12  # "dataPathsCount":I
    .end local v13  # "iauth":I
    .end local v14  # "dataAuthoritiesCount":I
    .restart local v23  # "dataPathsCount":I
    .restart local v28  # "iauth":I
    .restart local v29  # "dataAuthoritiesCount":I
    if-eqz v17, :cond_186

    .line 3341
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3342
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3343
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15c

    .line 3344
    invoke-virtual/range {v18 .. v18}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3346
    :cond_15c
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3347
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3348
    const/4 v11, 0x0

    const/16 v22, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v12, v18

    move-object/from16 v25, v13

    .end local v13  # "finalIntent":Landroid/content/Intent;
    .restart local v25  # "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v22

    move-object/from16 v22, v14

    .end local v14  # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3350
    const/4 v5, 0x0

    move/from16 v17, v5

    .end local v21  # "doScheme":Z
    .local v5, "doScheme":Z
    goto :goto_188

    .line 3340
    .end local v5  # "doScheme":Z
    .end local v22  # "builder":Landroid/net/Uri$Builder;
    .end local v25  # "finalIntent":Landroid/content/Intent;
    .restart local v21  # "doScheme":Z
    :cond_186
    move/from16 v17, v21

    .line 3322
    .end local v18  # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v21  # "doScheme":Z
    .end local v23  # "dataPathsCount":I
    .local v17, "doScheme":Z
    :goto_188
    add-int/lit8 v13, v28, 0x1

    move/from16 v14, v29

    .end local v28  # "iauth":I
    .local v13, "iauth":I
    goto/16 :goto_c8

    .end local v29  # "dataAuthoritiesCount":I
    .local v14, "dataAuthoritiesCount":I
    :cond_18e
    move/from16 v28, v13

    move/from16 v29, v14

    const/16 v19, 0x0

    .line 3353
    .end local v13  # "iauth":I
    .end local v14  # "dataAuthoritiesCount":I
    .restart local v29  # "dataAuthoritiesCount":I
    if-eqz v17, :cond_1c4

    .line 3354
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 3355
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3356
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v5

    .line 3357
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3358
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v13

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v3

    move-object/from16 v21, v13

    .end local v13  # "finalIntent":Landroid/content/Intent;
    .local v21, "finalIntent":Landroid/content/Intent;
    move-object/from16 v13, v18

    move-object/from16 v18, v14

    .end local v14  # "builder":Landroid/net/Uri$Builder;
    .local v18, "builder":Landroid/net/Uri$Builder;
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3361
    .end local v18  # "builder":Landroid/net/Uri$Builder;
    .end local v21  # "finalIntent":Landroid/content/Intent;
    :cond_1c4
    const/4 v4, 0x0

    .line 3303
    .end local v3  # "scheme":Ljava/lang/String;
    .end local v17  # "doScheme":Z
    .end local v24  # "dataSchemeSpecificPartsCount":I
    .end local v29  # "dataAuthoritiesCount":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v19

    move/from16 v14, v20

    goto/16 :goto_50

    .end local v20  # "dataSchemesCount":I
    .local v14, "dataSchemesCount":I
    :cond_1cd
    move/from16 v20, v14

    .line 3364
    .end local v2  # "ischeme":I
    .end local v14  # "dataSchemesCount":I
    .restart local v20  # "dataSchemesCount":I
    const/4 v2, 0x0

    move/from16 v17, v4

    .end local v4  # "doNonData":Z
    .local v2, "idata":I
    .local v17, "doNonData":Z
    :goto_1d2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v2, v3, :cond_24d

    .line 3365
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    .line 3366
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_22f

    .line 3367
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3368
    .local v4, "builder":Landroid/net/Uri$Builder;
    const/4 v5, 0x0

    move v14, v5

    .local v14, "ischeme":I
    :goto_1e5
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v5

    if-ge v14, v5, :cond_22c

    .line 3369
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3370
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_225

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_225

    .line 3371
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v5

    .line 3372
    .local v12, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3373
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v12, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3374
    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v12

    move v8, v15

    move-object/from16 v9, p3

    move-object v10, v13

    move-object/from16 v21, v12

    .end local v12  # "finalIntent":Landroid/content/Intent;
    .restart local v21  # "finalIntent":Landroid/content/Intent;
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13  # "scheme":Ljava/lang/String;
    .local v18, "scheme":Ljava/lang/String;
    move-object/from16 v13, v19

    move/from16 v19, v14

    .end local v14  # "ischeme":I
    .local v19, "ischeme":I
    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_229

    .line 3370
    .end local v18  # "scheme":Ljava/lang/String;
    .end local v19  # "ischeme":I
    .end local v21  # "finalIntent":Landroid/content/Intent;
    .restart local v13  # "scheme":Ljava/lang/String;
    .restart local v14  # "ischeme":I
    :cond_225
    move-object/from16 v18, v13

    move/from16 v19, v14

    .line 3368
    .end local v13  # "scheme":Ljava/lang/String;
    .end local v14  # "ischeme":I
    .restart local v19  # "ischeme":I
    :goto_229
    add-int/lit8 v14, v19, 0x1

    .end local v19  # "ischeme":I
    .restart local v14  # "ischeme":I
    goto :goto_1e5

    :cond_22c
    move/from16 v19, v14

    .line 3378
    .end local v4  # "builder":Landroid/net/Uri$Builder;
    .end local v14  # "ischeme":I
    goto :goto_248

    .line 3379
    :cond_22f
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3380
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3381
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v4

    move v8, v15

    move-object/from16 v9, p3

    move/from16 v14, p4

    invoke-direct/range {v5 .. v14}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3384
    .end local v4  # "finalIntent":Landroid/content/Intent;
    :goto_248
    const/16 v17, 0x0

    .line 3364
    .end local v3  # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d2

    .line 3387
    .end local v2  # "idata":I
    :cond_24d
    if-eqz v17, :cond_260

    .line 3388
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v15

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3391
    :cond_260
    return-void
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLjava/lang/String;Ljava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 66
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "originalPkg"  # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkg"  # Lcom/android/server/pm/PackageSetting;
    .param p3, "realPkgName"  # Ljava/lang/String;
    .param p4, "sharedUser"  # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"  # Ljava/io/File;
    .param p6, "resourcePath"  # Ljava/io/File;
    .param p7, "legacyNativeLibraryPath"  # Ljava/lang/String;
    .param p8, "primaryCpuAbi"  # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"  # Ljava/lang/String;
    .param p10, "versionCode"  # J
    .param p12, "pkgFlags"  # I
    .param p13, "pkgPrivateFlags"  # I
    .param p14, "installUser"  # Landroid/os/UserHandle;
    .param p15, "allowInstall"  # Z
    .param p16, "instantApp"  # Z
    .param p17, "virtualPreload"  # Z
    .param p18, "parentPkgName"  # Ljava/lang/String;
    .param p20, "userManager"  # Lcom/android/server/pm/UserManagerService;
    .param p21, "usesStaticLibraries"  # [Ljava/lang/String;
    .param p22, "usesStaticLibrariesVersions"  # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 610
    .local p19, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p4

    move/from16 v9, p12

    move-object/from16 v10, p19

    if-eqz v13, :cond_81

    .line 611
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is adopting original package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_32
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v0, v13, v14}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 614
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    nop

    .line 615
    if-eqz v10, :cond_40

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 616
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 617
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 618
    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    .line 619
    iput v9, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 620
    move/from16 v4, p13

    iput v4, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 621
    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 622
    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 623
    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 626
    new-instance v8, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v8}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 627
    move-wide/from16 v8, p10

    iput-wide v8, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 628
    move-object/from16 v15, p21

    iput-object v15, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 629
    move-object/from16 v15, p22

    iput-object v15, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 631
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object/from16 v9, p20

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_19e

    .line 633
    .end local v0  # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_81
    move-object/from16 v7, p5

    move-object/from16 v6, p7

    move-object/from16 v3, p8

    move-wide/from16 v8, p10

    move/from16 v4, p13

    move-object/from16 v5, p18

    move-object/from16 v15, p22

    new-instance v18, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v0, v18

    const/4 v1, 0x0

    move-object v8, v1

    const/4 v1, 0x0

    move v15, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v16, p21

    move-object/from16 v17, p22

    invoke-direct/range {v0 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 638
    .restart local v0  # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 639
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 641
    and-int/lit8 v2, p12, 0x1

    if-nez v2, :cond_14e

    .line 647
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 648
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    if-eqz p14, :cond_d1

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    goto :goto_d2

    :cond_d1
    move v4, v3

    .line 649
    .local v4, "installUserId":I
    :goto_d2
    if-eqz v2, :cond_14b

    if-eqz p15, :cond_14b

    .line 650
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_da
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_148

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 657
    .local v6, "user":Landroid/content/pm/UserInfo;
    const/4 v7, -0x1

    if-eqz p14, :cond_ff

    if-ne v4, v7, :cond_f6

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 659
    move-object/from16 v9, p20

    invoke-static {v9, v8}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v8

    if-eqz v8, :cond_fc

    goto :goto_f8

    .line 657
    :cond_f6
    move-object/from16 v9, p20

    .line 659
    :goto_f8
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v8, :cond_fd

    :cond_fc
    goto :goto_101

    :cond_fd
    move v8, v3

    goto :goto_102

    .line 657
    :cond_ff
    move-object/from16 v9, p20

    .line 659
    :goto_101
    const/4 v8, 0x1

    .line 663
    .local v8, "installedTmp":Z
    :goto_102
    if-eqz v8, :cond_113

    .line 664
    if-eqz p14, :cond_108

    if-ne v4, v7, :cond_113

    .line 665
    :cond_108
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v7

    if-eqz v7, :cond_113

    .line 666
    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->isMultiSystemPackage(Ljava/lang/String;)Z

    move-result v7

    .end local v8  # "installedTmp":Z
    .local v7, "installedTmp":Z
    goto :goto_114

    .line 670
    .end local v7  # "installedTmp":Z
    .restart local v8  # "installedTmp":Z
    :cond_113
    move v7, v8

    .end local v8  # "installedTmp":Z
    .restart local v7  # "installedTmp":Z
    :goto_114
    move/from16 v24, v7

    .line 673
    .local v24, "installed":Z
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v8

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v19, v0

    move/from16 v34, p16

    move/from16 v35, p17

    invoke-virtual/range {v19 .. v42}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    .line 692
    .end local v6  # "user":Landroid/content/pm/UserInfo;
    .end local v7  # "installedTmp":Z
    .end local v24  # "installed":Z
    goto :goto_da

    .line 650
    :cond_148
    move-object/from16 v9, p20

    goto :goto_150

    .line 649
    :cond_14b
    move-object/from16 v9, p20

    goto :goto_150

    .line 641
    .end local v2  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4  # "installUserId":I
    :cond_14e
    move-object/from16 v9, p20

    .line 695
    :goto_150
    if-eqz v1, :cond_159

    .line 696
    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v2, p2

    goto :goto_19e

    .line 699
    :cond_159
    move-object/from16 v2, p2

    if-eqz v2, :cond_19e

    .line 704
    new-instance v3, Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 705
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 707
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 709
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    .line 710
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_19e

    .line 711
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 712
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 713
    .local v6, "userId":I
    nop

    .line 714
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 713
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 715
    nop

    .line 716
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 715
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 717
    .end local v5  # "user":Landroid/content/pm/UserInfo;
    .end local v6  # "userId":I
    goto :goto_17f

    .line 722
    .end local v3  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_19e
    :goto_19e
    return-object v0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 5097
    if-nez p1, :cond_9

    .line 5098
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    .line 5101
    :cond_9
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5102
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5103
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    const-string v1, ":"

    if-eqz v0, :cond_21

    .line 5104
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5106
    :cond_21
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 5107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    .line 5108
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5109
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5110
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v2, v2, v0

    if-eqz v2, :cond_47

    .line 5111
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5107
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 5115
    .end local v0  # "i":I
    :cond_4a
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5117
    :goto_4f
    return-void
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "userManager"  # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4429
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"  # I

    .line 1314
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"  # I

    .line 1302
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1303
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"  # I

    .line 1309
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1310
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .registers 5
    .param p0, "userManager"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "excludeDying"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4442
    .local v0, "id":J
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_8} :catch_11
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 4446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4442
    return-object v2

    .line 4446
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4443
    :catch_11
    move-exception v2

    .line 4446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4447
    nop

    .line 4448
    const/4 v2, 0x0

    return-object v2
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3
    .param p0, "userManager"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"  # I

    .line 884
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "prefix"  # Ljava/lang/String;
    .param p1, "flags"  # I

    .line 5145
    const/4 v0, 0x0

    .line 5146
    .local v0, "flagsString":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz p1, :cond_2a

    .line 5147
    if-nez v0, :cond_13

    .line 5148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 5149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5150
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5152
    :cond_13
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5153
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5154
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5155
    if-eqz p1, :cond_29

    .line 5156
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5159
    .end local v1  # "flag":I
    :cond_29
    goto :goto_1

    .line 5160
    :cond_2a
    if-eqz v0, :cond_36

    .line 5161
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5164
    :cond_36
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 6
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "val"  # I
    .param p2, "spec"  # [Ljava/lang/Object;

    .line 4467
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_24

    .line 4469
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4470
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_21

    .line 4471
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4472
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4468
    .end local v1  # "mask":I
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 4475
    .end local v0  # "i":I
    :cond_24
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4476
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 8
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1801
    const/4 v0, 0x0

    .line 1803
    .local v0, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1805
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3f

    const/4 v2, 0x3

    if-ne v3, v2, :cond_16

    .line 1807
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3f

    .line 1808
    :cond_16
    if-eq v3, v2, :cond_5

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1c

    .line 1810
    goto :goto_5

    .line 1812
    :cond_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1813
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1814
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1815
    .local v4, "componentName":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 1816
    if-nez v0, :cond_3b

    .line 1817
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1819
    :cond_3b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1821
    .end local v4  # "componentName":Ljava/lang/String;
    :cond_3e
    goto :goto_5

    .line 1823
    .end local v2  # "tagName":Ljava/lang/String;
    :cond_3f
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1430
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1432
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4e

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1433
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4e

    .line 1434
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1435
    goto :goto_4

    .line 1437
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1439
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1440
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1441
    .end local v3  # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_4d

    .line 1442
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1444
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1445
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1447
    .end local v1  # "tagName":Ljava/lang/String;
    .end local v3  # "msg":Ljava/lang/String;
    :goto_4d
    goto :goto_4

    .line 1448
    :cond_4e
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3500
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3501
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3502
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3504
    .local v1, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_89

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1d

    .line 3505
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_89

    .line 3506
    :cond_1d
    if-eq v3, v2, :cond_c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_23

    .line 3507
    goto :goto_c

    .line 3510
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3511
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x5

    if-eqz v4, :cond_6d

    .line 3512
    new-instance v4, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v4, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3513
    .local v4, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v6, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_46

    .line 3514
    iget-object v5, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_6c

    .line 3517
    :cond_46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3519
    invoke-virtual {v7}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3517
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3522
    .end local v4  # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :goto_6c
    goto :goto_88

    .line 3523
    :cond_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3524
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3523
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3525
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3527
    .end local v2  # "tagName":Ljava/lang/String;
    :goto_88
    goto :goto_c

    .line 3528
    :cond_89
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "packageSetting"  # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3976
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3978
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_70

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 3979
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_70

    .line 3980
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 3981
    goto :goto_4

    .line 3984
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3985
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_54

    .line 3986
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3987
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 3988
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_53

    .line 3990
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3992
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3990
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3994
    .end local v3  # "name":Ljava/lang/String;
    :goto_53
    goto :goto_6c

    .line 3995
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3996
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3995
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3998
    :goto_6c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3999
    .end local v1  # "tagName":Ljava/lang/String;
    goto :goto_4

    .line 4000
    :cond_70
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 40
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3532
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3533
    .local v14, "name":Ljava/lang/String;
    const-string/jumbo v0, "realName"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3534
    .local v23, "realName":Ljava/lang/String;
    const-string v0, "codePath"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3535
    .local v15, "codePathStr":Ljava/lang/String;
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3537
    .local v0, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v5, "requiredCpuAbi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3538
    .local v24, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v5, "nativeLibraryPath"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3540
    .local v25, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v5, "parentPackageName"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3542
    .local v26, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v5, "primaryCpuAbi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3543
    .local v5, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "secondaryCpuAbi"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3544
    .local v27, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string v6, "cpuAbiOverride"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3546
    .local v28, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v5, :cond_52

    if-eqz v24, :cond_52

    .line 3547
    move-object/from16 v5, v24

    move-object/from16 v29, v5

    goto :goto_54

    .line 3550
    :cond_52
    move-object/from16 v29, v5

    .end local v5  # "primaryCpuAbiStr":Ljava/lang/String;
    .local v29, "primaryCpuAbiStr":Ljava/lang/String;
    :goto_54
    if-nez v0, :cond_59

    .line 3551
    move-object v0, v15

    move-object v13, v0

    goto :goto_5a

    .line 3550
    :cond_59
    move-object v13, v0

    .line 3553
    .end local v0  # "resourcePathStr":Ljava/lang/String;
    .local v13, "resourcePathStr":Ljava/lang/String;
    :goto_5a
    const-string/jumbo v0, "version"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3554
    .local v30, "version":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 3555
    .local v5, "versionCode":J
    if-eqz v30, :cond_6e

    .line 3557
    :try_start_65
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_69} :catch_6d

    move-wide v5, v7

    .line 3559
    move-wide/from16 v31, v5

    goto :goto_70

    .line 3558
    :catch_6d
    move-exception v0

    .line 3562
    :cond_6e
    move-wide/from16 v31, v5

    .end local v5  # "versionCode":J
    .local v31, "versionCode":J
    :goto_70
    const/4 v0, 0x0

    .line 3563
    .local v0, "pkgFlags":I
    const/4 v5, 0x0

    .line 3564
    .local v5, "pkgPrivateFlags":I
    const/4 v12, 0x1

    or-int/lit8 v33, v0, 0x1

    .line 3565
    .end local v0  # "pkgFlags":I
    .local v33, "pkgFlags":I
    invoke-static {v15}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3566
    or-int/lit8 v0, v5, 0x8

    move/from16 v34, v0

    .end local v5  # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    goto :goto_82

    .line 3565
    .end local v0  # "pkgPrivateFlags":I
    .restart local v5  # "pkgPrivateFlags":I
    :cond_80
    move/from16 v34, v5

    .line 3568
    .end local v5  # "pkgPrivateFlags":I
    .local v34, "pkgPrivateFlags":I
    :goto_82
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    move-object v5, v0

    new-instance v6, Ljava/io/File;

    move-object v8, v6

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object v9, v6

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v6, v14

    move-object/from16 v7, v23

    move-object/from16 v10, v25

    move-object/from16 v11, v29

    move-object/from16 v12, v27

    move-object/from16 v35, v13

    .end local v13  # "resourcePathStr":Ljava/lang/String;
    .local v35, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v13, v28

    move-object/from16 v36, v14

    move-object/from16 v37, v15

    .end local v14  # "name":Ljava/lang/String;
    .end local v15  # "codePathStr":Ljava/lang/String;
    .local v36, "name":Ljava/lang/String;
    .local v37, "codePathStr":Ljava/lang/String;
    move-wide/from16 v14, v31

    move/from16 v16, v33

    move/from16 v17, v34

    move-object/from16 v18, v26

    invoke-direct/range {v5 .. v22}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 3574
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v0, "forceFull"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3575
    .local v6, "forceFull":Ljava/lang/String;
    const-string v0, "false"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    invoke-virtual {v5, v0}, Lcom/android/server/pm/PackageSetting;->setForceFull(Z)V

    .line 3576
    const-string/jumbo v0, "mzApp"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3577
    .local v8, "mzApp":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/android/server/pm/PackageSetting;->mzApp:Z

    .line 3580
    const-string v0, "ft"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3581
    .local v9, "timeStampStr":Ljava/lang/String;
    const/16 v10, 0x10

    if-eqz v9, :cond_ea

    .line 3583
    :try_start_e0
    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    .line 3584
    .local v11, "timeStamp":J
    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_e7
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_e7} :catch_e8

    .end local v11  # "timeStamp":J
    goto :goto_e9

    .line 3585
    :catch_e8
    move-exception v0

    .line 3586
    :goto_e9
    goto :goto_fc

    .line 3588
    :cond_ea
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3589
    if-eqz v9, :cond_fc

    .line 3591
    :try_start_f3
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 3592
    .restart local v11  # "timeStamp":J
    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_fa} :catch_fb

    .line 3594
    .end local v11  # "timeStamp":J
    goto :goto_fc

    .line 3593
    :catch_fb
    move-exception v0

    .line 3597
    :cond_fc
    :goto_fc
    const-string/jumbo v0, "it"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3598
    if-eqz v9, :cond_10d

    .line 3600
    :try_start_105
    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    iput-wide v11, v5, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_10b} :catch_10c

    .line 3602
    goto :goto_10d

    .line 3601
    :catch_10c
    move-exception v0

    .line 3604
    :cond_10d
    :goto_10d
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3605
    if-eqz v9, :cond_11e

    .line 3607
    :try_start_116
    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_116 .. :try_end_11c} :catch_11d

    .line 3609
    goto :goto_11e

    .line 3608
    :catch_11d
    move-exception v0

    .line 3611
    :cond_11e
    :goto_11e
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3612
    .local v0, "idStr":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v0, :cond_12d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_12e

    :cond_12d
    move v11, v10

    :goto_12e
    iput v11, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3613
    iget v11, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v11, :cond_143

    .line 3614
    const-string/jumbo v11, "sharedUserId"

    invoke-interface {v2, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3615
    .local v11, "sharedIdStr":Ljava/lang/String;
    if-eqz v11, :cond_141

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_141
    iput v10, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3618
    .end local v11  # "sharedIdStr":Ljava/lang/String;
    :cond_143
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 3620
    .local v10, "outerDepth":I
    :cond_147
    :goto_147
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    if-eq v11, v7, :cond_1c1

    const/4 v11, 0x3

    if-ne v12, v11, :cond_157

    .line 3621
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v10, :cond_1c1

    .line 3622
    :cond_157
    if-eq v12, v11, :cond_147

    const/4 v11, 0x4

    if-ne v12, v11, :cond_15d

    .line 3623
    goto :goto_147

    .line 3626
    :cond_15d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "perms"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_172

    .line 3627
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_147

    .line 3628
    :cond_172
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "child-package"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_193

    .line 3629
    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3630
    .local v11, "childPackageName":Ljava/lang/String;
    iget-object v13, v5, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v13, :cond_18d

    .line 3631
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v5, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3633
    :cond_18d
    iget-object v13, v5, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3634
    .end local v11  # "childPackageName":Ljava/lang/String;
    goto :goto_147

    :cond_193
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "uses-static-lib"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a4

    .line 3635
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_147

    .line 3637
    :cond_1a4
    const/4 v11, 0x5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown element under <updated-package>: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3637
    invoke-static {v11, v13}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3639
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_147

    .line 3643
    :cond_1c1
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v4, v36

    .end local v36  # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3644
    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .registers 4
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"  # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1452
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1453
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1457
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "packageSetting"  # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4004
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4006
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_70

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 4007
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_70

    .line 4008
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 4009
    goto :goto_4

    .line 4012
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4013
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_54

    .line 4014
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4015
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 4016
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_53

    .line 4018
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4018
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4022
    .end local v3  # "name":Ljava/lang/String;
    :goto_53
    goto :goto_6c

    .line 4023
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4024
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4023
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4026
    :goto_6c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4027
    .end local v1  # "tagName":Ljava/lang/String;
    goto :goto_4

    .line 4028
    :cond_70
    return-void
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 85
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3651
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    const-string v11, " has bad userId "

    const-string/jumbo v12, "name"

    const-string v10, " at "

    const-string v7, "Error in package manager settings: package "

    const-string/jumbo v5, "true"

    const/4 v1, 0x0

    .line 3652
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3653
    .local v2, "realName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3654
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3655
    .local v4, "sharedIdStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3656
    .local v6, "codePathStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3657
    .local v8, "resourcePathStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3658
    .local v9, "legacyCpuAbiString":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3659
    .local v16, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3660
    .local v17, "primaryCpuAbiString":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3661
    .local v18, "secondaryCpuAbiString":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3662
    .local v19, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3663
    .local v20, "systemStr":Ljava/lang/String;
    const/16 v21, 0x0

    .line 3664
    .local v21, "installerPackageName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3665
    .local v22, "isOrphaned":Ljava/lang/String;
    const/16 v23, 0x0

    .line 3666
    .local v23, "volumeUuid":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3667
    .local v24, "categoryHintString":Ljava/lang/String;
    const/16 v25, 0x0

    .line 3668
    .local v25, "updateAvailable":Ljava/lang/String;
    const/16 v26, -0x1

    .line 3669
    .local v26, "categoryHint":I
    const/4 v15, 0x0

    .line 3670
    .local v15, "uidError":Ljava/lang/String;
    const/16 v27, 0x0

    .line 3671
    .local v27, "pkgFlags":I
    const/16 v28, 0x0

    .line 3672
    .local v28, "pkgPrivateFlags":I
    const-wide/16 v29, 0x0

    .line 3673
    .local v29, "timeStamp":J
    const-wide/16 v31, 0x0

    .line 3674
    .local v31, "firstInstallTime":J
    const-wide/16 v33, 0x0

    .line 3675
    .local v33, "lastUpdateTime":J
    const/16 v35, 0x0

    .line 3676
    .local v35, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/16 v36, 0x0

    .line 3677
    .local v36, "version":Ljava/lang/String;
    const-wide/16 v37, 0x0

    .line 3680
    .local v37, "versionCode":J
    const/16 v39, 0x0

    .line 3684
    .local v39, "forceFull":Ljava/lang/String;
    const/4 v14, 0x0

    :try_start_41
    invoke-interface {v13, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_a90

    move-object v1, v0

    .line 3685
    :try_start_46
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 3686
    const-string/jumbo v0, "userId"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_55} :catch_a69

    move-object v3, v0

    .line 3687
    :try_start_56
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_5d} :catch_a3f

    move-object/from16 v41, v0

    .line 3688
    .end local v15  # "uidError":Ljava/lang/String;
    .local v41, "uidError":Ljava/lang/String;
    :try_start_5f
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 3689
    const-string v0, "codePath"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_6d} :catch_a16

    move-object v6, v0

    .line 3690
    :try_start_6e
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_75} :catch_9eb

    move-object/from16 v42, v0

    .line 3692
    .end local v8  # "resourcePathStr":Ljava/lang/String;
    .local v42, "resourcePathStr":Ljava/lang/String;
    :try_start_77
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_7e} :catch_9c2

    move-object/from16 v43, v0

    .line 3694
    .end local v9  # "legacyCpuAbiString":Ljava/lang/String;
    .local v43, "legacyCpuAbiString":Ljava/lang/String;
    :try_start_80
    const-string/jumbo v0, "parentPackageName"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3696
    .local v15, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_8e} :catch_99b

    move-object v9, v6

    .end local v6  # "codePathStr":Ljava/lang/String;
    .local v9, "codePathStr":Ljava/lang/String;
    move-object v6, v0

    .line 3697
    .end local v16  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_90
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 3698
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_a0} :catch_972

    .line 3699
    .end local v18  # "secondaryCpuAbiString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    :try_start_a0
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_a6} :catch_94b

    move-object/from16 v44, v9

    .end local v9  # "codePathStr":Ljava/lang/String;
    .local v44, "codePathStr":Ljava/lang/String;
    move-object v9, v0

    .line 3700
    .end local v19  # "cpuAbiOverrideString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    :try_start_a9
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 3702
    const-string v0, "forceFull"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b8} :catch_928

    move-object/from16 v39, v0

    .line 3705
    if-nez v17, :cond_c3

    if-eqz v43, :cond_c3

    .line 3706
    move-object/from16 v0, v43

    move-object/from16 v19, v0

    .end local v17  # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "primaryCpuAbiString":Ljava/lang/String;
    goto :goto_c5

    .line 3709
    .end local v0  # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v17  # "primaryCpuAbiString":Ljava/lang/String;
    :cond_c3
    move-object/from16 v19, v17

    .end local v17  # "primaryCpuAbiString":Ljava/lang/String;
    .local v19, "primaryCpuAbiString":Ljava/lang/String;
    :goto_c5
    :try_start_c5
    const-string/jumbo v0, "version"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_cc} :catch_907

    move-object/from16 v36, v0

    .line 3710
    if-eqz v36, :cond_d8

    .line 3712
    :try_start_d0
    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_d4} :catch_d7

    .line 3714
    .end local v37  # "versionCode":J
    .local v16, "versionCode":J
    move-wide/from16 v37, v16

    goto :goto_d8

    .line 3713
    .end local v16  # "versionCode":J
    .restart local v37  # "versionCode":J
    :catch_d7
    move-exception v0

    .line 3716
    :cond_d8
    :goto_d8
    :try_start_d8
    const-string/jumbo v0, "installer"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 3717
    const-string/jumbo v0, "isOrphaned"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v0

    .line 3718
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 3719
    const-string v0, "categoryHint"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_f9} :catch_907

    move-object/from16 v24, v0

    .line 3720
    if-eqz v24, :cond_105

    .line 3722
    :try_start_fd
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_101
    .catch Ljava/lang/NumberFormatException; {:try_start_fd .. :try_end_101} :catch_104

    move/from16 v26, v0

    .line 3724
    goto :goto_105

    .line 3723
    :catch_104
    move-exception v0

    .line 3727
    :cond_105
    :goto_105
    :try_start_105
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10c
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_10c} :catch_907

    move-object/from16 v20, v0

    .line 3728
    if-eqz v20, :cond_14c

    .line 3730
    :try_start_110
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_114
    .catch Ljava/lang/NumberFormatException; {:try_start_110 .. :try_end_114} :catch_117

    move/from16 v27, v0

    .line 3732
    goto :goto_118

    .line 3731
    :catch_117
    move-exception v0

    .line 3733
    :goto_118
    :try_start_118
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11f
    .catch Ljava/lang/NumberFormatException; {:try_start_118 .. :try_end_11f} :catch_132

    move-object/from16 v16, v0

    .line 3734
    .end local v20  # "systemStr":Ljava/lang/String;
    .local v16, "systemStr":Ljava/lang/String;
    if-eqz v16, :cond_12e

    .line 3736
    :try_start_123
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_127
    .catch Ljava/lang/NumberFormatException; {:try_start_123 .. :try_end_127} :catch_12d

    .line 3738
    .end local v28  # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    move/from16 v28, v0

    move-object/from16 v20, v16

    goto/16 :goto_1c9

    .line 3737
    .end local v0  # "pkgPrivateFlags":I
    .restart local v28  # "pkgPrivateFlags":I
    :catch_12d
    move-exception v0

    .line 3773
    :cond_12e
    move-object/from16 v20, v16

    goto/16 :goto_1c9

    .line 3865
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v16  # "systemStr":Ljava/lang/String;
    .restart local v20  # "systemStr":Ljava/lang/String;
    :catch_132
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v75, v5

    move-object/from16 v69, v6

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v30, v2

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .line 3742
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    :cond_14c
    :try_start_14c
    const-string v0, "flags"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_152
    .catch Ljava/lang/NumberFormatException; {:try_start_14c .. :try_end_152} :catch_907

    move-object/from16 v20, v0

    .line 3743
    if-eqz v20, :cond_18a

    .line 3745
    :try_start_156
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15a
    .catch Ljava/lang/NumberFormatException; {:try_start_156 .. :try_end_15a} :catch_15d

    move/from16 v27, v0

    .line 3747
    goto :goto_15e

    .line 3746
    :catch_15d
    move-exception v0

    .line 3748
    :goto_15e
    :try_start_15e
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v27, v0

    if-eqz v0, :cond_166

    .line 3749
    or-int/lit8 v28, v28, 0x1

    .line 3751
    :cond_166
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v27, v0

    if-eqz v0, :cond_170

    .line 3752
    or-int/lit8 v0, v28, 0x2

    move/from16 v28, v0

    .line 3754
    :cond_170
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v27, v0

    if-eqz v0, :cond_17a

    .line 3755
    or-int/lit8 v0, v28, 0x8

    move/from16 v28, v0

    .line 3757
    :cond_17a
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_182
    .catch Ljava/lang/NumberFormatException; {:try_start_15e .. :try_end_182} :catch_132

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v27, v0

    move/from16 v27, v0

    .end local v27  # "pkgFlags":I
    .local v0, "pkgFlags":I
    goto :goto_1c9

    .line 3762
    .end local v0  # "pkgFlags":I
    .restart local v27  # "pkgFlags":I
    :cond_18a
    :try_start_18a
    const-string/jumbo v0, "system"

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_191
    .catch Ljava/lang/NumberFormatException; {:try_start_18a .. :try_end_191} :catch_907

    move-object/from16 v16, v0

    .line 3763
    .end local v20  # "systemStr":Ljava/lang/String;
    .restart local v16  # "systemStr":Ljava/lang/String;
    move-object/from16 v14, v16

    .end local v16  # "systemStr":Ljava/lang/String;
    .local v14, "systemStr":Ljava/lang/String;
    if-eqz v14, :cond_1c3

    .line 3764
    :try_start_197
    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_19b
    .catch Ljava/lang/NumberFormatException; {:try_start_197 .. :try_end_19b} :catch_1a7

    if-eqz v0, :cond_19f

    const/4 v0, 0x1

    goto :goto_1a0

    .line 3765
    :cond_19f
    const/4 v0, 0x0

    :goto_1a0
    or-int v0, v27, v0

    move/from16 v27, v0

    move-object/from16 v20, v14

    .end local v27  # "pkgFlags":I
    .restart local v0  # "pkgFlags":I
    goto :goto_1c9

    .line 3865
    .end local v0  # "pkgFlags":I
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v27  # "pkgFlags":I
    :catch_1a7
    move-exception v0

    move-object/from16 v75, v5

    move-object/from16 v69, v6

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-object/from16 v20, v14

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v14, p0

    move-object/from16 v30, v2

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .line 3769
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    :cond_1c3
    or-int/lit8 v0, v27, 0x1

    move/from16 v27, v0

    move-object/from16 v20, v14

    .line 3773
    .end local v14  # "systemStr":Ljava/lang/String;
    .restart local v20  # "systemStr":Ljava/lang/String;
    :goto_1c9
    :try_start_1c9
    const-string v0, "ft"

    const/4 v14, 0x0

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d0
    .catch Ljava/lang/NumberFormatException; {:try_start_1c9 .. :try_end_1d0} :catch_907

    move-object v14, v0

    .line 3774
    .local v14, "timeStampStr":Ljava/lang/String;
    move-object/from16 v46, v5

    const/16 v5, 0x10

    if-eqz v14, :cond_1e2

    .line 3776
    :try_start_1d7
    invoke-static {v14, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1db
    .catch Ljava/lang/NumberFormatException; {:try_start_1d7 .. :try_end_1db} :catch_1e0

    move-wide/from16 v29, v16

    .line 3778
    :goto_1dd
    move-wide/from16 v63, v29

    goto :goto_1f9

    .line 3777
    :catch_1e0
    move-exception v0

    goto :goto_1dd

    .line 3780
    :cond_1e2
    :try_start_1e2
    const-string/jumbo v0, "ts"

    const/4 v5, 0x0

    invoke-interface {v13, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1ea
    .catch Ljava/lang/NumberFormatException; {:try_start_1e2 .. :try_end_1ea} :catch_8e6

    move-object v14, v0

    .line 3781
    if-eqz v14, :cond_1f7

    .line 3783
    :try_start_1ed
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_1f1
    .catch Ljava/lang/NumberFormatException; {:try_start_1ed .. :try_end_1f1} :catch_1f6

    move-wide/from16 v29, v17

    .line 3785
    move-wide/from16 v63, v29

    goto :goto_1f9

    .line 3784
    :catch_1f6
    move-exception v0

    .line 3788
    :cond_1f7
    move-wide/from16 v63, v29

    .end local v29  # "timeStamp":J
    .local v63, "timeStamp":J
    :goto_1f9
    :try_start_1f9
    const-string/jumbo v0, "it"

    const/4 v5, 0x0

    invoke-interface {v13, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_201
    .catch Ljava/lang/NumberFormatException; {:try_start_1f9 .. :try_end_201} :catch_8c5

    move-object v5, v0

    .line 3789
    .end local v14  # "timeStampStr":Ljava/lang/String;
    .local v5, "timeStampStr":Ljava/lang/String;
    if-eqz v5, :cond_210

    .line 3791
    const/16 v14, 0x10

    :try_start_206
    invoke-static {v5, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17
    :try_end_20a
    .catch Ljava/lang/NumberFormatException; {:try_start_206 .. :try_end_20a} :catch_20f

    move-wide/from16 v31, v17

    .line 3793
    move-wide/from16 v65, v31

    goto :goto_212

    .line 3792
    :catch_20f
    move-exception v0

    .line 3795
    :cond_210
    move-wide/from16 v65, v31

    .end local v31  # "firstInstallTime":J
    .local v65, "firstInstallTime":J
    :goto_212
    :try_start_212
    const-string/jumbo v0, "ut"

    const/4 v14, 0x0

    invoke-interface {v13, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_21a
    .catch Ljava/lang/NumberFormatException; {:try_start_212 .. :try_end_21a} :catch_8a4

    move-object v5, v0

    .line 3796
    if-eqz v5, :cond_229

    .line 3798
    const/16 v14, 0x10

    :try_start_21f
    invoke-static {v5, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_223
    .catch Ljava/lang/NumberFormatException; {:try_start_21f .. :try_end_223} :catch_228

    move-wide/from16 v33, v16

    .line 3800
    move-wide/from16 v67, v33

    goto :goto_22b

    .line 3799
    :catch_228
    move-exception v0

    .line 3802
    :cond_229
    move-wide/from16 v67, v33

    .end local v33  # "lastUpdateTime":J
    .local v67, "lastUpdateTime":J
    :goto_22b
    :try_start_22b
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_22d
    .catch Ljava/lang/NumberFormatException; {:try_start_22b .. :try_end_22d} :catch_883

    const-string v14, "PackageManager"

    if-eqz v0, :cond_258

    .line 3803
    :try_start_231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v5

    .end local v5  # "timeStampStr":Ljava/lang/String;
    .local v29, "timeStampStr":Ljava/lang/String;
    const-string v5, "Reading package: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sharedUserId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25a

    .line 3802
    .end local v29  # "timeStampStr":Ljava/lang/String;
    .restart local v5  # "timeStampStr":Ljava/lang/String;
    :cond_258
    move-object/from16 v29, v5

    .line 3805
    .end local v5  # "timeStampStr":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    :goto_25a
    if-eqz v3, :cond_275

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_276

    .line 3865
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v29  # "timeStampStr":Ljava/lang/String;
    :catch_261
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v30, v2

    move-object/from16 v69, v6

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-object/from16 v6, v44

    move-object/from16 v75, v46

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .line 3805
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    :cond_275
    const/4 v0, 0x0

    .line 3806
    .local v0, "userId":I
    :goto_276
    if-eqz v4, :cond_27d

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_27c
    .catch Ljava/lang/NumberFormatException; {:try_start_231 .. :try_end_27c} :catch_261

    goto :goto_27e

    :cond_27d
    const/4 v5, 0x0

    .line 3807
    .local v5, "sharedUserId":I
    :goto_27e
    if-nez v42, :cond_287

    .line 3808
    move-object/from16 v16, v44

    move-object/from16 v69, v6

    move-object/from16 v6, v16

    .end local v42  # "resourcePathStr":Ljava/lang/String;
    .local v16, "resourcePathStr":Ljava/lang/String;
    goto :goto_28b

    .line 3807
    .end local v16  # "resourcePathStr":Ljava/lang/String;
    .restart local v42  # "resourcePathStr":Ljava/lang/String;
    :cond_287
    move-object/from16 v69, v6

    move-object/from16 v6, v42

    .line 3810
    .end local v42  # "resourcePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v69, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :goto_28b
    if-eqz v2, :cond_2aa

    .line 3811
    :try_start_28d
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16
    :try_end_291
    .catch Ljava/lang/NumberFormatException; {:try_start_28d .. :try_end_291} :catch_296

    move-object/from16 v2, v16

    move-object/from16 v30, v2

    goto :goto_2ac

    .line 3865
    .end local v0  # "userId":I
    .end local v5  # "sharedUserId":I
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v29  # "timeStampStr":Ljava/lang/String;
    :catch_296
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v30, v2

    move-object/from16 v42, v6

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-object/from16 v6, v44

    move-object/from16 v75, v46

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .line 3810
    .restart local v0  # "userId":I
    .restart local v5  # "sharedUserId":I
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    :cond_2aa
    move-object/from16 v30, v2

    .line 3813
    .end local v2  # "realName":Ljava/lang/String;
    .local v30, "realName":Ljava/lang/String;
    :goto_2ac
    if-nez v1, :cond_304

    .line 3814
    :try_start_2ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2c3
    .catch Ljava/lang/NumberFormatException; {:try_start_2ae .. :try_end_2c3} :catch_2f2

    .line 3814
    const/4 v14, 0x5

    :try_start_2c4
    invoke-static {v14, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2c7
    .catch Ljava/lang/NumberFormatException; {:try_start_2c4 .. :try_end_2c7} :catch_2e0

    move-object/from16 v14, p0

    move-object v5, v1

    move-object/from16 v72, v3

    move-object/from16 v81, v6

    move-object/from16 v76, v7

    move-object v2, v10

    move-object/from16 v78, v12

    move-object/from16 v75, v46

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v17, v67

    move-object/from16 v6, v69

    const/4 v1, 0x5

    goto/16 :goto_7fa

    .line 3865
    .end local v0  # "userId":I
    .end local v5  # "sharedUserId":I
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v29  # "timeStampStr":Ljava/lang/String;
    :catch_2e0
    move-exception v0

    move-object/from16 v42, v6

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-object/from16 v6, v44

    move-object/from16 v75, v46

    move-object v10, v3

    move-object v3, v11

    move v11, v14

    move-object/from16 v14, p0

    goto/16 :goto_ab2

    :catch_2f2
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v42, v6

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-object/from16 v6, v44

    move-object/from16 v75, v46

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .line 3817
    .restart local v0  # "userId":I
    .restart local v5  # "sharedUserId":I
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    :cond_304
    move-object/from16 v2, v44

    .end local v44  # "codePathStr":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    if-nez v2, :cond_374

    .line 3818
    :try_start_308
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_30d
    .catch Ljava/lang/NumberFormatException; {:try_start_308 .. :try_end_30d} :catch_360

    move-object/from16 v44, v3

    .end local v3  # "idStr":Ljava/lang/String;
    .local v44, "idStr":Ljava/lang/String;
    :try_start_30f
    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_31f
    .catch Ljava/lang/NumberFormatException; {:try_start_30f .. :try_end_31f} :catch_34e

    .line 3818
    const/4 v14, 0x5

    :try_start_320
    invoke-static {v14, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_323
    .catch Ljava/lang/NumberFormatException; {:try_start_320 .. :try_end_323} :catch_33e

    move-object v5, v1

    move-object/from16 v81, v6

    move-object/from16 v76, v7

    move-object/from16 v78, v12

    move v1, v14

    move-object/from16 v72, v44

    move-object/from16 v75, v46

    move-wide/from16 v12, v65

    move-wide/from16 v17, v67

    move-object/from16 v6, v69

    move-object/from16 v14, p0

    move-object/from16 v44, v2

    move-object v2, v10

    move-wide/from16 v10, v63

    goto/16 :goto_7fa

    .line 3865
    .end local v0  # "userId":I
    .end local v5  # "sharedUserId":I
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v29  # "timeStampStr":Ljava/lang/String;
    :catch_33e
    move-exception v0

    move-object/from16 v42, v6

    move-object v5, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move v11, v14

    move-object/from16 v10, v44

    move-object/from16 v75, v46

    move-object/from16 v14, p0

    goto :goto_35d

    :catch_34e
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v42, v6

    move-object v5, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v10, v44

    move-object/from16 v75, v46

    const/4 v11, 0x5

    :goto_35d
    move-object v6, v2

    goto/16 :goto_ab2

    .end local v44  # "idStr":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    :catch_360
    move-exception v0

    move-object/from16 v44, v3

    move-object/from16 v14, p0

    move-object/from16 v42, v6

    move-object v5, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v10, v44

    move-object/from16 v75, v46

    const/4 v11, 0x5

    move-object v6, v2

    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v44  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .line 3821
    .end local v44  # "idStr":Ljava/lang/String;
    .restart local v0  # "userId":I
    .restart local v3  # "idStr":Ljava/lang/String;
    .restart local v5  # "sharedUserId":I
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    :cond_374
    move-object/from16 v44, v3

    const/16 v31, 0x5

    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v44  # "idStr":Ljava/lang/String;
    if-lez v0, :cond_55c

    .line 3822
    :try_start_37a
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3
    :try_end_37e
    .catch Ljava/lang/NumberFormatException; {:try_start_37a .. :try_end_37e} :catch_531

    move-object/from16 v40, v4

    .end local v4  # "sharedIdStr":Ljava/lang/String;
    .local v40, "sharedIdStr":Ljava/lang/String;
    :try_start_380
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v32, v5

    .end local v5  # "sharedUserId":I
    .local v32, "sharedUserId":I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_38c
    .catch Ljava/lang/NumberFormatException; {:try_start_380 .. :try_end_38c} :catch_504

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v70, v1

    .end local v1  # "name":Ljava/lang/String;
    .local v70, "name":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v71, v2

    .end local v2  # "codePathStr":Ljava/lang/String;
    .local v71, "codePathStr":Ljava/lang/String;
    move-object v2, v3

    move-object/from16 v72, v44

    .end local v44  # "idStr":Ljava/lang/String;
    .local v72, "idStr":Ljava/lang/String;
    move-object/from16 v3, v30

    move-object/from16 v73, v40

    .end local v40  # "sharedIdStr":Ljava/lang/String;
    .local v73, "sharedIdStr":Ljava/lang/String;
    move/from16 v74, v32

    move-object/from16 v75, v46

    .end local v32  # "sharedUserId":I
    .local v74, "sharedUserId":I
    move-object/from16 v76, v7

    move-object/from16 v7, v19

    move-object/from16 v77, v10

    move v10, v0

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-wide/from16 v11, v37

    move/from16 v13, v27

    move-object/from16 v80, v14

    move/from16 v14, v28

    move-object/from16 v81, v6

    move-object/from16 v6, v69

    .end local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v81, "resourcePathStr":Ljava/lang/String;
    :try_start_3ba
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_3be
    .catch Ljava/lang/NumberFormatException; {:try_start_3ba .. :try_end_3be} :catch_4e5

    .line 3827
    .end local v35  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_3be
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_3c0
    .catch Ljava/lang/NumberFormatException; {:try_start_3be .. :try_end_3c0} :catch_4c4

    if-eqz v2, :cond_406

    .line 3828
    :try_start_3c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3cc
    .catch Ljava/lang/NumberFormatException; {:try_start_3c2 .. :try_end_3cc} :catch_3eb

    move-object/from16 v5, v70

    .end local v70  # "name":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :try_start_3ce
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v80

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_408

    .line 3865
    .end local v0  # "userId":I
    .end local v5  # "name":Ljava/lang/String;
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v29  # "timeStampStr":Ljava/lang/String;
    .end local v74  # "sharedUserId":I
    .restart local v70  # "name":Ljava/lang/String;
    :catch_3eb
    move-exception v0

    move-object/from16 v5, v70

    move-object/from16 v14, p0

    move-object/from16 v35, v1

    move-object v1, v5

    move-object/from16 v69, v6

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    .end local v70  # "name":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    goto/16 :goto_ab2

    .line 3827
    .end local v5  # "name":Ljava/lang/String;
    .restart local v0  # "userId":I
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    .restart local v70  # "name":Ljava/lang/String;
    .restart local v74  # "sharedUserId":I
    :cond_406
    move-object/from16 v5, v70

    .line 3830
    .end local v70  # "name":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    :goto_408
    if-nez v1, :cond_44b

    .line 3831
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3831
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_42b
    .catch Ljava/lang/NumberFormatException; {:try_start_3ce .. :try_end_42b} :catch_432

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v2, v67

    goto :goto_458

    .line 3865
    .end local v0  # "userId":I
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v29  # "timeStampStr":Ljava/lang/String;
    .end local v74  # "sharedUserId":I
    :catch_432
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v35, v1

    move-object v1, v5

    move-object/from16 v69, v6

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .line 3835
    .restart local v0  # "userId":I
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    .restart local v74  # "sharedUserId":I
    :cond_44b
    move-wide/from16 v10, v63

    .end local v63  # "timeStamp":J
    .local v10, "timeStamp":J
    :try_start_44d
    invoke-virtual {v1, v10, v11}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_450
    .catch Ljava/lang/NumberFormatException; {:try_start_44d .. :try_end_450} :catch_4a5

    .line 3836
    move-wide/from16 v12, v65

    .end local v65  # "firstInstallTime":J
    .local v12, "firstInstallTime":J
    :try_start_452
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_454
    .catch Ljava/lang/NumberFormatException; {:try_start_452 .. :try_end_454} :catch_486

    .line 3837
    move-wide/from16 v2, v67

    .end local v67  # "lastUpdateTime":J
    .local v2, "lastUpdateTime":J
    :try_start_456
    iput-wide v2, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_458
    .catch Ljava/lang/NumberFormatException; {:try_start_456 .. :try_end_458} :catch_467

    .line 3869
    .end local v0  # "userId":I
    .end local v29  # "timeStampStr":Ljava/lang/String;
    .end local v74  # "sharedUserId":I
    :goto_458
    move-object/from16 v14, p0

    move-object/from16 v35, v1

    move-wide/from16 v17, v2

    move-object/from16 v44, v71

    move-object/from16 v4, v73

    move-object/from16 v2, v77

    const/4 v1, 0x5

    goto/16 :goto_7fa

    .line 3865
    .end local v15  # "parentPackageName":Ljava/lang/String;
    :catch_467
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v35, v1

    move-wide/from16 v67, v2

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .end local v2  # "lastUpdateTime":J
    .restart local v67  # "lastUpdateTime":J
    :catch_486
    move-exception v0

    move-wide/from16 v2, v67

    move-object/from16 v14, p0

    move-object/from16 v35, v1

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    .end local v67  # "lastUpdateTime":J
    .restart local v2  # "lastUpdateTime":J
    goto/16 :goto_ab2

    .end local v2  # "lastUpdateTime":J
    .end local v12  # "firstInstallTime":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    :catch_4a5
    move-exception v0

    move-wide/from16 v12, v65

    move-wide/from16 v2, v67

    move-object/from16 v14, p0

    move-object/from16 v35, v1

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    .end local v65  # "firstInstallTime":J
    .end local v67  # "lastUpdateTime":J
    .restart local v2  # "lastUpdateTime":J
    .restart local v12  # "firstInstallTime":J
    goto/16 :goto_ab2

    .end local v2  # "lastUpdateTime":J
    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    .restart local v70  # "name":Ljava/lang/String;
    :catch_4c4
    move-exception v0

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v2, v67

    move-object/from16 v5, v70

    move-object/from16 v14, p0

    move-object/from16 v35, v1

    move-object v1, v5

    move-object/from16 v69, v6

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    .end local v63  # "timeStamp":J
    .end local v65  # "firstInstallTime":J
    .end local v67  # "lastUpdateTime":J
    .end local v70  # "name":Ljava/lang/String;
    .restart local v2  # "lastUpdateTime":J
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v12  # "firstInstallTime":J
    goto/16 :goto_ab2

    .end local v1  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v2  # "lastUpdateTime":J
    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .restart local v35  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    .restart local v70  # "name":Ljava/lang/String;
    :catch_4e5
    move-exception v0

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v2, v67

    move-object/from16 v5, v70

    move-object/from16 v14, p0

    move-object v1, v5

    move-object/from16 v69, v6

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    .end local v63  # "timeStamp":J
    .end local v65  # "firstInstallTime":J
    .end local v67  # "lastUpdateTime":J
    .end local v70  # "name":Ljava/lang/String;
    .restart local v2  # "lastUpdateTime":J
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v12  # "firstInstallTime":J
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .end local v71  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .end local v73  # "sharedIdStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .restart local v40  # "sharedIdStr":Ljava/lang/String;
    .restart local v44  # "idStr":Ljava/lang/String;
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    .restart local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_504
    move-exception v0

    move-object v5, v1

    move-object/from16 v71, v2

    move-object/from16 v81, v6

    move-object/from16 v77, v10

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-object/from16 v73, v40

    move-object/from16 v72, v44

    move-object/from16 v75, v46

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v2, v67

    move-object/from16 v6, v69

    move-object/from16 v14, p0

    move-object v5, v7

    move/from16 v11, v31

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    .end local v1  # "name":Ljava/lang/String;
    .end local v40  # "sharedIdStr":Ljava/lang/String;
    .end local v44  # "idStr":Ljava/lang/String;
    .end local v63  # "timeStamp":J
    .end local v65  # "firstInstallTime":J
    .end local v67  # "lastUpdateTime":J
    .end local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v2, "lastUpdateTime":J
    .restart local v5  # "name":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v12  # "firstInstallTime":J
    .restart local v71  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    .restart local v73  # "sharedIdStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .end local v71  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .end local v73  # "sharedIdStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .restart local v4  # "sharedIdStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .restart local v44  # "idStr":Ljava/lang/String;
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    .restart local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_531
    move-exception v0

    move-object v5, v1

    move-object/from16 v71, v2

    move-object/from16 v73, v4

    move-object/from16 v81, v6

    move-object/from16 v77, v10

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-object/from16 v72, v44

    move-object/from16 v75, v46

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v2, v67

    move-object/from16 v6, v69

    move-object/from16 v14, p0

    move-object v5, v7

    move/from16 v11, v31

    move-object/from16 v6, v71

    move-object/from16 v10, v72

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    .end local v1  # "name":Ljava/lang/String;
    .end local v4  # "sharedIdStr":Ljava/lang/String;
    .end local v44  # "idStr":Ljava/lang/String;
    .end local v63  # "timeStamp":J
    .end local v65  # "firstInstallTime":J
    .end local v67  # "lastUpdateTime":J
    .end local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v2, "lastUpdateTime":J
    .restart local v5  # "name":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v12  # "firstInstallTime":J
    .restart local v71  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    .restart local v73  # "sharedIdStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .line 3839
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .end local v71  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .end local v73  # "sharedIdStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v0  # "userId":I
    .restart local v1  # "name":Ljava/lang/String;
    .local v2, "codePathStr":Ljava/lang/String;
    .restart local v4  # "sharedIdStr":Ljava/lang/String;
    .local v5, "sharedUserId":I
    .local v6, "resourcePathStr":Ljava/lang/String;
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    .restart local v44  # "idStr":Ljava/lang/String;
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    .restart local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_55c
    move-object/from16 v71, v2

    move-object/from16 v73, v4

    move/from16 v74, v5

    move-object/from16 v81, v6

    move-object/from16 v76, v7

    move-object/from16 v77, v10

    move-object/from16 v79, v11

    move-object/from16 v78, v12

    move-object v3, v14

    move-object/from16 v72, v44

    move-object/from16 v75, v46

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v6, v69

    move-object v5, v1

    move-wide/from16 v1, v67

    .end local v2  # "codePathStr":Ljava/lang/String;
    .end local v44  # "idStr":Ljava/lang/String;
    .end local v63  # "timeStamp":J
    .end local v65  # "firstInstallTime":J
    .end local v67  # "lastUpdateTime":J
    .end local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v1, "lastUpdateTime":J
    .local v5, "name":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v12  # "firstInstallTime":J
    .restart local v71  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    .restart local v74  # "sharedUserId":I
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    if-eqz v4, :cond_7c0

    .line 3840
    move/from16 v7, v74

    .end local v74  # "sharedUserId":I
    .local v7, "sharedUserId":I
    if-lez v7, :cond_6eb

    .line 3841
    :try_start_580
    new-instance v14, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v46

    move/from16 v16, v0

    .end local v0  # "userId":I
    .local v16, "userId":I
    new-instance v0, Ljava/io/File;
    :try_end_58a
    .catch Ljava/lang/NumberFormatException; {:try_start_580 .. :try_end_58a} :catch_6c8

    move-object/from16 v73, v4

    move-object/from16 v4, v71

    .end local v71  # "codePathStr":Ljava/lang/String;
    .local v4, "codePathStr":Ljava/lang/String;
    .restart local v73  # "sharedIdStr":Ljava/lang/String;
    :try_start_58e
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_591
    .catch Ljava/lang/NumberFormatException; {:try_start_58e .. :try_end_591} :catch_6a5

    move-object/from16 v44, v4

    .end local v4  # "codePathStr":Ljava/lang/String;
    .local v44, "codePathStr":Ljava/lang/String;
    :try_start_593
    new-instance v4, Ljava/io/File;
    :try_end_595
    .catch Ljava/lang/NumberFormatException; {:try_start_593 .. :try_end_595} :catch_684

    move-object/from16 v80, v3

    move-object/from16 v3, v81

    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .local v3, "resourcePathStr":Ljava/lang/String;
    :try_start_599
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v59, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v45, v14

    move-object/from16 v47, v30

    move-object/from16 v48, v0

    move-object/from16 v49, v4

    move-object/from16 v50, v6

    move-object/from16 v51, v19

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-wide/from16 v54, v37

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v15

    move/from16 v60, v7

    invoke-direct/range {v45 .. v62}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    :try_end_5bf
    .catch Ljava/lang/NumberFormatException; {:try_start_599 .. :try_end_5bf} :catch_665

    move-object v4, v14

    .line 3847
    .end local v35  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v4, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_5c0
    invoke-virtual {v4, v10, v11}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3848
    iput-wide v12, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3849
    iput-wide v1, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_5c7
    .catch Ljava/lang/NumberFormatException; {:try_start_5c0 .. :try_end_5c7} :catch_644

    .line 3850
    move-object/from16 v14, p0

    :try_start_5c9
    iget-object v0, v14, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3851
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v0, :cond_618

    .line 3852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5d7
    .catch Ljava/lang/NumberFormatException; {:try_start_5c9 .. :try_end_5d7} :catch_625

    move-wide/from16 v17, v1

    .end local v1  # "lastUpdateTime":J
    .local v17, "lastUpdateTime":J
    :try_start_5d9
    const-string v1, "Reading package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": sharedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v80

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5fa
    .catch Ljava/lang/NumberFormatException; {:try_start_5d9 .. :try_end_5fa} :catch_5fb

    goto :goto_61a

    .line 3865
    .end local v7  # "sharedUserId":I
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v16  # "userId":I
    .end local v29  # "timeStampStr":Ljava/lang/String;
    :catch_5fb
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v35, v4

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .line 3851
    .end local v17  # "lastUpdateTime":J
    .restart local v1  # "lastUpdateTime":J
    .restart local v7  # "sharedUserId":I
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v16  # "userId":I
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    :cond_618
    move-wide/from16 v17, v1

    .line 3869
    .end local v1  # "lastUpdateTime":J
    .end local v7  # "sharedUserId":I
    .end local v16  # "userId":I
    .end local v29  # "timeStampStr":Ljava/lang/String;
    .restart local v17  # "lastUpdateTime":J
    :goto_61a
    move-object/from16 v81, v3

    move-object/from16 v35, v4

    move-object/from16 v4, v73

    move-object/from16 v2, v77

    const/4 v1, 0x5

    goto/16 :goto_7fa

    .line 3865
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v17  # "lastUpdateTime":J
    .restart local v1  # "lastUpdateTime":J
    :catch_625
    move-exception v0

    move-wide/from16 v17, v1

    move-object/from16 v42, v3

    move-object/from16 v35, v4

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1  # "lastUpdateTime":J
    .restart local v17  # "lastUpdateTime":J
    goto/16 :goto_ab2

    .end local v17  # "lastUpdateTime":J
    .restart local v1  # "lastUpdateTime":J
    :catch_644
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v17, v1

    move-object/from16 v42, v3

    move-object/from16 v35, v4

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1  # "lastUpdateTime":J
    .restart local v17  # "lastUpdateTime":J
    goto/16 :goto_ab2

    .end local v4  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v17  # "lastUpdateTime":J
    .restart local v1  # "lastUpdateTime":J
    .restart local v35  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_665
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v17, v1

    move-object/from16 v42, v3

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1  # "lastUpdateTime":J
    .restart local v17  # "lastUpdateTime":J
    goto/16 :goto_ab2

    .end local v3  # "resourcePathStr":Ljava/lang/String;
    .end local v17  # "lastUpdateTime":J
    .restart local v1  # "lastUpdateTime":J
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    :catch_684
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v17, v1

    move-object/from16 v3, v81

    move-object/from16 v42, v3

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1  # "lastUpdateTime":J
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v3  # "resourcePathStr":Ljava/lang/String;
    .restart local v17  # "lastUpdateTime":J
    goto/16 :goto_ab2

    .end local v3  # "resourcePathStr":Ljava/lang/String;
    .end local v17  # "lastUpdateTime":J
    .end local v44  # "codePathStr":Ljava/lang/String;
    .restart local v1  # "lastUpdateTime":J
    .local v4, "codePathStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    :catch_6a5
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v17, v1

    move-object/from16 v44, v4

    move-object/from16 v3, v81

    move-object/from16 v42, v3

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v4, v73

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1  # "lastUpdateTime":J
    .end local v4  # "codePathStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v3  # "resourcePathStr":Ljava/lang/String;
    .restart local v17  # "lastUpdateTime":J
    .restart local v44  # "codePathStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v3  # "resourcePathStr":Ljava/lang/String;
    .end local v17  # "lastUpdateTime":J
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v73  # "sharedIdStr":Ljava/lang/String;
    .restart local v1  # "lastUpdateTime":J
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v71  # "codePathStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    :catch_6c8
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v17, v1

    move-object/from16 v73, v4

    move-object/from16 v44, v71

    move-object/from16 v3, v81

    move-object/from16 v42, v3

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    const/4 v11, 0x5

    .end local v1  # "lastUpdateTime":J
    .end local v4  # "sharedIdStr":Ljava/lang/String;
    .end local v71  # "codePathStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v3  # "resourcePathStr":Ljava/lang/String;
    .restart local v17  # "lastUpdateTime":J
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v73  # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .line 3855
    .end local v3  # "resourcePathStr":Ljava/lang/String;
    .end local v17  # "lastUpdateTime":J
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v73  # "sharedIdStr":Ljava/lang/String;
    .restart local v0  # "userId":I
    .restart local v1  # "lastUpdateTime":J
    .restart local v4  # "sharedIdStr":Ljava/lang/String;
    .restart local v7  # "sharedUserId":I
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    .restart local v71  # "codePathStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    :cond_6eb
    move-object/from16 v14, p0

    move/from16 v16, v0

    move-wide/from16 v17, v1

    move-object/from16 v73, v4

    move-object/from16 v44, v71

    move-object/from16 v3, v81

    .end local v0  # "userId":I
    .end local v1  # "lastUpdateTime":J
    .end local v4  # "sharedIdStr":Ljava/lang/String;
    .end local v71  # "codePathStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v3  # "resourcePathStr":Ljava/lang/String;
    .restart local v16  # "userId":I
    .restart local v17  # "lastUpdateTime":J
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v73  # "sharedIdStr":Ljava/lang/String;
    :try_start_6f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6fc
    .catch Ljava/lang/NumberFormatException; {:try_start_6f7 .. :try_end_6fc} :catch_7a3

    move-object/from16 v1, v76

    :try_start_6fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad sharedId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_709
    .catch Ljava/lang/NumberFormatException; {:try_start_6fe .. :try_end_709} :catch_785

    move-object/from16 v4, v73

    .end local v73  # "sharedIdStr":Ljava/lang/String;
    .restart local v4  # "sharedIdStr":Ljava/lang/String;
    :try_start_70b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_70e
    .catch Ljava/lang/NumberFormatException; {:try_start_70b .. :try_end_70e} :catch_768

    move-object/from16 v2, v77

    :try_start_710
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_713
    .catch Ljava/lang/NumberFormatException; {:try_start_710 .. :try_end_713} :catch_757

    .line 3858
    move-object/from16 v81, v3

    .end local v3  # "resourcePathStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    :try_start_715
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_720
    .catch Ljava/lang/NumberFormatException; {:try_start_715 .. :try_end_720} :catch_73d

    .line 3855
    const/4 v3, 0x5

    :try_start_721
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_724
    .catch Ljava/lang/NumberFormatException; {:try_start_721 .. :try_end_724} :catch_729

    move-object/from16 v76, v1

    move v1, v3

    goto/16 :goto_7fa

    .line 3865
    .end local v7  # "sharedUserId":I
    .end local v15  # "parentPackageName":Ljava/lang/String;
    .end local v16  # "userId":I
    .end local v29  # "timeStampStr":Ljava/lang/String;
    :catch_729
    move-exception v0

    move-object v7, v2

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v42, v81

    move v11, v3

    move-object/from16 v3, v79

    goto :goto_750

    :catch_73d
    move-exception v0

    move-object v7, v2

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    :goto_750
    move-object/from16 v82, v5

    move-object v5, v1

    move-object/from16 v1, v82

    goto/16 :goto_ab2

    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v3  # "resourcePathStr":Ljava/lang/String;
    :catch_757
    move-exception v0

    move-object/from16 v81, v3

    move-object v7, v2

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    goto :goto_779

    :catch_768
    move-exception v0

    move-object/from16 v81, v3

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v7, v77

    :goto_779
    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    move-object/from16 v82, v5

    move-object v5, v1

    move-object/from16 v1, v82

    .end local v3  # "resourcePathStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v4  # "sharedIdStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .restart local v3  # "resourcePathStr":Ljava/lang/String;
    .restart local v73  # "sharedIdStr":Ljava/lang/String;
    :catch_785
    move-exception v0

    move-object/from16 v81, v3

    move-object/from16 v4, v73

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    move-object/from16 v82, v5

    move-object v5, v1

    move-object/from16 v1, v82

    goto :goto_7be

    :catch_7a3
    move-exception v0

    move-object/from16 v81, v3

    move-object/from16 v4, v73

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    move-object/from16 v7, v77

    move-object/from16 v3, v79

    move-object/from16 v42, v81

    const/4 v11, 0x5

    .end local v3  # "resourcePathStr":Ljava/lang/String;
    .end local v73  # "sharedIdStr":Ljava/lang/String;
    .restart local v4  # "sharedIdStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    :goto_7be
    goto/16 :goto_ab2

    .line 3861
    .end local v17  # "lastUpdateTime":J
    .end local v44  # "codePathStr":Ljava/lang/String;
    .restart local v0  # "userId":I
    .restart local v1  # "lastUpdateTime":J
    .restart local v15  # "parentPackageName":Ljava/lang/String;
    .restart local v29  # "timeStampStr":Ljava/lang/String;
    .restart local v71  # "codePathStr":Ljava/lang/String;
    .restart local v74  # "sharedUserId":I
    :cond_7c0
    move-object/from16 v14, p0

    move/from16 v16, v0

    move-wide/from16 v17, v1

    move-object/from16 v44, v71

    move/from16 v7, v74

    move-object/from16 v1, v76

    move-object/from16 v2, v77

    const/4 v3, 0x5

    .end local v0  # "userId":I
    .end local v1  # "lastUpdateTime":J
    .end local v71  # "codePathStr":Ljava/lang/String;
    .end local v74  # "sharedUserId":I
    .restart local v7  # "sharedUserId":I
    .restart local v16  # "userId":I
    .restart local v17  # "lastUpdateTime":J
    .restart local v44  # "codePathStr":Ljava/lang/String;
    :try_start_7cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7da
    .catch Ljava/lang/NumberFormatException; {:try_start_7cf .. :try_end_7da} :catch_868

    move-object/from16 v3, v79

    :try_start_7dc
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7df
    .catch Ljava/lang/NumberFormatException; {:try_start_7dc .. :try_end_7df} :catch_850

    move-object/from16 v76, v1

    move-object/from16 v1, v72

    .end local v72  # "idStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    :try_start_7e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e9
    .catch Ljava/lang/NumberFormatException; {:try_start_7e3 .. :try_end_7e9} :catch_838

    .line 3863
    move-object/from16 v72, v1

    .end local v1  # "idStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    :try_start_7eb
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7f6
    .catch Ljava/lang/NumberFormatException; {:try_start_7eb .. :try_end_7f6} :catch_822

    .line 3861
    const/4 v1, 0x5

    :try_start_7f7
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_7fa
    .catch Ljava/lang/NumberFormatException; {:try_start_7f7 .. :try_end_7fa} :catch_820

    .line 3869
    .end local v7  # "sharedUserId":I
    .end local v16  # "userId":I
    .end local v29  # "timeStampStr":Ljava/lang/String;
    :goto_7fa
    move-object v7, v2

    move-object/from16 v16, v4

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v10, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v13, v25

    move-object/from16 v1, v35

    move-object/from16 v15, v39

    move-object/from16 v2, v41

    move-object/from16 v14, v72

    move-object v11, v5

    move-object v12, v8

    move-object/from16 v17, v9

    move/from16 v8, v26

    move-object/from16 v5, v76

    move-object v9, v6

    move-object/from16 v6, v23

    goto/16 :goto_af3

    .line 3865
    .end local v15  # "parentPackageName":Ljava/lang/String;
    :catch_820
    move-exception v0

    goto :goto_86e

    :catch_822
    move-exception v0

    move-object v7, v2

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    move-object/from16 v42, v81

    const/4 v11, 0x5

    goto/16 :goto_ab2

    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "idStr":Ljava/lang/String;
    :catch_838
    move-exception v0

    move-object/from16 v72, v1

    move-object v7, v2

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    move-object/from16 v42, v81

    const/4 v11, 0x5

    .end local v1  # "idStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    :catch_850
    move-exception v0

    move-object/from16 v76, v1

    move-object v7, v2

    move-object v1, v5

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    move-object/from16 v42, v81

    const/4 v11, 0x5

    goto/16 :goto_ab2

    :catch_868
    move-exception v0

    move-object/from16 v76, v1

    move v1, v3

    move-object/from16 v3, v79

    :goto_86e
    move-object v7, v2

    move-object/from16 v69, v6

    move-wide/from16 v63, v10

    move-wide/from16 v65, v12

    move-wide/from16 v67, v17

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v42, v81

    move v11, v1

    move-object v1, v5

    move-object/from16 v5, v76

    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .end local v17  # "lastUpdateTime":J
    .end local v30  # "realName":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .end local v81  # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v42  # "resourcePathStr":Ljava/lang/String;
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    :catch_883
    move-exception v0

    move-object/from16 v14, p0

    move-object v5, v1

    move-object/from16 v72, v3

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v75, v46

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-wide/from16 v33, v67

    move-object/from16 v30, v2

    move-object/from16 v69, v6

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v63  # "timeStamp":J
    .end local v65  # "firstInstallTime":J
    .end local v67  # "lastUpdateTime":J
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v12  # "firstInstallTime":J
    .restart local v33  # "lastUpdateTime":J
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    :catch_8a4
    move-exception v0

    move-object/from16 v14, p0

    move-object v5, v1

    move-object/from16 v72, v3

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v75, v46

    move-wide/from16 v10, v63

    move-wide/from16 v12, v65

    move-object/from16 v30, v2

    move-object/from16 v69, v6

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v63  # "timeStamp":J
    .end local v65  # "firstInstallTime":J
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v12  # "firstInstallTime":J
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v12  # "firstInstallTime":J
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .restart local v31  # "firstInstallTime":J
    .restart local v63  # "timeStamp":J
    :catch_8c5
    move-exception v0

    move-object/from16 v14, p0

    move-object v5, v1

    move-object/from16 v72, v3

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v75, v46

    move-wide/from16 v10, v63

    move-object/from16 v30, v2

    move-object/from16 v69, v6

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v63  # "timeStamp":J
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v10  # "timeStamp":J
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "timeStamp":J
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .local v29, "timeStamp":J
    :catch_8e6
    move-exception v0

    move-object/from16 v14, p0

    move-object v5, v1

    move-object/from16 v72, v3

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object/from16 v75, v46

    move-object/from16 v69, v6

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    :catch_907
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v69, v6

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v19  # "primaryCpuAbiString":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .local v17, "primaryCpuAbiString":Ljava/lang/String;
    :catch_928
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v69, v6

    move-object/from16 v19, v17

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .local v9, "codePathStr":Ljava/lang/String;
    .local v19, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_94b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v76, v7

    move-object/from16 v44, v9

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v69, v6

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v9  # "codePathStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v8  # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .restart local v9  # "codePathStr":Ljava/lang/String;
    .restart local v18  # "secondaryCpuAbiString":Ljava/lang/String;
    :catch_972
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v76, v7

    move-object/from16 v44, v9

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v69, v6

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v6, v44

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v9  # "codePathStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .local v6, "codePathStr":Ljava/lang/String;
    .local v16, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_99b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v44, v6

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v69, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v6  # "codePathStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v43  # "legacyCpuAbiString":Ljava/lang/String;
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .restart local v6  # "codePathStr":Ljava/lang/String;
    .local v9, "legacyCpuAbiString":Ljava/lang/String;
    :catch_9c2
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v44, v6

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v43, v9

    move-object/from16 v69, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v6  # "codePathStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v42  # "resourcePathStr":Ljava/lang/String;
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .restart local v6  # "codePathStr":Ljava/lang/String;
    .local v8, "resourcePathStr":Ljava/lang/String;
    :catch_9eb
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v44, v6

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v69, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v6  # "codePathStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v44  # "codePathStr":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .restart local v6  # "codePathStr":Ljava/lang/String;
    :catch_a16
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v69, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto/16 :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v41  # "uidError":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    .local v15, "uidError":Ljava/lang/String;
    :catch_a3f
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    move-object/from16 v76, v7

    move-object v7, v10

    move-object v3, v11

    move-object/from16 v78, v12

    move-object v5, v1

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v41, v15

    move-object/from16 v69, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v10, v72

    move-object/from16 v5, v76

    const/4 v11, 0x5

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    goto :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    :catch_a69
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v75, v5

    move-object/from16 v76, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-object v5, v1

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x5

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v41, v15

    move-object/from16 v69, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v5, v76

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .restart local v5  # "name":Ljava/lang/String;
    .local v10, "idStr":Ljava/lang/String;
    goto :goto_ab2

    .end local v5  # "name":Ljava/lang/String;
    .end local v10  # "idStr":Ljava/lang/String;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "idStr":Ljava/lang/String;
    :catch_a90
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v75, v5

    move-object v5, v7

    move-object v7, v10

    move-object/from16 v78, v12

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x5

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v41, v15

    move-object/from16 v69, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v63, v29

    move-wide/from16 v65, v31

    move-wide/from16 v67, v33

    move-object/from16 v30, v2

    move-object/from16 v19, v17

    .line 3866
    .end local v2  # "realName":Ljava/lang/String;
    .end local v3  # "idStr":Ljava/lang/String;
    .end local v15  # "uidError":Ljava/lang/String;
    .end local v16  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v17  # "primaryCpuAbiString":Ljava/lang/String;
    .end local v18  # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v29  # "timeStamp":J
    .end local v31  # "firstInstallTime":J
    .end local v33  # "lastUpdateTime":J
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v10  # "idStr":Ljava/lang/String;
    .local v19, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v30  # "realName":Ljava/lang/String;
    .restart local v41  # "uidError":Ljava/lang/String;
    .restart local v42  # "resourcePathStr":Ljava/lang/String;
    .restart local v43  # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v63  # "timeStamp":J
    .restart local v65  # "firstInstallTime":J
    .restart local v67  # "lastUpdateTime":J
    .restart local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :goto_ab2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3868
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3866
    invoke-static {v11, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object v11, v1

    move-object/from16 v16, v4

    move-object/from16 v44, v6

    move-object v12, v8

    move-object/from16 v17, v9

    move-object v14, v10

    move-object/from16 v10, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    move-object/from16 v13, v25

    move/from16 v8, v26

    move-object/from16 v1, v35

    move-object/from16 v15, v39

    move-object/from16 v2, v41

    move-object/from16 v81, v42

    move-object/from16 v9, v69

    .line 3870
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .end local v19  # "primaryCpuAbiString":Ljava/lang/String;
    .end local v21  # "installerPackageName":Ljava/lang/String;
    .end local v22  # "isOrphaned":Ljava/lang/String;
    .end local v23  # "volumeUuid":Ljava/lang/String;
    .end local v25  # "updateAvailable":Ljava/lang/String;
    .end local v26  # "categoryHint":I
    .end local v35  # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v39  # "forceFull":Ljava/lang/String;
    .end local v41  # "uidError":Ljava/lang/String;
    .end local v42  # "resourcePathStr":Ljava/lang/String;
    .end local v69  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "uidError":Ljava/lang/String;
    .local v3, "installerPackageName":Ljava/lang/String;
    .local v4, "isOrphaned":Ljava/lang/String;
    .local v6, "volumeUuid":Ljava/lang/String;
    .local v8, "categoryHint":I
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v10, "primaryCpuAbiString":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    .local v12, "secondaryCpuAbiString":Ljava/lang/String;
    .local v13, "updateAvailable":Ljava/lang/String;
    .local v14, "idStr":Ljava/lang/String;
    .local v15, "forceFull":Ljava/lang/String;
    .local v16, "sharedIdStr":Ljava/lang/String;
    .local v17, "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v44  # "codePathStr":Ljava/lang/String;
    .restart local v81  # "resourcePathStr":Ljava/lang/String;
    :goto_af3
    if-eqz v1, :cond_d8e

    .line 3871
    move-object/from16 v77, v7

    move-object/from16 v7, v75

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 3872
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    .line 3873
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 3874
    iput-object v6, v1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3875
    iput v8, v1, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 3876
    iput-object v9, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3877
    iput-object v10, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 3878
    iput-object v12, v1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3879
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 3881
    move-object/from16 v18, v2

    .end local v2  # "uidError":Ljava/lang/String;
    .local v18, "uidError":Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v19, v4

    const/4 v4, 0x1

    .end local v4  # "isOrphaned":Ljava/lang/String;
    .local v19, "isOrphaned":Ljava/lang/String;
    xor-int/2addr v0, v4

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    .line 3885
    const-string v0, "enabled"

    move-object/from16 v4, p1

    move-object/from16 v21, v6

    move/from16 v22, v8

    const/4 v6, 0x0

    .end local v6  # "volumeUuid":Ljava/lang/String;
    .end local v8  # "categoryHint":I
    .local v21, "volumeUuid":Ljava/lang/String;
    .local v22, "categoryHint":I
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3886
    .local v8, "enabledStr":Ljava/lang/String;
    if-eqz v8, :cond_b8f

    .line 3888
    :try_start_b34
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b38
    .catch Ljava/lang/NumberFormatException; {:try_start_b34 .. :try_end_b38} :catch_b41

    move-object/from16 v23, v9

    const/4 v9, 0x0

    .end local v9  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v23, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_b3b
    invoke-virtual {v1, v0, v9, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_b3e
    .catch Ljava/lang/NumberFormatException; {:try_start_b3b .. :try_end_b3e} :catch_b3f

    .line 3902
    :goto_b3e
    goto :goto_b95

    .line 3889
    :catch_b3f
    move-exception v0

    goto :goto_b45

    .end local v23  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v9  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_b41
    move-exception v0

    move-object/from16 v23, v9

    const/4 v9, 0x0

    .line 3890
    .end local v9  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v0  # "e":Ljava/lang/NumberFormatException;
    .restart local v23  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :goto_b45
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b50

    .line 3891
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_b3e

    .line 3892
    :cond_b50
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5b

    .line 3893
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v9, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_b3e

    .line 3894
    :cond_b5b
    const-string v2, "default"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b67

    .line 3895
    invoke-virtual {v1, v9, v9, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_b3e

    .line 3897
    :cond_b67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has bad enabled value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v77

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3900
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3897
    const/4 v5, 0x5

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_b3e

    .line 3904
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .end local v23  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v9  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_b8f
    move-object/from16 v23, v9

    const/4 v9, 0x0

    .end local v9  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v23  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    invoke-virtual {v1, v9, v9, v6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3907
    :goto_b95
    if-eqz v3, :cond_ba1

    .line 3908
    move-object/from16 v2, p0

    move-object/from16 v72, v14

    .end local v14  # "idStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_ba5

    .line 3907
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v14  # "idStr":Ljava/lang/String;
    :cond_ba1
    move-object/from16 v2, p0

    move-object/from16 v72, v14

    .line 3911
    .end local v14  # "idStr":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    :goto_ba5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3913
    .local v0, "outerDepth":I
    :goto_ba9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v7, v5

    const/4 v14, 0x1

    .local v7, "type":I
    if-eq v5, v14, :cond_d87

    const/4 v5, 0x3

    if-ne v7, v5, :cond_bbf

    .line 3914
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v0, :cond_bbb

    goto :goto_bbf

    :cond_bbb
    move-object/from16 v32, v3

    goto/16 :goto_d8d

    .line 3915
    :cond_bbf
    :goto_bbf
    if-eq v7, v5, :cond_d77

    const/4 v5, 0x4

    if-ne v7, v5, :cond_bc5

    .line 3916
    goto :goto_ba9

    .line 3919
    :cond_bc5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3921
    .local v5, "tagName":Ljava/lang/String;
    const-string v14, "disabled-components"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_be1

    .line 3922
    invoke-direct {v2, v1, v4, v9}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move/from16 v26, v0

    move-object/from16 v32, v3

    move/from16 v25, v7

    move-object/from16 v3, v78

    const/4 v7, 0x5

    const/16 v31, 0x1

    goto/16 :goto_d6e

    .line 3923
    :cond_be1
    const-string v14, "enabled-components"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bf9

    .line 3924
    invoke-direct {v2, v1, v4, v9}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move/from16 v26, v0

    move-object/from16 v32, v3

    move/from16 v25, v7

    move-object/from16 v3, v78

    const/4 v7, 0x5

    const/16 v31, 0x1

    goto/16 :goto_d6e

    .line 3925
    :cond_bf9
    const-string/jumbo v14, "sigs"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c16

    .line 3926
    iget-object v14, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v9, v2, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v14, v4, v9}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    move/from16 v26, v0

    move-object/from16 v32, v3

    move/from16 v25, v7

    move-object/from16 v3, v78

    const/4 v7, 0x5

    const/16 v31, 0x1

    goto/16 :goto_d6e

    .line 3927
    :cond_c16
    const-string/jumbo v9, "perms"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c37

    .line 3928
    nop

    .line 3929
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    .line 3928
    invoke-virtual {v2, v4, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 3930
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move/from16 v26, v0

    move-object/from16 v32, v3

    move/from16 v25, v7

    move/from16 v31, v9

    move-object/from16 v3, v78

    const/4 v7, 0x5

    goto/16 :goto_d6e

    .line 3931
    :cond_c37
    const-string/jumbo v9, "proper-signing-keyset"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v14, "identifier"

    if-eqz v9, :cond_c8e

    .line 3932
    invoke-interface {v4, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v25, v7

    .end local v7  # "type":I
    .local v25, "type":I
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3933
    .local v6, "id":J
    iget-object v9, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3934
    .local v9, "refCt":Ljava/lang/Integer;
    if-eqz v9, :cond_c75

    .line 3935
    iget-object v14, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move/from16 v26, v0

    .end local v0  # "outerDepth":I
    .local v26, "outerDepth":I
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v31, 0x1

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v32, v3

    .end local v3  # "installerPackageName":Ljava/lang/String;
    .local v32, "installerPackageName":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c88

    .line 3937
    .end local v26  # "outerDepth":I
    .end local v32  # "installerPackageName":Ljava/lang/String;
    .restart local v0  # "outerDepth":I
    .restart local v3  # "installerPackageName":Ljava/lang/String;
    :cond_c75
    move/from16 v26, v0

    move-object/from16 v32, v3

    const/16 v31, 0x1

    .end local v0  # "outerDepth":I
    .end local v3  # "installerPackageName":Ljava/lang/String;
    .restart local v26  # "outerDepth":I
    .restart local v32  # "installerPackageName":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v3, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    :goto_c88
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .end local v6  # "id":J
    .end local v9  # "refCt":Ljava/lang/Integer;
    goto :goto_c9d

    .line 3940
    .end local v25  # "type":I
    .end local v26  # "outerDepth":I
    .end local v32  # "installerPackageName":Ljava/lang/String;
    .restart local v0  # "outerDepth":I
    .restart local v3  # "installerPackageName":Ljava/lang/String;
    .restart local v7  # "type":I
    :cond_c8e
    move/from16 v26, v0

    move-object/from16 v32, v3

    move/from16 v25, v7

    .end local v0  # "outerDepth":I
    .end local v3  # "installerPackageName":Ljava/lang/String;
    .end local v7  # "type":I
    .restart local v25  # "type":I
    .restart local v26  # "outerDepth":I
    .restart local v32  # "installerPackageName":Ljava/lang/String;
    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca5

    :goto_c9d
    move-object/from16 v3, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v31, 0x1

    goto/16 :goto_d6e

    .line 3942
    :cond_ca5
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc4

    .line 3943
    const/4 v3, 0x0

    invoke-interface {v4, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3944
    .restart local v6  # "id":J
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 3945
    .end local v6  # "id":J
    move-object/from16 v3, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/16 v31, 0x1

    goto/16 :goto_d6e

    :cond_cc4
    const-string v0, "defined-keyset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1c

    .line 3946
    const/4 v3, 0x0

    invoke-interface {v4, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3947
    .restart local v6  # "id":J
    const-string v0, "alias"

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3948
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3949
    .local v3, "refCt":Ljava/lang/Integer;
    if-eqz v3, :cond_d01

    .line 3950
    iget-object v9, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v31, 0x1

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v33, v3

    .end local v3  # "refCt":Ljava/lang/Integer;
    .local v33, "refCt":Ljava/lang/Integer;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v14, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d12

    .line 3952
    .end local v33  # "refCt":Ljava/lang/Integer;
    .restart local v3  # "refCt":Ljava/lang/Integer;
    :cond_d01
    move-object/from16 v33, v3

    const/16 v31, 0x1

    .end local v3  # "refCt":Ljava/lang/Integer;
    .restart local v33  # "refCt":Ljava/lang/Integer;
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v9, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3954
    :goto_d12
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3, v6, v7, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 3955
    .end local v0  # "alias":Ljava/lang/String;
    .end local v6  # "id":J
    .end local v33  # "refCt":Ljava/lang/Integer;
    move-object/from16 v3, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    goto :goto_d6e

    :cond_d1c
    const/16 v31, 0x1

    const-string v0, "domain-verification"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2e

    .line 3956
    invoke-direct {v2, v4, v1}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    move-object/from16 v3, v78

    const/4 v6, 0x0

    const/4 v7, 0x5

    goto :goto_d6e

    .line 3957
    :cond_d2e
    const-string v0, "child-package"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4f

    .line 3958
    move-object/from16 v3, v78

    const/4 v6, 0x0

    invoke-interface {v4, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3959
    .local v0, "childPackageName":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v7, :cond_d48

    .line 3960
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3962
    :cond_d48
    iget-object v7, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3963
    .end local v0  # "childPackageName":Ljava/lang/String;
    const/4 v7, 0x5

    goto :goto_d6e

    .line 3964
    :cond_d4f
    move-object/from16 v3, v78

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <package>: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3964
    const/4 v7, 0x5

    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3966
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3968
    .end local v5  # "tagName":Ljava/lang/String;
    :goto_d6e
    move-object/from16 v78, v3

    move/from16 v0, v26

    move-object/from16 v3, v32

    const/4 v9, 0x0

    goto/16 :goto_ba9

    .line 3915
    .end local v25  # "type":I
    .end local v26  # "outerDepth":I
    .end local v32  # "installerPackageName":Ljava/lang/String;
    .local v0, "outerDepth":I
    .local v3, "installerPackageName":Ljava/lang/String;
    .restart local v7  # "type":I
    :cond_d77
    move/from16 v26, v0

    move-object/from16 v32, v3

    move/from16 v25, v7

    move-object/from16 v3, v78

    const/4 v7, 0x5

    const/16 v31, 0x1

    .end local v0  # "outerDepth":I
    .end local v3  # "installerPackageName":Ljava/lang/String;
    .end local v7  # "type":I
    .restart local v25  # "type":I
    .restart local v26  # "outerDepth":I
    .restart local v32  # "installerPackageName":Ljava/lang/String;
    move-object/from16 v3, v32

    const/4 v9, 0x0

    goto/16 :goto_ba9

    .line 3913
    .end local v25  # "type":I
    .end local v26  # "outerDepth":I
    .end local v32  # "installerPackageName":Ljava/lang/String;
    .restart local v0  # "outerDepth":I
    .restart local v3  # "installerPackageName":Ljava/lang/String;
    .restart local v7  # "type":I
    :cond_d87
    move/from16 v26, v0

    move-object/from16 v32, v3

    move/from16 v25, v7

    .line 3969
    .end local v0  # "outerDepth":I
    .end local v3  # "installerPackageName":Ljava/lang/String;
    .end local v7  # "type":I
    .end local v8  # "enabledStr":Ljava/lang/String;
    .restart local v32  # "installerPackageName":Ljava/lang/String;
    :goto_d8d
    goto :goto_da3

    .line 3970
    .end local v18  # "uidError":Ljava/lang/String;
    .end local v19  # "isOrphaned":Ljava/lang/String;
    .end local v21  # "volumeUuid":Ljava/lang/String;
    .end local v22  # "categoryHint":I
    .end local v23  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v32  # "installerPackageName":Ljava/lang/String;
    .end local v72  # "idStr":Ljava/lang/String;
    .restart local v2  # "uidError":Ljava/lang/String;
    .restart local v3  # "installerPackageName":Ljava/lang/String;
    .restart local v4  # "isOrphaned":Ljava/lang/String;
    .local v6, "volumeUuid":Ljava/lang/String;
    .local v8, "categoryHint":I
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v14  # "idStr":Ljava/lang/String;
    :cond_d8e
    move-object/from16 v18, v2

    move-object/from16 v32, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    move/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v72, v14

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .end local v2  # "uidError":Ljava/lang/String;
    .end local v3  # "installerPackageName":Ljava/lang/String;
    .end local v4  # "isOrphaned":Ljava/lang/String;
    .end local v6  # "volumeUuid":Ljava/lang/String;
    .end local v8  # "categoryHint":I
    .end local v9  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v14  # "idStr":Ljava/lang/String;
    .restart local v18  # "uidError":Ljava/lang/String;
    .restart local v19  # "isOrphaned":Ljava/lang/String;
    .restart local v21  # "volumeUuid":Ljava/lang/String;
    .restart local v22  # "categoryHint":I
    .restart local v23  # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v32  # "installerPackageName":Ljava/lang/String;
    .restart local v72  # "idStr":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3972
    :goto_da3
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1410
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_52

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1411
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_52

    .line 1412
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1413
    goto :goto_4

    .line 1415
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1417
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1418
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1419
    .end local v3  # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_51

    .line 1420
    :cond_35
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1420
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1423
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1425
    .end local v1  # "tagName":Ljava/lang/String;
    :goto_51
    goto :goto_4

    .line 1426
    :cond_52
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1461
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1463
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_78

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1464
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_78

    .line 1465
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1466
    goto :goto_4

    .line 1468
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1469
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "PackageSettings"

    if-eqz v3, :cond_60

    .line 1470
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1471
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v5, :cond_56

    .line 1472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored IVI for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1472
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_56
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .end local v3  # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_77

    .line 1477
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1480
    .end local v1  # "tagName":Ljava/lang/String;
    :goto_77
    goto :goto_4

    .line 1481
    :cond_78
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4031
    const-string v0, " at "

    const-string v1, " has bad userId "

    const/4 v2, 0x0

    .line 4032
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4033
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4034
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 4035
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    .line 4037
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v7, 0x5

    :try_start_a
    const-string/jumbo v8, "name"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 4038
    const-string/jumbo v8, "userId"

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 4039
    if-eqz v3, :cond_22

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_23

    :cond_22
    const/4 v8, 0x0

    .line 4040
    .local v8, "userId":I
    :goto_23
    const-string/jumbo v10, "true"

    const-string/jumbo v11, "system"

    invoke-interface {p1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 4041
    or-int/lit8 v4, v4, 0x1

    .line 4043
    :cond_35
    if-nez v2, :cond_50

    .line 4044
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4046
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4044
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    .line 4047
    :cond_50
    if-nez v8, :cond_77

    .line 4048
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: shared-user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4051
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4048
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    .line 4053
    :cond_77
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    move-object v6, v9

    if-nez v9, :cond_9b

    .line 4055
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4056
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_9b} :catch_9c

    .line 4064
    .end local v8  # "userId":I
    :cond_9b
    :goto_9b
    goto :goto_c1

    .line 4060
    :catch_9c
    move-exception v8

    .line 4061
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4063
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4061
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4066
    .end local v8  # "e":Ljava/lang/NumberFormatException;
    :goto_c1
    if-eqz v6, :cond_121

    .line 4067
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4069
    .local v0, "outerDepth":I
    :cond_c7
    :goto_c7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v8, v1

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v1, v9, :cond_120

    const/4 v1, 0x3

    if-ne v8, v1, :cond_d8

    .line 4070
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v0, :cond_120

    .line 4071
    :cond_d8
    if-eq v8, v1, :cond_c7

    const/4 v1, 0x4

    if-ne v8, v1, :cond_de

    .line 4072
    goto :goto_c7

    .line 4075
    :cond_de
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4076
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "sigs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 4077
    iget-object v9, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_11f

    .line 4078
    :cond_f3
    const-string/jumbo v9, "perms"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    .line 4079
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_11f

    .line 4081
    :cond_104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4081
    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4083
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4085
    .end local v1  # "tagName":Ljava/lang/String;
    :goto_11f
    goto :goto_c7

    .line 4086
    .end local v0  # "outerDepth":I
    .end local v8  # "type":I
    :cond_120
    goto :goto_124

    .line 4087
    :cond_121
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4089
    :goto_124
    return-void
.end method

.method private registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .registers 11
    .param p1, "appId"  # I
    .param p2, "obj"  # Lcom/android/server/pm/SettingBase;
    .param p3, "name"  # Ljava/lang/Object;

    .line 1081
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_6

    .line 1082
    return v0

    .line 1085
    :cond_6
    const-string v1, " name="

    const/4 v2, 0x6

    const/16 v3, 0x2710

    if-lt p1, v3, :cond_49

    .line 1086
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1087
    .local v3, "size":I
    add-int/lit16 v4, p1, -0x2710

    .line 1089
    .local v4, "index":I
    :goto_15
    if-lt v4, v3, :cond_20

    .line 1090
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1093
    :cond_20
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 1094
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding duplicate app id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1097
    return v0

    .line 1099
    :cond_43
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1100
    .end local v3  # "size":I
    .end local v4  # "index":I
    goto :goto_71

    .line 1101
    :cond_49
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1105
    return v0

    .line 1107
    :cond_6c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1109
    :goto_71
    const/4 v0, 0x1

    return v0
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1065
    return-void

    .line 1067
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1068
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1069
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 1071
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1072
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 1073
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 1067
    .end local v1  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2  # "installerPackageName":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1076
    .end local v0  # "i":I
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1077
    return-void
.end method

.method private replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V
    .registers 6
    .param p1, "appId"  # I
    .param p2, "obj"  # Lcom/android/server/pm/SettingBase;

    .line 1136
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_14

    .line 1137
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1138
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1139
    .local v1, "index":I
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .end local v0  # "size":I
    .end local v1  # "index":I
    :cond_13
    goto :goto_19

    .line 1141
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1143
    :goto_19
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 4217
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_6

    .line 4218
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4220
    :cond_6
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)V
    .registers 34
    .param p0, "pkgSetting"  # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkg"  # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"  # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "codePath"  # Ljava/io/File;
    .param p4, "resourcePath"  # Ljava/io/File;
    .param p5, "legacyNativeLibraryPath"  # Ljava/lang/String;
    .param p6, "primaryCpuAbi"  # Ljava/lang/String;
    .param p7, "secondaryCpuAbi"  # Ljava/lang/String;
    .param p8, "pkgFlags"  # I
    .param p9, "pkgPrivateFlags"  # I
    .param p11, "userManager"  # Lcom/android/server/pm/UserManagerService;
    .param p12, "usesStaticLibraries"  # [Ljava/lang/String;
    .param p13, "usesStaticLibrariesVersions"  # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 738
    .local p10, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 739
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v9, " to "

    if-eq v8, v1, :cond_66

    .line 740
    const/4 v8, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " shared user changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v12, "<nothing>"

    if-eqz v11, :cond_34

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v11, v11, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_35

    :cond_34
    move-object v11, v12

    :goto_35
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    if-eqz v1, :cond_3f

    iget-object v12, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :cond_3f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 740
    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 744
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/4 v9, -0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating application package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 748
    :cond_66
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v8, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "; Retain data and using new"

    const-string v11, " package "

    const-string v12, " system"

    const-string v13, ""

    const-string v14, "Update"

    const-string v15, "PackageManager"

    if-nez v8, :cond_11e

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 750
    .local v8, "isSystem":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    move-object/from16 v16, v12

    if-eqz v8, :cond_8b

    goto :goto_8c

    :cond_8b
    move-object v12, v13

    :goto_8c
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " code path from "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    if-nez v8, :cond_111

    .line 760
    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_10a

    if-nez p1, :cond_10a

    .line 761
    invoke-static/range {p11 .. p11}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    .line 762
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_105

    .line 763
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_100

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    .end local v1  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v18, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, v17

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 765
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v17

    if-eqz v17, :cond_ef

    .line 766
    move/from16 v17, v8

    .end local v8  # "isSystem":Z
    .local v17, "isSystem":Z
    invoke-static {v7}, Landroid/os/UserHandle;->isMultiSystemPackage(Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v19, v12

    iget v12, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v8, v12}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 767
    move/from16 v8, v17

    move-object/from16 v1, v18

    move-object/from16 v12, v19

    goto :goto_c5

    .line 770
    .end local v17  # "isSystem":Z
    .restart local v8  # "isSystem":Z
    :cond_ef
    move/from16 v17, v8

    move-object/from16 v19, v12

    .end local v8  # "isSystem":Z
    .restart local v17  # "isSystem":Z
    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 771
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v8, v17

    move-object/from16 v1, v18

    move-object/from16 v12, v19

    goto :goto_c5

    .line 763
    .end local v17  # "isSystem":Z
    .end local v18  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v1, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8  # "isSystem":Z
    :cond_100
    move-object/from16 v18, v1

    move/from16 v17, v8

    .end local v1  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8  # "isSystem":Z
    .restart local v17  # "isSystem":Z
    .restart local v18  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_10c

    .line 762
    .end local v17  # "isSystem":Z
    .end local v18  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8  # "isSystem":Z
    :cond_105
    move-object/from16 v18, v1

    move/from16 v17, v8

    .end local v1  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8  # "isSystem":Z
    .restart local v17  # "isSystem":Z
    .restart local v18  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_10c

    .line 760
    .end local v17  # "isSystem":Z
    .end local v18  # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8  # "isSystem":Z
    :cond_10a
    move/from16 v17, v8

    .line 778
    .end local v8  # "isSystem":Z
    .restart local v17  # "isSystem":Z
    :goto_10c
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_115

    .line 756
    .end local v17  # "isSystem":Z
    .restart local v8  # "isSystem":Z
    :cond_111
    move-object/from16 v1, p5

    move/from16 v17, v8

    .line 780
    .end local v8  # "isSystem":Z
    .restart local v17  # "isSystem":Z
    :goto_115
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 781
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    goto :goto_122

    .line 748
    .end local v17  # "isSystem":Z
    :cond_11e
    move-object/from16 v1, p5

    move-object/from16 v16, v12

    .line 783
    :goto_122
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_169

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 785
    .restart local v8  # "isSystem":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    if-eqz v8, :cond_13a

    move-object/from16 v13, v16

    :cond_13a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " resource path from "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 785
    invoke-static {v15, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 792
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 797
    .end local v8  # "isSystem":Z
    :cond_169
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 798
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v9, -0x402e0009

    and-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 804
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v9, p8, 0x1

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 805
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v9, p9, 0x8

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 807
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x20000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 809
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x40000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 811
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x80000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 813
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x200000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 815
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x40000000  # 2.0f

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 817
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 818
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 819
    if-eqz v4, :cond_1c3

    .line 820
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 823
    :cond_1c3
    if-eqz v5, :cond_1d0

    if-eqz v6, :cond_1d0

    array-length v10, v5

    array-length v11, v6

    if-ne v10, v11, :cond_1d0

    .line 825
    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 826
    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_1d5

    .line 828
    :cond_1d0
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 829
    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 831
    :goto_1d5
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .registers 6
    .param p1, "file"  # Ljava/io/File;
    .param p2, "value"  # I

    .line 2662
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2663
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2662
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2666
    goto :goto_35

    .line 2664
    :catch_12
    move-exception v0

    .line 2665
    .local v0, "ignored":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageSettings"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    .end local v0  # "ignored":Ljava/io/IOException;
    :goto_35
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 2572
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2574
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 2577
    .local v0, "removeUserIdFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2578
    return-void
.end method

.method private writePackageListLPrInternal(I)V
    .registers 20
    .param p1, "creatingUserId"  # I

    .line 2693
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "PackageSettings"

    const-string v0, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    .line 2694
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 2695
    .local v6, "userIds":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_18
    array-length v8, v6

    if-ge v7, v8, :cond_28

    .line 2696
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    aput v8, v6, v7

    .line 2695
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 2698
    .end local v7  # "i":I
    :cond_28
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2f

    .line 2699
    invoke-static {v6, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    .line 2703
    :cond_2f
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2704
    .local v7, "tempFile":Ljava/io/File;
    new-instance v8, Lcom/android/internal/util/JournaledFile;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2706
    .local v8, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    .line 2708
    .local v9, "writeTarget":Ljava/io/File;
    const/4 v10, 0x0

    .line 2710
    .local v10, "writer":Ljava/io/BufferedWriter;
    :try_start_57
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2711
    .local v11, "fstr":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v11, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v10, v12

    .line 2712
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    const/16 v13, 0x1a0

    const/16 v14, 0x3e8

    const/16 v15, 0x408

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2714
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2715
    .local v12, "sb":Ljava/lang/StringBuilder;
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_87
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_191

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2716
    .local v14, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v15, :cond_157

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_157

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez v15, :cond_aa

    move-object/from16 v17, v4

    move-object v4, v0

    goto/16 :goto_15a

    .line 2724
    :cond_aa
    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v15, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2725
    .local v15, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v15, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2726
    .local v5, "dataPath":Ljava/lang/String;
    iget v1, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b8

    const/4 v1, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v1, 0x0

    .line 2727
    .local v1, "isDebug":Z
    :goto_b9
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v2
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_c1} :catch_1a2

    .line 2730
    .local v2, "gids":[I
    move-object/from16 v17, v4

    .end local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v17, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v4, 0x20

    :try_start_c5
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_d3

    .line 2731
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, v17

    const/4 v5, 0x1

    goto :goto_87

    .line 2750
    :cond_d3
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2751
    iget-object v4, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    iget v4, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2754
    if-eqz v1, :cond_e9

    const-string v4, " 1 "

    goto :goto_eb

    :cond_e9
    const-string v4, " 0 "

    :goto_eb
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2755
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    iget-object v4, v15, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2759
    if-eqz v2, :cond_11f

    array-length v4, v2

    if-lez v4, :cond_11f

    .line 2760
    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2761
    const/4 v4, 0x1

    move/from16 v16, v4

    .local v4, "i":I
    :goto_10a
    move/from16 v16, v1

    .end local v1  # "isDebug":Z
    .local v16, "isDebug":Z
    array-length v1, v2

    if-ge v4, v1, :cond_11e

    .line 2762
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    aget v1, v2, v4

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2761
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    goto :goto_10a

    .end local v4  # "i":I
    :cond_11e
    goto :goto_127

    .line 2759
    .end local v16  # "isDebug":Z
    .restart local v1  # "isDebug":Z
    :cond_11f
    move/from16 v16, v1

    .line 2766
    .end local v1  # "isDebug":Z
    .restart local v16  # "isDebug":Z
    const-string/jumbo v1, "none"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2768
    :goto_127
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2769
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v1

    if-eqz v1, :cond_133

    const-string v1, "1"

    goto :goto_135

    :cond_133
    const-string v1, "0"

    :goto_135
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2770
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    move-object v4, v0

    iget-wide v0, v15, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    invoke-virtual {v10, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2774
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v17

    const/4 v5, 0x1

    .end local v2  # "gids":[I
    .end local v5  # "dataPath":Ljava/lang/String;
    .end local v14  # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v15  # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v16  # "isDebug":Z
    goto/16 :goto_87

    .line 2716
    .end local v17  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v14  # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_157
    move-object/from16 v17, v4

    move-object v4, v0

    .line 2718
    .end local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_15a
    const-string v0, "android"

    iget-object v1, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_187

    .line 2719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " due to missing metadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v17

    const/4 v5, 0x1

    goto/16 :goto_87

    .line 2718
    :cond_187
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v0, v4

    move-object/from16 v4, v17

    const/4 v5, 0x1

    goto/16 :goto_87

    .line 2775
    .end local v14  # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v17  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_191
    move-object/from16 v17, v4

    .end local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v17  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 2776
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2777
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 2778
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_19f} :catch_1a0

    .line 2783
    .end local v12  # "sb":Ljava/lang/StringBuilder;
    goto :goto_1b0

    .line 2779
    .end local v11  # "fstr":Ljava/io/FileOutputStream;
    :catch_1a0
    move-exception v0

    goto :goto_1a5

    .end local v17  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1a2
    move-exception v0

    move-object/from16 v17, v4

    .line 2780
    .end local v4  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1a5
    const-string v1, "Failed to write packages.list"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2781
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2782
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2784
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_1b0
    return-void
.end method


# virtual methods
.method addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 40
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "realName"  # Ljava/lang/String;
    .param p3, "codePath"  # Ljava/io/File;
    .param p4, "resourcePath"  # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"  # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"  # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"  # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"  # Ljava/lang/String;
    .param p9, "uid"  # I
    .param p10, "vc"  # J
    .param p12, "pkgFlags"  # I
    .param p13, "pkgPrivateFlags"  # I
    .param p14, "parentPackageName"  # Ljava/lang/String;
    .param p16, "usesStaticLibraries"  # [Ljava/lang/String;
    .param p17, "usesStaticLibraryNames"  # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .line 528
    .local p15, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p9

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 529
    .local v13, "p":Lcom/android/server/pm/PackageSetting;
    const/16 v19, 0x0

    if-eqz v13, :cond_2e

    .line 530
    iget v1, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v14, :cond_18

    .line 531
    return-object v13

    .line 533
    :cond_18
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 535
    return-object v19

    .line 537
    :cond_2e
    new-instance v20, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, v20

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v21, v13

    .end local v13  # "p":Lcom/android/server/pm/PackageSetting;
    .local v21, "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v13, p13

    move v0, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 541
    .end local v21  # "p":Lcom/android/server/pm/PackageSetting;
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 542
    move v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 543
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-object v1

    .line 546
    :cond_69
    return-object v19
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "origPkgName"  # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "pkgFlags"  # I
    .param p4, "pkgPrivateFlags"  # I

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 555
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 556
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_10

    .line 557
    return-object v0

    .line 559
    :cond_10
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 561
    return-object v1

    .line 563
    :cond_26
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    .line 564
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 565
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 566
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-object v0

    .line 569
    :cond_3a
    return-object v1
.end method

.method applyDefaultPreferredAppsLPw(I)V
    .registers 19
    .param p1, "userId"  # I

    .line 3202
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3203
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 3204
    .local v4, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3205
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget v7, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_57

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_57

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v6, :cond_57

    .line 3207
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3209
    .local v6, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_57

    .line 3210
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3211
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v8, v9, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3209
    .end local v8  # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 3215
    .end local v5  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6  # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v7  # "i":I
    :cond_57
    goto :goto_19

    .line 3218
    :cond_58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v7, "etc/preferred-apps"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v0

    .line 3219
    .local v5, "preferredDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_74

    move-object/from16 v16, v4

    goto/16 :goto_1e3

    .line 3222
    :cond_74
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v7, " cannot be read"

    const-string v8, "PackageSettings"

    if-nez v0, :cond_96

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    return-void

    .line 3228
    :cond_96
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v11, v0

    :goto_9d
    if-ge v11, v10, :cond_1e0

    aget-object v12, v9, v11

    .line 3229
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v13, ".xml"

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 3230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Non-xml file "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " directory, ignoring"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    move-object/from16 v16, v4

    goto/16 :goto_1cf

    .line 3233
    :cond_d2
    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v13, "Preferred apps file "

    if-nez v0, :cond_f3

    .line 3234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    move-object/from16 v16, v4

    goto/16 :goto_1cf

    .line 3238
    :cond_f3
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_10b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reading default preferred "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    :cond_10b
    const/4 v14, 0x0

    .line 3241
    .local v14, "str":Ljava/io/InputStream;
    :try_start_10c
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v14, v0

    .line 3242
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v15, v0

    .line 3243
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    invoke-interface {v15, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3246
    :goto_120
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10c .. :try_end_124} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_124} :catch_196
    .catchall {:try_start_10c .. :try_end_124} :catchall_191

    move/from16 v16, v0

    .local v16, "type":I
    const/4 v6, 0x2

    if-eq v0, v6, :cond_134

    move/from16 v6, v16

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .end local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v6, "type":I
    .local v16, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    if-eq v6, v4, :cond_139

    move v6, v4

    move-object/from16 v4, v16

    goto :goto_120

    .end local v6  # "type":I
    .restart local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v16, "type":I
    :cond_134
    move/from16 v6, v16

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .line 3251
    .end local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v6  # "type":I
    .local v16, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_139
    const/4 v0, 0x2

    if-eq v6, v0, :cond_15c

    .line 3252
    :try_start_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " does not have start tag"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13c .. :try_end_153} :catch_18f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_153} :catch_18d
    .catchall {:try_start_13c .. :try_end_153} :catchall_1d6

    .line 3266
    nop

    .line 3268
    :try_start_154
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_159

    .line 3270
    :goto_157
    goto/16 :goto_1cf

    .line 3269
    :catch_159
    move-exception v0

    .line 3270
    goto/16 :goto_1cf

    .line 3255
    :cond_15c
    :try_start_15c
    const-string/jumbo v0, "preferred-activities"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_185

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not start with \'preferred-activities\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15c .. :try_end_180} :catch_18f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_180} :catch_18d
    .catchall {:try_start_15c .. :try_end_180} :catchall_1d6

    .line 3266
    nop

    .line 3268
    :try_start_181
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_159

    goto :goto_157

    .line 3260
    :cond_185
    :try_start_185
    invoke-direct {v1, v15, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_188
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_185 .. :try_end_188} :catch_18f
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_18d
    .catchall {:try_start_185 .. :try_end_188} :catchall_1d6

    .line 3266
    .end local v6  # "type":I
    .end local v15  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 3268
    :try_start_189
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_1ce

    goto :goto_1cd

    .line 3263
    :catch_18d
    move-exception v0

    goto :goto_199

    .line 3261
    :catch_18f
    move-exception v0

    goto :goto_1b5

    .line 3266
    .end local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_191
    move-exception v0

    move-object/from16 v16, v4

    move-object v3, v0

    .end local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    goto :goto_1d8

    .line 3263
    .end local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_196
    move-exception v0

    move-object/from16 v16, v4

    .line 3264
    .end local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_199
    :try_start_199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ab
    .catchall {:try_start_199 .. :try_end_1ab} :catchall_1d6

    .line 3266
    nop

    .end local v0  # "e":Ljava/io/IOException;
    if-eqz v14, :cond_1cf

    .line 3268
    :try_start_1ae
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b1} :catch_1ce

    goto :goto_1cd

    .line 3261
    .end local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :catch_1b2
    move-exception v0

    move-object/from16 v16, v4

    .line 3262
    .end local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_1b5
    :try_start_1b5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c7
    .catchall {:try_start_1b5 .. :try_end_1c7} :catchall_1d6

    .line 3266
    nop

    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v14, :cond_1cf

    .line 3268
    :try_start_1ca
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_1ce

    .line 3270
    :goto_1cd
    goto :goto_1cf

    .line 3269
    :catch_1ce
    move-exception v0

    .line 3228
    .end local v12  # "f":Ljava/io/File;
    .end local v14  # "str":Ljava/io/InputStream;
    :cond_1cf
    :goto_1cf
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    const/4 v6, 0x1

    goto/16 :goto_9d

    .line 3266
    .restart local v12  # "f":Ljava/io/File;
    .restart local v14  # "str":Ljava/io/InputStream;
    :catchall_1d6
    move-exception v0

    move-object v3, v0

    :goto_1d8
    if-eqz v14, :cond_1df

    .line 3268
    :try_start_1da
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1de

    .line 3270
    goto :goto_1df

    .line 3269
    :catch_1de
    move-exception v0

    .line 3270
    :cond_1df
    :goto_1df
    throw v3

    .line 3274
    .end local v12  # "f":Ljava/io/File;
    .end local v14  # "str":Ljava/io/InputStream;
    .end local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_1e0
    return-void

    .line 3219
    :cond_1e1
    move-object/from16 v16, v4

    .line 3220
    .end local v4  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v16  # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :goto_1e3
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1334
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 1335
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimePermissionsGrantedLPr(I)Z

    move-result v0

    .line 1334
    return v0
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permName"  # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    .line 1192
    .local p2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1193
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v1, "PackageManager"

    if-nez v0, :cond_26

    .line 1194
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_24

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 1199
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v2

    .line 1200
    .local v2, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v2, :cond_4e

    .line 1201
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v2, v3

    .line 1202
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1203
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_75

    .line 1204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1208
    :cond_4e
    invoke-virtual {v2, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    .line 1209
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_75

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting domains to existing IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and with domains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v2}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomainsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1210
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_75
    :goto_75
    return-object v2
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I[Ljava/lang/String;)V
    .registers 26
    .param p1, "service"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"  # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"  # I
    .param p4, "disallowedPackages"  # [Ljava/lang/String;

    .line 4100
    move-object/from16 v1, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceUser(I)Z

    move-result v12

    .line 4102
    .local v12, "isFlymeParallelSpaceUser":Z
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4103
    :try_start_f
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4104
    .local v0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    move v13, v3

    .line 4105
    .local v13, "packagesCount":I
    new-array v3, v13, [Ljava/lang/String;

    move-object v14, v3

    .line 4106
    .local v14, "volumeUuids":[Ljava/lang/String;
    new-array v3, v13, [Ljava/lang/String;

    move-object v15, v3

    .line 4107
    .local v15, "names":[Ljava/lang/String;
    new-array v3, v13, [I

    move-object/from16 v16, v3

    .line 4108
    .local v16, "appIds":[I
    new-array v3, v13, [Ljava/lang/String;

    move-object/from16 v17, v3

    .line 4109
    .local v17, "seinfos":[Ljava/lang/String;
    new-array v3, v13, [I

    move-object/from16 v18, v3

    .line 4110
    .local v18, "targetSdkVersions":[I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4111
    .local v3, "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v13, :cond_b3

    .line 4112
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4113
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_af

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_45

    .line 4114
    goto/16 :goto_af

    .line 4116
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_5f

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4117
    invoke-static {v11, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-nez v6, :cond_5f

    move v6, v8

    goto :goto_60

    :cond_5f
    move v6, v7

    .line 4122
    .local v6, "shouldInstall":Z
    :goto_60
    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v19, -0x80000000

    and-int v9, v9, v19

    if-eqz v9, :cond_7b

    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4123
    invoke-static {v11, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7b

    .line 4124
    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v9

    iget-boolean v9, v9, Landroid/content/pm/PackageUserState;->installed:Z

    move v6, v9

    .line 4129
    :cond_7b
    if-eqz v12, :cond_8b

    .line 4130
    if-eqz v6, :cond_8a

    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/UserHandle;->isMultiSystemPackage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8a

    move v7, v8

    :cond_8a
    move v6, v7

    .line 4135
    :cond_8b
    invoke-virtual {v5, v6, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4136
    if-nez v6, :cond_93

    .line 4137
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4141
    :cond_93
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v7, v14, v4

    .line 4142
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v7, v15, v4

    .line 4143
    iget v7, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v7, v16, v4

    .line 4144
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v7, v17, v4

    .line 4145
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v7, v18, v4

    .line 4111
    .end local v5  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6  # "shouldInstall":Z
    :cond_af
    :goto_af
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_31

    .line 4147
    .end local v0  # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3  # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v4  # "i":I
    :cond_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_f .. :try_end_b4} :catchall_f3

    .line 4148
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_b6
    if-ge v9, v13, :cond_e6

    .line 4149
    aget-object v0, v15, v9

    if-nez v0, :cond_bf

    .line 4150
    move/from16 v20, v9

    goto :goto_e3

    .line 4153
    :cond_bf
    const/16 v19, 0x3

    .line 4155
    .local v19, "flags":I
    :try_start_c1
    aget-object v3, v14, v9

    aget-object v4, v15, v9

    const/4 v6, 0x3

    aget v7, v16, v9

    aget-object v8, v17, v9

    aget v0, v18, v9
    :try_end_cc
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c1 .. :try_end_cc} :catch_d9

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v20, v9

    .end local v9  # "i":I
    .local v20, "i":I
    move v9, v0

    :try_start_d3
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_d6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_d3 .. :try_end_d6} :catch_d7

    .line 4159
    goto :goto_e3

    .line 4157
    :catch_d7
    move-exception v0

    goto :goto_dc

    .end local v20  # "i":I
    .restart local v9  # "i":I
    :catch_d9
    move-exception v0

    move/from16 v20, v9

    .line 4158
    .end local v9  # "i":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v20  # "i":I
    :goto_dc
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4148
    .end local v0  # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v19  # "flags":I
    :goto_e3
    add-int/lit8 v9, v20, 0x1

    .end local v20  # "i":I
    .restart local v9  # "i":I
    goto :goto_b6

    :cond_e6
    move/from16 v20, v9

    .line 4161
    .end local v9  # "i":I
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 4162
    :try_start_eb
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4163
    monitor-exit v3

    .line 4164
    return-void

    .line 4163
    :catchall_f0
    move-exception v0

    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_eb .. :try_end_f2} :catchall_f0

    throw v0

    .line 4147
    .end local v13  # "packagesCount":I
    .end local v14  # "volumeUuids":[Ljava/lang/String;
    .end local v15  # "names":[Ljava/lang/String;
    .end local v16  # "appIds":[I
    .end local v17  # "seinfos":[Ljava/lang/String;
    .end local v18  # "targetSdkVersions":[I
    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit v2
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "replaced"  # Z

    .line 466
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 467
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not an installed package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v1

    .line 471
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 473
    .local v2, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_69

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_69

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_69

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_69

    .line 474
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_59

    .line 475
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 478
    :cond_59
    if-eqz p2, :cond_61

    .line 483
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .local v1, "disabled":Lcom/android/server/pm/PackageSetting;
    goto :goto_62

    .line 485
    .end local v1  # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_61
    move-object v1, v0

    .line 487
    .restart local v1  # "disabled":Lcom/android/server/pm/PackageSetting;
    :goto_62
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v3, 0x1

    return v3

    .line 491
    .end local v1  # "disabled":Lcom/android/server/pm/PackageSetting;
    :cond_69
    return v1
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "ps"  # Lcom/android/server/pm/PackageSetting;

    .line 5187
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const-string v5, "activities:"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5188
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    const-string/jumbo v5, "services:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5189
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    const-string/jumbo v5, "receivers:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5190
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    const-string/jumbo v5, "providers:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5191
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    const-string/jumbo v5, "instrumentations:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5192
    return-void
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "ps"  # Lcom/android/server/pm/PackageSetting;
    .param p4, "label"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 5196
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/PackageParser$Component<*>;>;"
    invoke-static {p5}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 5197
    .local v0, "size":I
    if-nez v0, :cond_7

    .line 5198
    return-void

    .line 5200
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_2c

    .line 5202
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Component;

    .line 5203
    .local v2, "component":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5204
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5201
    .end local v2  # "component":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 5206
    .end local v1  # "i":I
    :cond_2c
    return-void
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "gids"  # [I

    .line 5120
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 5121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5122
    const-string v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5123
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 5122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5125
    :cond_15
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p4, "permissionsState"  # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            ")V"
        }
    .end annotation

    .line 5170
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 5171
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 5172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5174
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_30

    .line 5175
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 5176
    goto :goto_17

    .line 5178
    :cond_30
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5179
    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5180
    nop

    .line 5181
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    .line 5180
    const-string v4, ", flags="

    invoke-static {v4, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5182
    .end local v2  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_17

    .line 5184
    :cond_5a
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .registers 30
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "checkinTag"  # Ljava/lang/String;
    .param p5, "ps"  # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"  # Ljava/text/SimpleDateFormat;
    .param p7, "date"  # Ljava/util/Date;
    .param p9, "dumpAll"  # Z
    .param p10, "dumpAllComponents"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 4551
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    if-eqz v9, :cond_175

    .line 4552
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4553
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4554
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_21
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4555
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4556
    iget v1, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4557
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4558
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4559
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4560
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4561
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4562
    iget-wide v1, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4563
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4564
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_50

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    goto :goto_51

    :cond_50
    move-object v1, v2

    :goto_51
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4565
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4566
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const-string v3, "-"

    if-eqz v1, :cond_a4

    .line 4567
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "splt,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4568
    const-string v4, "base,"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4569
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4570
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_a4

    .line 4571
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7c
    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_a4

    .line 4572
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4573
    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4574
    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v5, v5, v4

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4571
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 4578
    .end local v4  # "i":I
    :cond_a4
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_174

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4579
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4580
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4581
    const-string/jumbo v5, "usr"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4582
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4583
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4584
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4585
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_d6

    const-string v5, "I"

    goto :goto_d8

    :cond_d6
    const-string v5, "i"

    :goto_d8
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4586
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v5

    if-eqz v5, :cond_e6

    const-string v5, "B"

    goto :goto_e8

    :cond_e6
    const-string v5, "b"

    :goto_e8
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4587
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v5

    if-eqz v5, :cond_f6

    const-string v5, "SU"

    goto :goto_f9

    :cond_f6
    const-string/jumbo v5, "su"

    :goto_f9
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4588
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v5

    if-eqz v5, :cond_107

    const-string v5, "S"

    goto :goto_10a

    :cond_107
    const-string/jumbo v5, "s"

    :goto_10a
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4589
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v5

    if-eqz v5, :cond_119

    const-string/jumbo v5, "l"

    goto :goto_11b

    :cond_119
    const-string v5, "L"

    :goto_11b
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_129

    const-string v5, "IA"

    goto :goto_12b

    :cond_129
    const-string v5, "ia"

    :goto_12b
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4591
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v5

    if-eqz v5, :cond_139

    const-string v5, "VPI"

    goto :goto_13c

    :cond_139
    const-string/jumbo v5, "vpi"

    :goto_13c
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4592
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v5

    .line 4593
    .local v5, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v5, :cond_14a

    const-string v13, "HA"

    goto :goto_14c

    :cond_14a
    const-string v13, "ha"

    :goto_14c
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4595
    iget v13, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v13}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 4596
    iget v13, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v13}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v13

    .line 4597
    .local v13, "lastDisabledAppCaller":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4598
    if-eqz v13, :cond_168

    move-object v14, v13

    goto :goto_169

    :cond_168
    move-object v14, v2

    :goto_169
    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4599
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4600
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4601
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    .end local v5  # "harmfulAppWarning":Ljava/lang/String;
    .end local v13  # "lastDisabledAppCaller":Ljava/lang/String;
    goto/16 :goto_a8

    .line 4602
    :cond_174
    return-void

    .line 4605
    :cond_175
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4606
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_184

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_186

    :cond_184
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_186
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4607
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4608
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4609
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4611
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1af

    .line 4612
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4613
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    :cond_1af
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4618
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1cd

    .line 4619
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4621
    :cond_1cd
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4622
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    if-nez v10, :cond_21d

    .line 4624
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4625
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4626
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4627
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4628
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    :cond_21d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4631
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v13, 0x0

    if-eqz v0, :cond_280

    .line 4632
    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4633
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4634
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_265

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_265

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4635
    const-string/jumbo v2, "vendor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_265

    .line 4636
    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_265

    const/4 v0, 0x1

    goto :goto_266

    :cond_265
    move v0, v13

    .line 4637
    .local v0, "isCtsAndVendorPackage":Z
    :goto_266
    const-string v2, " targetSdk="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4639
    if-eqz v0, :cond_277

    const/16 v2, 0x1c

    const-string/jumbo v3, "ro.build.version.sdk"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_27d

    .line 4640
    :cond_277
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4639
    :goto_27d
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4642
    .end local v0  # "isCtsAndVendorPackage":Z
    :cond_280
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4643
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const-string v14, "    "

    if-eqz v0, :cond_593

    .line 4644
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    const-string v2, "]"

    const-string v3, ", "

    if-eqz v0, :cond_2cf

    .line 4645
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 4646
    .local v0, "parentPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 4647
    .local v4, "pps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_2ad

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b8

    .line 4648
    :cond_2ad
    iget-object v5, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 4650
    :cond_2b8
    if-eqz v4, :cond_32e

    .line 4651
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  parentPackage="

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4652
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v5, :cond_2c9

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_2cb

    :cond_2c9
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_2cb
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32e

    .line 4654
    .end local v0  # "parentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v4  # "pps":Lcom/android/server/pm/PackageSetting;
    :cond_2cf
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_32e

    .line 4655
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  childPackages=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4656
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4657
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e6
    if-ge v4, v0, :cond_32a

    .line 4658
    iget-object v5, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 4659
    .local v5, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v15, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v13, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 4660
    .local v13, "cps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_308

    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_313

    .line 4661
    :cond_308
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v15, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 4663
    :cond_313
    if-eqz v13, :cond_326

    .line 4664
    if-lez v4, :cond_31a

    .line 4665
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4667
    :cond_31a
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v1, :cond_321

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_323

    :cond_321
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_323
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4657
    .end local v5  # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v13  # "cps":Lcom/android/server/pm/PackageSetting;
    :cond_326
    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x0

    goto :goto_2e6

    .line 4670
    .end local v4  # "i":I
    :cond_32a
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32f

    .line 4654
    .end local v0  # "childCount":I
    :cond_32e
    :goto_32e
    nop

    .line 4672
    :goto_32f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4673
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v7, v0}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4674
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4675
    .local v0, "apkSigningVersion":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  apkSigningVersion="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4676
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  applicationInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4677
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4678
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  flags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4679
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4680
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v1, :cond_3a6

    .line 4681
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  privateFlags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4682
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4684
    :cond_3a6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  dataDir="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4685
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  supportsScreens=["

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4686
    const/4 v1, 0x1

    .line 4687
    .local v1, "first":Z
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_3d6

    .line 4688
    if-nez v1, :cond_3cf

    .line 4689
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4690
    :cond_3cf
    const/4 v1, 0x0

    .line 4691
    const-string/jumbo v4, "small"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4693
    :cond_3d6
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_3ec

    .line 4694
    if-nez v1, :cond_3e5

    .line 4695
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4696
    :cond_3e5
    const/4 v1, 0x0

    .line 4697
    const-string/jumbo v4, "medium"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4699
    :cond_3ec
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_402

    .line 4700
    if-nez v1, :cond_3fb

    .line 4701
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4702
    :cond_3fb
    const/4 v1, 0x0

    .line 4703
    const-string/jumbo v4, "large"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    :cond_402
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_419

    .line 4706
    if-nez v1, :cond_412

    .line 4707
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4708
    :cond_412
    const/4 v1, 0x0

    .line 4709
    const-string/jumbo v4, "xlarge"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4711
    :cond_419
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_42f

    .line 4712
    if-nez v1, :cond_428

    .line 4713
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4714
    :cond_428
    const/4 v1, 0x0

    .line 4715
    const-string/jumbo v4, "resizeable"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4717
    :cond_42f
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_444

    .line 4718
    if-nez v1, :cond_43e

    .line 4719
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4720
    :cond_43e
    const/4 v1, 0x0

    .line 4721
    const-string v3, "anyDensity"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4723
    :cond_444
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4724
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_480

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_480

    .line 4725
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  dynamic libraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4726
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_460
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_480

    .line 4727
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4728
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4726
    add-int/lit8 v2, v2, 0x1

    goto :goto_460

    .line 4731
    .end local v2  # "i":I
    :cond_480
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    const-string v3, " version:"

    if-eqz v2, :cond_4ad

    .line 4732
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  static library:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4733
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4734
    const-string/jumbo v2, "name:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4735
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-wide v4, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {v7, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4737
    :cond_4ad
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_4e6

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4e6

    .line 4738
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4739
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_4c6
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4e6

    .line 4740
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4739
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c6

    .line 4743
    .end local v2  # "i":I
    :cond_4e6
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_52b

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 4744
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_52b

    .line 4745
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesStaticLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_4ff
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_52b

    .line 4747
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4748
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4749
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    aget-wide v4, v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4746
    add-int/lit8 v2, v2, 0x1

    goto :goto_4ff

    .line 4752
    .end local v2  # "i":I
    :cond_52b
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_564

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4753
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_564

    .line 4754
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesOptionalLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4755
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_544
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_564

    .line 4756
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4757
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4755
    add-int/lit8 v2, v2, 0x1

    goto :goto_544

    .line 4760
    .end local v2  # "i":I
    :cond_564
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_593

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_593

    .line 4762
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraryFiles:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_57a
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_593

    .line 4764
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4763
    add-int/lit8 v2, v2, 0x1

    goto :goto_57a

    .line 4768
    .end local v0  # "apkSigningVersion":I
    .end local v1  # "first":Z
    .end local v2  # "i":I
    :cond_593
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4769
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4770
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4771
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4772
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4773
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4774
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4775
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4776
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4777
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5e0

    .line 4778
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4779
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    :cond_5e0
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_5f1

    .line 4782
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4783
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4785
    :cond_5f1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4786
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4787
    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4788
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4789
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4791
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  forceFull="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4792
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mzApp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->mzApp:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4794
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4796
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_662

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_662

    .line 4797
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4798
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4801
    :cond_662
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_6e8

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e8

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6e8

    .line 4802
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 4803
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_683
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6e8

    .line 4805
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 4806
    .local v2, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz v10, :cond_69d

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4807
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69d

    .line 4808
    const/4 v4, 0x1

    goto :goto_6e5

    .line 4810
    :cond_69d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4811
    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4812
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4813
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_6c7

    .line 4814
    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4816
    :cond_6c7
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6d4

    .line 4817
    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4819
    :cond_6d4
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v5, 0x40000000  # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_6e2

    .line 4820
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4822
    :cond_6e2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4804
    .end local v2  # "perm":Landroid/content/pm/PackageParser$Permission;
    :goto_6e5
    add-int/lit8 v1, v1, 0x1

    goto :goto_683

    .line 4826
    .end local v0  # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    .end local v1  # "i":I
    :cond_6e8
    if-nez v10, :cond_6ec

    if-eqz p9, :cond_745

    :cond_6ec
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_745

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_745

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4828
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_745

    .line 4829
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4830
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4831
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_70d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_745

    .line 4832
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4833
    .local v2, "perm":Ljava/lang/String;
    if-eqz v10, :cond_722

    .line 4834
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_722

    .line 4835
    goto :goto_742

    .line 4837
    :cond_722
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4838
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 4839
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_73f

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v4

    if-eqz v4, :cond_73f

    .line 4840
    const-string v4, ": restricted=true"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_742

    .line 4842
    :cond_73f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4831
    .end local v2  # "perm":Ljava/lang/String;
    .end local v3  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_742
    add-int/lit8 v1, v1, 0x1

    goto :goto_70d

    .line 4847
    .end local v0  # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1  # "i":I
    :cond_745
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "  "

    if-eqz v0, :cond_74f

    if-nez v10, :cond_74f

    if-eqz p9, :cond_765

    .line 4848
    :cond_74f
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4849
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4852
    .end local v0  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_765
    if-eqz p10, :cond_779

    .line 4853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v11}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 4856
    :cond_779
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_77d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 4857
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4858
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4859
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4860
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4861
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4862
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4863
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4864
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4865
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4866
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_7f6

    .line 4867
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 4868
    .local v0, "pus":Landroid/content/pm/PackageUserState;
    const-string v1, " suspendingPackage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4869
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4870
    const-string v1, " dialogInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4871
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4873
    .end local v0  # "pus":Landroid/content/pm/PackageUserState;
    :cond_7f6
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4875
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4876
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4877
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4878
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4879
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4880
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4881
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4882
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4884
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v5

    .line 4885
    .local v5, "overlayPaths":[Ljava/lang/String;
    if-eqz v5, :cond_861

    array-length v0, v5

    if-lez v0, :cond_861

    .line 4886
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    array-length v0, v5

    const/4 v1, 0x0

    :goto_851
    if-ge v1, v0, :cond_861

    aget-object v2, v5, v1

    .line 4888
    .local v2, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4887
    .end local v2  # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_851

    .line 4892
    :cond_861
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v4

    .line 4893
    .local v4, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v4, :cond_874

    .line 4894
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4895
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4898
    :cond_874
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_8bd

    .line 4899
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 4900
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    .line 4902
    invoke-virtual {v3, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    .line 4901
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    .end local v3  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v17, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v3, p4

    move-object/from16 v18, v4

    .end local v4  # "lastDisabledAppCaller":Ljava/lang/String;
    .local v18, "lastDisabledAppCaller":Ljava/lang/String;
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5  # "overlayPaths":[Ljava/lang/String;
    .local v16, "overlayPaths":[Ljava/lang/String;
    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    goto :goto_8c1

    .line 4898
    .end local v16  # "overlayPaths":[Ljava/lang/String;
    .end local v17  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v18  # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v4  # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v5  # "overlayPaths":[Ljava/lang/String;
    :cond_8bd
    move-object/from16 v18, v4

    move-object/from16 v16, v5

    .line 4905
    .end local v4  # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v5  # "overlayPaths":[Ljava/lang/String;
    .restart local v16  # "overlayPaths":[Ljava/lang/String;
    .restart local v18  # "lastDisabledAppCaller":Ljava/lang/String;
    :goto_8c1
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 4906
    .local v0, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v0, :cond_8d4

    .line 4907
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4908
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    :cond_8d4
    if-nez v10, :cond_938

    .line 4912
    iget v1, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4913
    .local v1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, "      "

    if-eqz v1, :cond_908

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_908

    .line 4914
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    disabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8f2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_908

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4916
    .local v4, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4917
    .end local v4  # "s":Ljava/lang/String;
    goto :goto_8f2

    .line 4919
    :cond_908
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4920
    if-eqz v1, :cond_938

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_938

    .line 4921
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    enabledComponents:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4922
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_922
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_938

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4923
    .restart local v4  # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4924
    .end local v4  # "s":Ljava/lang/String;
    goto :goto_922

    .line 4927
    .end local v0  # "harmfulAppWarning":Ljava/lang/String;
    .end local v1  # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15  # "user":Landroid/content/pm/UserInfo;
    .end local v16  # "overlayPaths":[Ljava/lang/String;
    .end local v18  # "lastDisabledAppCaller":Ljava/lang/String;
    :cond_938
    goto/16 :goto_77d

    .line 4928
    :cond_93a
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 27
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p4, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 4932
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4933
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 4934
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 4935
    .local v0, "printedSomething":Z
    nop

    .line 4936
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v19

    .line 4937
    .local v19, "dumpAllComponents":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v20

    .line 4938
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_30
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_a2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 4939
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_53

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4940
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 4941
    goto :goto_30

    .line 4943
    :cond_53
    if-eqz v12, :cond_60

    .line 4944
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 4945
    goto :goto_30

    .line 4948
    :cond_60
    if-nez p5, :cond_69

    if-eqz v13, :cond_69

    .line 4949
    iget-object v1, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v11, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 4952
    :cond_69
    if-nez p5, :cond_7f

    if-nez v0, :cond_7f

    .line 4953
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 4954
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4955
    :cond_76
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4956
    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_81

    .line 4958
    :cond_7f
    move/from16 v17, v0

    .end local v0  # "printedSomething":Z
    .local v17, "printedSomething":Z
    :goto_81
    if-eqz p5, :cond_87

    const-string/jumbo v0, "pkg"

    move-object v4, v0

    :cond_87
    if-eqz v13, :cond_8b

    move v9, v2

    goto :goto_8c

    :cond_8b
    move v9, v3

    :goto_8c
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move-object/from16 v4, p3

    move-object v5, v10

    move-object/from16 v8, v20

    move-object/from16 v18, v10

    .end local v10  # "ps":Lcom/android/server/pm/PackageSetting;
    .local v18, "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 4960
    .end local v18  # "ps":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, v17

    goto :goto_30

    .line 4962
    .end local v17  # "printedSomething":Z
    .restart local v0  # "printedSomething":Z
    :cond_a2
    const/4 v0, 0x0

    .line 4963
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_116

    if-nez v12, :cond_116

    .line 4964
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4965
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_da

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_da

    .line 4966
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_da

    .line 4967
    goto :goto_b7

    .line 4969
    :cond_da
    if-nez p5, :cond_f3

    .line 4970
    if-nez v0, :cond_ed

    .line 4971
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 4972
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4973
    :cond_e7
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    const/4 v0, 0x1

    .line 4976
    :cond_ed
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f9

    .line 4978
    :cond_f3
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4980
    :goto_f9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4981
    if-eqz p5, :cond_107

    const-string v8, " -> "

    goto :goto_109

    :cond_107
    const-string v8, ","

    :goto_109
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4982
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4983
    .end local v5  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_b7

    .line 4986
    :cond_116
    const/4 v0, 0x0

    .line 4987
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_18a

    if-nez v12, :cond_18a

    .line 4988
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4989
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_14a

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14a

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4990
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14a

    .line 4991
    goto :goto_12b

    .line 4993
    :cond_14a
    if-nez p5, :cond_15d

    if-nez v0, :cond_15d

    .line 4994
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_157

    .line 4995
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4996
    :cond_157
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    const/4 v0, 0x1

    .line 4999
    :cond_15d
    if-eqz p5, :cond_164

    const-string v8, "dis"

    move-object/from16 v16, v8

    goto :goto_166

    :cond_164
    move-object/from16 v16, v4

    :goto_166
    if-eqz v13, :cond_16b

    move/from16 v17, v2

    goto :goto_16d

    :cond_16b
    move/from16 v17, v3

    :goto_16d
    const-string v10, "  "

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, v16

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v20

    move/from16 v18, v19

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 5001
    .end local v5  # "ps":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p4

    goto :goto_12b

    .line 5003
    :cond_18a
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 5006
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 5008
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5009
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_24

    .line 5010
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5011
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    .line 5009
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5013
    .end local v2  # "i":I
    :cond_24
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p4, "dumpState"  # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 5017
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    move v4, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V

    .line 5019
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/pm/DumpState;

    .line 5092
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5094
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p5, "dumpAll"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .line 5129
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p5, :cond_58

    .line 5130
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5131
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5132
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_2e

    .line 5133
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 5134
    goto :goto_15

    .line 5136
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5137
    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5138
    nop

    .line 5139
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    .line 5138
    const-string v3, ", flags="

    invoke-static {v3, v2}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5140
    .end local v1  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_15

    .line 5142
    :cond_58
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 31
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p4, "dumpState"  # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 5023
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 5024
    .local v0, "printedSomething":Z
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_184

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5025
    .local v10, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_27

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_27

    .line 5026
    goto :goto_11

    .line 5028
    :cond_27
    if-eqz v8, :cond_34

    .line 5029
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 5030
    goto :goto_11

    .line 5032
    :cond_34
    if-nez p5, :cond_16b

    .line 5033
    if-nez v0, :cond_49

    .line 5034
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 5035
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5036
    :cond_41
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    const/4 v0, 0x1

    move v11, v0

    goto :goto_4a

    .line 5033
    :cond_49
    move v11, v0

    .line 5040
    .end local v0  # "printedSomething":Z
    .local v11, "printedSomething":Z
    :goto_4a
    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5041
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5042
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5043
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5044
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5046
    const-string v12, "    "

    .line 5047
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5049
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Packages"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5050
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 5051
    .local v13, "numPackages":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_88
    const-string v14, "  "

    if-ge v0, v13, :cond_ca

    .line 5052
    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5053
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_b0

    .line 5054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c7

    .line 5056
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "NULL?!"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5051
    .end local v1  # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 5060
    .end local v0  # "i":I
    :cond_ca
    const/4 v0, 0x4

    move-object/from16 v15, p4

    invoke-virtual {v15, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 5061
    move v0, v11

    goto/16 :goto_11

    .line 5064
    :cond_d6
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 5065
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v6, v7, v12, v8, v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 5067
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    array-length v3, v4

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_ea
    if-ge v2, v3, :cond_167

    aget v1, v4, v2

    .line 5068
    .local v1, "userId":I
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v0

    .line 5069
    .local v0, "gids":[I
    nop

    .line 5070
    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v17

    .line 5071
    .local v17, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v18

    if-eqz v18, :cond_10d

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_104

    goto :goto_10d

    :cond_104
    move/from16 v18, v2

    move/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    goto :goto_15e

    .line 5072
    :cond_10d
    :goto_10d
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v18, v2

    const-string v2, "User "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v0}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_145

    const/16 v19, 0x1

    goto :goto_147

    :cond_145
    move/from16 v19, v16

    :goto_147
    move-object/from16 v20, v0

    .end local v0  # "gids":[I
    .local v20, "gids":[I
    move-object/from16 v0, p0

    move/from16 v21, v1

    .end local v1  # "userId":I
    .local v21, "userId":I
    move-object/from16 v1, p1

    move/from16 v22, v3

    move-object/from16 v3, p3

    move-object/from16 v23, v4

    move-object/from16 v4, v17

    move-object/from16 v24, v5

    .end local v5  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v24, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 5067
    .end local v17  # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v20  # "gids":[I
    .end local v21  # "userId":I
    :goto_15e
    add-int/lit8 v2, v18, 0x1

    move/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_ea

    .end local v24  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_167
    move-object/from16 v24, v5

    .line 5078
    .end local v5  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12  # "prefix":Ljava/lang/String;
    .end local v13  # "numPackages":I
    move v0, v11

    goto :goto_182

    .line 5079
    .end local v11  # "printedSomething":Z
    .local v0, "printedSomething":Z
    :cond_16b
    move-object/from16 v15, p4

    const-string/jumbo v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5081
    .end local v10  # "su":Lcom/android/server/pm/SharedUserSetting;
    :goto_182
    goto/16 :goto_11

    .line 5082
    :cond_184
    move-object/from16 v15, p4

    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 5085
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5086
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 5087
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5086
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5089
    .end local v1  # "i":I
    :cond_1c
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4526
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 4528
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4529
    .local v1, "volumeUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4530
    .local v2, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4531
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4532
    :cond_2a
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4533
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4535
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4537
    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4538
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "sdkVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4539
    iget v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "databaseVersion"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4540
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4541
    iget-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    const-string v4, "fingerprint"

    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4542
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4527
    .end local v1  # "volumeUuid":Ljava/lang/String;
    .end local v2  # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4545
    .end local v0  # "i":I
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4546
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 4
    .param p1, "userId"  # I

    .line 1164
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1165
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_15

    .line 1166
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    .line 1167
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1169
    :cond_15
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 4
    .param p1, "userId"  # I

    .line 1155
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1156
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_15

    .line 1157
    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1158
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1160
    :cond_15
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 4
    .param p1, "userId"  # I

    .line 1146
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1147
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_15

    .line 1148
    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1149
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1151
    :cond_15
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 22
    .param p1, "name"  # Ljava/lang/String;

    .line 495
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 496
    .local v15, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v15, :cond_2c

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x0

    return-object v2

    .line 501
    :cond_2c
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_40

    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_40

    .line 502
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 504
    :cond_40
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v15, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v6, v15, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v8, v15, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v9, v15, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v10, v15, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v12, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v13, v15, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v18, v2

    move-object v2, v15

    .end local v15  # "p":Lcom/android/server/pm/PackageSetting;
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    move-object v15, v0

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v19

    .end local v2  # "p":Lcom/android/server/pm/PackageSetting;
    .local v18, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 510
    .local v0, "ret":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 4
    .param p1, "volumeUuid"  # Ljava/lang/String;

    .line 1351
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1352
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_15

    .line 1353
    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    .line 1354
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    :cond_15
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4348
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4349
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_f

    .line 4352
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    .line 4350
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1792
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1793
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 1794
    const/4 v1, 0x0

    return v1

    .line 1796
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getChildSettingsLPr(Lcom/android/server/pm/PackageSetting;)[Lcom/android/server/pm/PackageSetting;
    .registers 7
    .param p1, "parentPackageSetting"  # Lcom/android/server/pm/PackageSetting;

    .line 4304
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 4307
    :cond_9
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4308
    .local v0, "childCount":I
    new-array v1, v0, [Lcom/android/server/pm/PackageSetting;

    .line 4310
    .local v1, "children":[Lcom/android/server/pm/PackageSetting;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_27

    .line 4311
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    aput-object v3, v1, v2

    .line 4310
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4313
    .end local v2  # "i":I
    :cond_27
    return-object v1

    .line 4305
    .end local v0  # "childCount":I
    .end local v1  # "children":[Lcom/android/server/pm/PackageSetting;
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 4356
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4357
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4358
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_17

    .line 4361
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4362
    .local v2, "classNameStr":Ljava/lang/String;
    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 4359
    .end local v2  # "classNameStr":Ljava/lang/String;
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDefaultRuntimePermissionsVersionLPr(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 1343
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersionLPr(I)I

    move-result v0

    return v0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "enabledPackageSetting"  # Lcom/android/server/pm/PackageSetting;

    .line 4290
    if-nez p1, :cond_4

    .line 4291
    const/4 v0, 0x0

    return-object v0

    .line 4293
    :cond_4
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 4280
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4281
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1364
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4416
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4417
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_f

    .line 4420
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4418
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 4332
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4333
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 4336
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1

    .line 4334
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1180
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1181
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 1186
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1219
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1220
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1221
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 1226
    :cond_26
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .line 1256
    if-nez p1, :cond_7

    .line 1257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1259
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1261
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    .line 1262
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1263
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1264
    goto :goto_16

    .line 1266
    :cond_3d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    .end local v2  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3  # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_16

    .line 1268
    :cond_41
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1360
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getMeizuFingerprint()Ljava/lang/String;
    .registers 2

    .line 5619
    iget-object v0, p0, Lcom/android/server/pm/Settings;->meizuFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method getMzAppCodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 5645
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/FlymeMzAppManager;->getMzAppCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .registers 5
    .param p1, "appId"  # I

    .line 1114
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_19

    .line 1115
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1116
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1117
    .local v1, "index":I
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SettingBase;

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return-object v2

    .line 1119
    .end local v0  # "size":I
    .end local v1  # "index":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SettingBase;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "pkgFlags"  # I
    .param p3, "pkgPrivateFlags"  # I
    .param p4, "create"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 447
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_5f

    if-eqz p4, :cond_5f

    .line 448
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 449
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 450
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_42

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New shared user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 452
    :cond_42
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 458
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .line 4243
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 4244
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4246
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4249
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 4456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4457
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 4458
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4459
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4460
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4457
    .end local v2  # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4463
    .end local v1  # "i":I
    :cond_24
    return-object v0
.end method

.method hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "parentPackageName"  # Ljava/lang/String;
    .param p2, "childPackageName"  # Ljava/lang/String;

    .line 4254
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4255
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_46

    .line 4256
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4257
    .local v2, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v3, :cond_43

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4258
    goto :goto_43

    .line 4260
    :cond_1e
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4261
    goto :goto_43

    .line 4263
    :cond_27
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 4264
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2e
    if-ge v4, v3, :cond_43

    .line 4265
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4266
    .local v5, "currChildPackageName":Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 4267
    const/4 v6, 0x1

    return v6

    .line 4264
    .end local v5  # "currChildPackageName":Ljava/lang/String;
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 4255
    .end local v2  # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v3  # "childCount":I
    .end local v4  # "j":I
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4271
    .end local v1  # "i":I
    :cond_46
    const/4 v1, 0x0

    return v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "p"  # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 892
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_e

    .line 893
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 897
    :cond_e
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_24

    .line 898
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 900
    :cond_24
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 901
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .registers 8
    .param p1, "componentInfo"  # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"  # I
    .param p3, "userId"  # I

    .line 4317
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4318
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 4321
    :cond_e
    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/SetupPackageHandler;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip get package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    return v1

    .line 4327
    :cond_2e
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4328
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method public isMzApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 5629
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/FlymeMzAppManager;->isMzApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isMzAppInstalled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 5637
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/FlymeMzAppManager;->isMzAppInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 4340
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4341
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 4344
    iget-boolean v1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    return v1

    .line 4342
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 3
    .param p1, "fsUuid"  # Ljava/lang/String;

    .line 1368
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    return-void
.end method

.method pruneSharedUsersLPw()V
    .registers 9

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v0, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 575
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 576
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_2d

    .line 577
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    goto :goto_f

    .line 581
    :cond_2d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 582
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 583
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4c

    .line 584
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 586
    .end local v5  # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4c
    goto :goto_33

    .line 587
    .end local v4  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_4d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_5e

    .line 588
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3  # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_5e
    goto :goto_f

    .line 591
    :cond_5f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 592
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 594
    .end local v1  # "i":I
    :cond_72
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 13
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1905
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1907
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1909
    .local v0, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_af

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1a

    .line 1910
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_af

    .line 1911
    :cond_1a
    if-eq v2, v1, :cond_9

    const/4 v1, 0x4

    if-ne v2, v1, :cond_20

    .line 1912
    goto :goto_9

    .line 1915
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1916
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1917
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1918
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1919
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1920
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v6, " status="

    const-string v7, "PackageSettings"

    if-eqz v5, :cond_69

    .line 1922
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1923
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_90

    .line 1924
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restored IVI for existing app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1924
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1928
    :cond_69
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_90

    .line 1930
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restored IVI for pending app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1930
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    .end local v3  # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v4  # "pkgName":Ljava/lang/String;
    .end local v5  # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_90
    :goto_90
    goto :goto_ad

    .line 1935
    :cond_91
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1935
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1938
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1940
    .end local v1  # "tagName":Ljava/lang/String;
    :goto_ad
    goto/16 :goto_9

    .line 1941
    :cond_af
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1511
    .local v0, "outerDepth":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1512
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_55

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 1513
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_55

    .line 1514
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 1515
    goto :goto_9

    .line 1517
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1519
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1520
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1521
    .end local v4  # "packageName":Ljava/lang/String;
    goto :goto_54

    .line 1522
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1524
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1525
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1527
    .end local v2  # "tagName":Ljava/lang/String;
    .end local v4  # "msg":Ljava/lang/String;
    :goto_54
    goto :goto_9

    .line 1528
    :cond_55
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1529
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_66

    .line 1531
    :cond_61
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1533
    :goto_66
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1485
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1487
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5b

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1488
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5b

    .line 1489
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1490
    goto :goto_4

    .line 1492
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1494
    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1495
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1496
    .end local v3  # "packageName":Ljava/lang/String;
    :goto_34
    goto :goto_5a

    :cond_35
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_34

    .line 1499
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1501
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1502
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1504
    .end local v1  # "tagName":Ljava/lang/String;
    .end local v3  # "msg":Ljava/lang/String;
    :goto_5a
    goto :goto_4

    .line 1505
    :cond_5b
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 19
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"  # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2163
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2165
    .local v2, "outerDepth":I
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_ee

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1e

    .line 2167
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_1a

    goto :goto_1e

    :cond_1a
    move-object/from16 v9, p0

    goto/16 :goto_f0

    .line 2168
    :cond_1e
    :goto_1e
    if-eq v4, v3, :cond_ea

    const/4 v3, 0x4

    if-ne v4, v3, :cond_24

    .line 2170
    goto :goto_8

    .line 2172
    :cond_24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2173
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "PackageManager"

    if-eqz v6, :cond_cb

    .line 2174
    const/4 v6, 0x0

    const-string/jumbo v8, "name"

    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2176
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v10

    .line 2177
    .local v10, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v10, :cond_5d

    .line 2178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2180
    goto :goto_8

    .line 2183
    :cond_5d
    const-string v11, "granted"

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2184
    .local v11, "grantedStr":Ljava/lang/String;
    const/4 v12, 0x0

    if-eqz v11, :cond_6f

    .line 2185
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6d

    goto :goto_6f

    :cond_6d
    move v5, v12

    goto :goto_70

    :cond_6f
    :goto_6f
    nop

    .line 2187
    .local v5, "granted":Z
    :goto_70
    const-string v13, "flags"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2188
    .local v6, "flagsStr":Ljava/lang/String;
    if-eqz v6, :cond_7f

    .line 2189
    const/16 v12, 0x10

    invoke-static {v6, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_80

    :cond_7f
    nop

    .line 2191
    .local v12, "flags":I
    :goto_80
    const-string v13, "Permission already added: "

    const/4 v15, -0x1

    if-eqz v5, :cond_a8

    .line 2192
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_a1

    .line 2194
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ca

    .line 2197
    :cond_a1
    const v7, 0xfbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_ca

    .line 2201
    :cond_a8
    invoke-virtual {v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v14

    if-ne v14, v15, :cond_c4

    .line 2203
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ca

    .line 2206
    :cond_c4
    const v7, 0xfbff

    invoke-virtual {v1, v10, v15, v7, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2210
    .end local v5  # "granted":Z
    .end local v6  # "flagsStr":Ljava/lang/String;
    .end local v8  # "name":Ljava/lang/String;
    .end local v10  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11  # "grantedStr":Ljava/lang/String;
    .end local v12  # "flags":I
    :goto_ca
    goto :goto_e8

    .line 2211
    :cond_cb
    move-object/from16 v9, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <permissions>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2211
    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2215
    .end local v3  # "tagName":Ljava/lang/String;
    :goto_e8
    goto/16 :goto_8

    .line 2168
    :cond_ea
    move-object/from16 v9, p0

    goto/16 :goto_8

    .line 2165
    :cond_ee
    move-object/from16 v9, p0

    .line 2216
    :goto_f0
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2956
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, p0

    const-string v2, "No start tag found in package manager settings"

    const/4 v3, 0x0

    .line 2957
    .local v3, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x4

    const-string v5, "PackageManager"

    if-eqz v0, :cond_49

    .line 2959
    :try_start_10
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 2960
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "Reading from backup settings file\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    const-string v0, "Need to read from backup settings file"

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2963
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up settings file "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_47} :catch_48

    .line 2973
    :cond_47
    goto :goto_49

    .line 2971
    :catch_48
    move-exception v0

    .line 2976
    :cond_49
    :goto_49
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2977
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2978
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2979
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2982
    const-string v6, "Error reading package manager settings"

    const-string v7, "Error reading settings: "

    const-string v8, "Error reading: "

    const-string/jumbo v9, "primary_physical"

    const/4 v10, 0x1

    const/4 v11, 0x6

    const/4 v12, 0x0

    if-nez v3, :cond_98

    .line 2983
    :try_start_6b
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_90

    .line 2984
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No settings file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2985
    const-string v0, "No settings file; creating initial state"

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2989
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 2990
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 2991
    return v12

    .line 2993
    :cond_90
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v13, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 2995
    :cond_98
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v13, v0

    .line 2996
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2999
    :goto_a6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    .local v14, "type":I
    const/4 v15, 0x2

    if-eq v0, v15, :cond_b1

    if-eq v14, v10, :cond_b1

    goto :goto_a6

    .line 3004
    :cond_b1
    if-eq v14, v15, :cond_c2

    .line 3005
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    const/4 v0, 0x5

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3008
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    return v12

    .line 3013
    :cond_c2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    move v2, v0

    .line 3014
    .local v2, "outerDepth":I
    :goto_c7
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    if-eq v0, v10, :cond_2b8

    const/4 v0, 0x3

    if-ne v14, v0, :cond_d7

    .line 3015
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v2, :cond_2b8

    .line 3016
    :cond_d7
    if-eq v14, v0, :cond_2b3

    if-ne v14, v4, :cond_dd

    .line 3017
    goto/16 :goto_2b3

    .line 3020
    :cond_dd
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 3021
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 3022
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2b2

    .line 3023
    :cond_f0
    const-string/jumbo v0, "permissions"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 3024
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2b2

    .line 3025
    :cond_100
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 3026
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2b2

    .line 3027
    :cond_110
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 3028
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2b2

    .line 3029
    :cond_11e
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    goto/16 :goto_2b2

    .line 3031
    :cond_129
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 3034
    invoke-virtual {v1, v13, v12}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2b2

    .line 3035
    :cond_137
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 3038
    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2b2

    .line 3039
    :cond_145
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 3042
    invoke-direct {v1, v13, v12}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2b2

    .line 3043
    :cond_152
    const-string v0, "default-browser"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 3044
    invoke-virtual {v1, v13, v12}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2b2

    .line 3045
    :cond_15f
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 3046
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2b2

    .line 3047
    :cond_16d
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_190

    .line 3048
    const-string/jumbo v0, "new"

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3049
    .local v0, "nname":Ljava/lang/String;
    const-string/jumbo v10, "old"

    invoke-interface {v13, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3050
    .local v4, "oname":Ljava/lang/String;
    if-eqz v0, :cond_18e

    if-eqz v4, :cond_18e

    .line 3051
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    .end local v0  # "nname":Ljava/lang/String;
    .end local v4  # "oname":Ljava/lang/String;
    :cond_18e
    goto/16 :goto_2b2

    :cond_190
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 3054
    invoke-direct {v1, v13}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2b2

    .line 3055
    :cond_19e
    const-string/jumbo v0, "last-platform-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 3057
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3059
    .local v0, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 3062
    .local v4, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v10, "internal"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3063
    const-string v10, "external"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3064
    const-string v10, "fingerprint"

    .line 3065
    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3067
    .end local v0  # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v4  # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_2b2

    :cond_1ce
    const-string v0, "database-version"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    .line 3069
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3071
    .restart local v0  # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v1, v9}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 3074
    .restart local v4  # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v10, "internal"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3075
    const-string v10, "external"

    invoke-static {v13, v10, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3077
    .end local v0  # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v4  # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_2b2

    :cond_1f3
    const-string/jumbo v0, "verifier"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_225

    .line 3078
    const-string v0, "device"

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_202
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_202} :catch_2eb
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_202} :catch_2bc

    move-object v4, v0

    .line 3080
    .local v4, "deviceIdentity":Ljava/lang/String;
    :try_start_203
    invoke-static {v4}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_209
    .catch Ljava/lang/IllegalArgumentException; {:try_start_203 .. :try_end_209} :catch_20a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_203 .. :try_end_209} :catch_2eb
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_209} :catch_2bc

    .line 3084
    goto :goto_223

    .line 3081
    :catch_20a
    move-exception v0

    .line 3082
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_20b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discard invalid verifier device id: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3082
    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    .end local v4  # "deviceIdentity":Ljava/lang/String;
    :goto_223
    goto/16 :goto_2b2

    :cond_225
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_245

    .line 3086
    const-string v0, "enforcement"

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3087
    .local v0, "enforcement":Ljava/lang/String;
    nop

    .line 3088
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_240

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_242

    :cond_240
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_242
    iput-object v4, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 3089
    .end local v0  # "enforcement":Ljava/lang/String;
    goto :goto_2b2

    :cond_245
    const-string/jumbo v0, "keyset-settings"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_256

    .line 3090
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_2b2

    .line 3091
    :cond_256
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_284

    .line 3092
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v13, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3094
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    .line 3095
    .local v4, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v10, "sdkVersion"

    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3096
    const-string v10, "databaseVersion"

    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3097
    const-string v10, "fingerprint"

    invoke-static {v13, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3100
    .end local v0  # "volumeUuid":Ljava/lang/String;
    .end local v4  # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    goto :goto_2b2

    :cond_284
    const-string/jumbo v0, "meizu_version"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_297

    .line 3101
    const-string/jumbo v0, "meizu_fingerprint"

    invoke-static {v13, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->meizuFingerprint:Ljava/lang/String;

    goto :goto_2b2

    .line 3104
    :cond_297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <packages>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3104
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3108
    .end local v15  # "tagName":Ljava/lang/String;
    :goto_2b2
    nop

    .line 3014
    :cond_2b3
    :goto_2b3
    const/4 v4, 0x4

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_c7

    .line 3110
    :cond_2b8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20b .. :try_end_2bb} :catch_2eb
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_2bb} :catch_2bc

    .end local v2  # "outerDepth":I
    .end local v13  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14  # "type":I
    goto :goto_319

    .line 3117
    :catch_2bc
    move-exception v0

    .line 3118
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3120
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31a

    .line 3112
    .end local v0  # "e":Ljava/io/IOException;
    :catch_2eb
    move-exception v0

    .line 3113
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3115
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3121
    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_319
    nop

    .line 3134
    :goto_31a
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3136
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_321
    if-ge v2, v0, :cond_396

    .line 3137
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3138
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v5

    .line 3139
    .local v5, "sharedUserId":I
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v6

    .line 3140
    .local v6, "idObj":Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_344

    .line 3141
    move-object v7, v6

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    .line 3142
    .local v7, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3143
    iget v8, v7, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v8, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3144
    invoke-direct {v1, v4, v7}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 3145
    .end local v7  # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_393

    :cond_344
    const-string v7, " has shared uid "

    const-string v8, "Bad package setting: package "

    if-eqz v6, :cond_36f

    .line 3146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " that is not a shared uid\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3148
    .local v7, "msg":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3149
    invoke-static {v11, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3150
    .end local v7  # "msg":Ljava/lang/String;
    goto :goto_393

    .line 3151
    :cond_36f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " that is not defined\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3153
    .restart local v7  # "msg":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3154
    invoke-static {v11, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3136
    .end local v4  # "p":Lcom/android/server/pm/PackageSetting;
    .end local v5  # "sharedUserId":I
    .end local v6  # "idObj":Ljava/lang/Object;
    .end local v7  # "msg":Ljava/lang/String;
    :goto_393
    add-int/lit8 v2, v2, 0x1

    goto :goto_321

    .line 3157
    .end local v2  # "i":I
    :cond_396
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3159
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3c2

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3160
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3ac

    goto :goto_3c2

    .line 3168
    :cond_3ac
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3169
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3170
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    goto :goto_3b0

    .line 3162
    :cond_3c2
    :goto_3c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3163
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3164
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3166
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3173
    :cond_3d3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3174
    .restart local v4  # "user":Landroid/content/pm/UserInfo;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3175
    .end local v4  # "user":Landroid/content/pm/UserInfo;
    goto :goto_3d7

    .line 3181
    :cond_3eb
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3182
    .local v2, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_3f5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_413

    .line 3183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3184
    .local v4, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 3185
    .local v5, "id":Ljava/lang/Object;
    if-eqz v5, :cond_412

    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_412

    .line 3186
    move-object v6, v5

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    iput-object v6, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3188
    .end local v4  # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5  # "id":Ljava/lang/Object;
    :cond_412
    goto :goto_3f5

    .line 3190
    :cond_413
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read completed successfully: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packages, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 3191
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " shared uids\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3195
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    invoke-virtual {v4}, Lcom/android/server/pm/FlymeMzAppManager;->readConfig()V

    .line 3197
    const/4 v4, 0x1

    return v4
.end method

.method readPackageRestrictionsLPr(I)V
    .registers 59
    .param p1, "userId"  # I

    .line 1539
    move-object/from16 v1, p0

    move/from16 v3, p1

    const-string/jumbo v15, "pkg"

    const/4 v2, 0x0

    .line 1540
    .local v2, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v14

    .line 1541
    .local v14, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v13

    .line 1542
    .local v13, "backupFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v12, "PackageManager"

    const/4 v6, 0x4

    if-eqz v0, :cond_4f

    .line 1544
    :try_start_19
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1545
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1548
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_48} :catch_4b

    .line 1558
    :cond_48
    move-object/from16 v26, v2

    goto :goto_51

    .line 1556
    :catch_4b
    move-exception v0

    move-object/from16 v26, v2

    goto :goto_51

    .line 1542
    :cond_4f
    move-object/from16 v26, v2

    .line 1562
    .end local v2  # "str":Ljava/io/FileInputStream;
    .local v26, "str":Ljava/io/FileInputStream;
    :goto_51
    const-string v11, "Error reading package manager stopped packages"

    const/4 v10, 0x6

    const-string v9, "Error reading: "

    if-nez v26, :cond_162

    .line 1563
    :try_start_58
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_5c} :catch_153
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_143

    if-nez v0, :cond_f9

    .line 1564
    :try_start_5e
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1572
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_80} :catch_ea
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_80} :catch_da

    .line 1573
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v27, v9

    move v9, v15

    move v10, v15

    move-object/from16 v28, v11

    move v11, v15

    move-object/from16 v29, v12

    move v12, v15

    const/4 v15, 0x0

    move-object/from16 v30, v13

    .end local v13  # "backupFile":Ljava/io/File;
    .local v30, "backupFile":Ljava/io/File;
    move-object v13, v15

    move-object/from16 v31, v14

    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .local v31, "userPackagesStateFile":Ljava/io/File;
    move-object v14, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v3, p1

    :try_start_ad
    invoke-virtual/range {v2 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ad .. :try_end_b0} :catch_c9
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_be

    .line 1592
    .end local v2  # "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v3, p1

    move-object/from16 v9, v27

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    const/4 v10, 0x6

    goto :goto_74

    .line 1767
    :catch_be
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    goto/16 :goto_66d

    .line 1760
    :catch_c9
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1593
    .end local v30  # "backupFile":Ljava/io/File;
    .end local v31  # "userPackagesStateFile":Ljava/io/File;
    .restart local v13  # "backupFile":Ljava/io/File;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :cond_d9
    return-void

    .line 1767
    :catch_da
    move-exception v0

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13  # "backupFile":Ljava/io/File;
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .restart local v30  # "backupFile":Ljava/io/File;
    .restart local v31  # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_66d

    .line 1760
    .end local v30  # "backupFile":Ljava/io/File;
    .end local v31  # "userPackagesStateFile":Ljava/io/File;
    .restart local v13  # "backupFile":Ljava/io/File;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :catch_ea
    move-exception v0

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v5, v9

    move v4, v10

    move-object v2, v11

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13  # "backupFile":Ljava/io/File;
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .restart local v30  # "backupFile":Ljava/io/File;
    .restart local v31  # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_6b0

    .line 1595
    .end local v30  # "backupFile":Ljava/io/File;
    .end local v31  # "userPackagesStateFile":Ljava/io/File;
    .restart local v13  # "backupFile":Ljava/io/File;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :cond_f9
    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .end local v13  # "backupFile":Ljava/io/File;
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .restart local v30  # "backupFile":Ljava/io/File;
    .restart local v31  # "userPackagesStateFile":Ljava/io/File;
    :try_start_103
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_105
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_103 .. :try_end_105} :catch_133
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_105} :catch_128

    move-object/from16 v14, v31

    .end local v31  # "userPackagesStateFile":Ljava/io/File;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :try_start_107
    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_107 .. :try_end_10a} :catch_118
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10d

    move-object v13, v0

    .end local v26  # "str":Ljava/io/FileInputStream;
    .local v0, "str":Ljava/io/FileInputStream;
    goto/16 :goto_16c

    .line 1767
    .end local v0  # "str":Ljava/io/FileInputStream;
    .restart local v26  # "str":Ljava/io/FileInputStream;
    :catch_10d
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    move-object/from16 v7, v29

    goto/16 :goto_66d

    .line 1760
    :catch_118
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1767
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .restart local v31  # "userPackagesStateFile":Ljava/io/File;
    :catch_128
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    .end local v31  # "userPackagesStateFile":Ljava/io/File;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_66d

    .line 1760
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .restart local v31  # "userPackagesStateFile":Ljava/io/File;
    :catch_133
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    move-object/from16 v55, v31

    const/4 v4, 0x6

    .end local v31  # "userPackagesStateFile":Ljava/io/File;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_6b0

    .line 1767
    .end local v30  # "backupFile":Ljava/io/File;
    .restart local v13  # "backupFile":Ljava/io/File;
    :catch_143
    move-exception v0

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13  # "backupFile":Ljava/io/File;
    .restart local v30  # "backupFile":Ljava/io/File;
    goto/16 :goto_66d

    .line 1760
    .end local v30  # "backupFile":Ljava/io/File;
    .restart local v13  # "backupFile":Ljava/io/File;
    :catch_153
    move-exception v0

    move-object/from16 v30, v13

    move/from16 v3, p1

    move-object v5, v9

    move v4, v10

    move-object v2, v11

    move-object v7, v12

    move-object/from16 v55, v14

    move-object/from16 v13, v26

    .end local v13  # "backupFile":Ljava/io/File;
    .restart local v30  # "backupFile":Ljava/io/File;
    goto/16 :goto_6b0

    .line 1562
    .end local v30  # "backupFile":Ljava/io/File;
    .restart local v13  # "backupFile":Ljava/io/File;
    :cond_162
    move-object/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    .end local v13  # "backupFile":Ljava/io/File;
    .restart local v30  # "backupFile":Ljava/io/File;
    move-object/from16 v13, v26

    .line 1597
    .end local v26  # "str":Ljava/io/FileInputStream;
    .local v13, "str":Ljava/io/FileInputStream;
    :goto_16c
    :try_start_16c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_170
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16c .. :try_end_170} :catch_6a2
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_170} :catch_664

    .line 1598
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_170
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1601
    :goto_179
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_17d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_170 .. :try_end_17d} :catch_656
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_17d} :catch_664

    move v3, v2

    .local v3, "type":I
    const/4 v12, 0x2

    const/4 v11, 0x1

    if-eq v2, v12, :cond_185

    if-eq v3, v11, :cond_185

    goto :goto_179

    .line 1606
    :cond_185
    if-eq v3, v12, :cond_1ac

    .line 1607
    :try_start_187
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in package restrictions file\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    const/4 v2, 0x5

    const-string v4, "No start tag found in package manager stopped packages"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_194
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_187 .. :try_end_194} :catch_19e
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_194} :catch_195

    .line 1610
    return-void

    .line 1767
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3  # "type":I
    :catch_195
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    goto/16 :goto_66d

    .line 1760
    :catch_19e
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1613
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3  # "type":I
    :cond_1ac
    const/4 v2, 0x0

    .line 1615
    .local v2, "maxAppLinkGeneration":I
    :try_start_1ad
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v10, v4

    .line 1616
    .local v10, "outerDepth":I
    const/4 v9, 0x0

    move-object v4, v9

    .line 1617
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_1b4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_1b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ad .. :try_end_1b8} :catch_656
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b8} :catch_664

    move v3, v5

    if-eq v5, v11, :cond_62f

    const/4 v8, 0x3

    if-ne v3, v8, :cond_1d3

    .line 1619
    :try_start_1be
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5
    :try_end_1c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1be .. :try_end_1c2} :catch_19e
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c2} :catch_195

    if-le v5, v10, :cond_1c5

    goto :goto_1d3

    :cond_1c5
    move/from16 v31, v3

    move/from16 v36, v10

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    move/from16 v3, p1

    goto/16 :goto_63b

    .line 1620
    :cond_1d3
    :goto_1d3
    if-eq v3, v8, :cond_603

    if-ne v3, v6, :cond_1ef

    .line 1622
    move/from16 v31, v3

    move/from16 v42, v6

    move-object/from16 v53, v9

    move/from16 v36, v10

    move/from16 v48, v11

    move/from16 v52, v12

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v7, v29

    move/from16 v3, p1

    goto/16 :goto_619

    .line 1625
    :cond_1ef
    :try_start_1ef
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 1626
    .local v7, "tagName":Ljava/lang/String;
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ef .. :try_end_1f8} :catch_656
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f8} :catch_664

    if-eqz v5, :cond_534

    .line 1627
    :try_start_1fa
    const-string/jumbo v5, "name"

    invoke-interface {v0, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1628
    .local v5, "name":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;
    :try_end_209
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fa .. :try_end_209} :catch_529
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_209} :catch_51e

    move-object/from16 v26, v6

    .line 1629
    .end local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .local v26, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v26, :cond_241

    .line 1630
    :try_start_20d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package known for stopped package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_21e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20d .. :try_end_21e} :catch_19e
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_21e} :catch_195

    move-object/from16 v6, v29

    :try_start_220
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_226
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_220 .. :try_end_226} :catch_234
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_226} :catch_22c

    .line 1633
    move-object/from16 v29, v6

    move-object/from16 v4, v26

    const/4 v6, 0x4

    goto :goto_1b4

    .line 1767
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2  # "maxAppLinkGeneration":I
    .end local v3  # "type":I
    .end local v5  # "name":Ljava/lang/String;
    .end local v7  # "tagName":Ljava/lang/String;
    .end local v10  # "outerDepth":I
    .end local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    :catch_22c
    move-exception v0

    move/from16 v3, p1

    move-object v7, v6

    move-object/from16 v55, v14

    goto/16 :goto_66d

    .line 1760
    :catch_234
    move-exception v0

    move/from16 v3, p1

    move-object v7, v6

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1636
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2  # "maxAppLinkGeneration":I
    .restart local v3  # "type":I
    .restart local v5  # "name":Ljava/lang/String;
    .restart local v7  # "tagName":Ljava/lang/String;
    .restart local v10  # "outerDepth":I
    .restart local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_241
    move-object/from16 v6, v29

    :try_start_243
    const-string v4, "ceDataInode"

    const-wide/16 v8, 0x0

    invoke-static {v0, v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v32, v5

    .end local v5  # "name":Ljava/lang/String;
    .local v32, "name":Ljava/lang/String;
    move-wide v4, v8

    .line 1638
    .local v4, "ceDataInode":J
    const-string/jumbo v8, "inst"

    invoke-static {v0, v8, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    move-object v9, v7

    .end local v7  # "tagName":Ljava/lang/String;
    .local v9, "tagName":Ljava/lang/String;
    move v7, v8

    .line 1640
    .local v7, "installed":Z
    const-string/jumbo v8, "stopped"

    const/4 v12, 0x0

    invoke-static {v0, v8, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    .line 1642
    .local v8, "stopped":Z
    const-string/jumbo v11, "nl"

    invoke-static {v0, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v34, v9

    const/4 v12, 0x0

    .end local v9  # "tagName":Ljava/lang/String;
    .local v34, "tagName":Ljava/lang/String;
    move v9, v11

    .line 1647
    .local v9, "notLaunched":Z
    const-string v11, "blocked"

    invoke-interface {v0, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v11

    .line 1648
    .local v29, "blockedStr":Ljava/lang/String;
    if-nez v29, :cond_276

    .line 1649
    const/4 v11, 0x0

    goto :goto_27a

    :cond_276
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1650
    .local v11, "hidden":Z
    :goto_27a
    const-string v12, "hidden"

    move/from16 v31, v3

    const/4 v3, 0x0

    .end local v3  # "type":I
    .local v31, "type":I
    invoke-interface {v0, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v35, v12

    .line 1651
    .local v35, "hiddenStr":Ljava/lang/String;
    if-nez v35, :cond_289

    .line 1652
    move v3, v11

    goto :goto_28d

    :cond_289
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_28d
    move/from16 v36, v10

    .end local v10  # "outerDepth":I
    .local v36, "outerDepth":I
    move v10, v3

    .line 1654
    .end local v11  # "hidden":Z
    .local v10, "hidden":Z
    const-string v3, "distraction_flags"

    const/4 v12, 0x0

    invoke-static {v0, v3, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v3, 0x1

    .line 1656
    .local v11, "distractionFlags":I
    const-string/jumbo v3, "suspended"

    invoke-static {v0, v3, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v38, v3

    .line 1658
    .local v38, "suspended":Z
    const-string/jumbo v3, "suspending-package"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1660
    .local v3, "suspendingPackage":Ljava/lang/String;
    const-string/jumbo v12, "suspend_dialog_message"
    :try_end_2ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_243 .. :try_end_2ac} :catch_512
    .catch Ljava/io/IOException; {:try_start_243 .. :try_end_2ac} :catch_506

    move-object/from16 v19, v6

    const/4 v6, 0x0

    :try_start_2af
    invoke-interface {v0, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_2b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2af .. :try_end_2b3} :catch_4f9
    .catch Ljava/io/IOException; {:try_start_2af .. :try_end_2b3} :catch_4ec

    .line 1662
    .local v12, "dialogMessage":Ljava/lang/String;
    if-eqz v38, :cond_2d4

    if-nez v3, :cond_2d4

    .line 1663
    :try_start_2b7
    const-string v6, "android"
    :try_end_2b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b7 .. :try_end_2b9} :catch_2c6
    .catch Ljava/io/IOException; {:try_start_2b7 .. :try_end_2b9} :catch_2bd

    move-object v3, v6

    move-object/from16 v39, v3

    goto :goto_2d6

    .line 1767
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2  # "maxAppLinkGeneration":I
    .end local v3  # "suspendingPackage":Ljava/lang/String;
    .end local v4  # "ceDataInode":J
    .end local v7  # "installed":Z
    .end local v8  # "stopped":Z
    .end local v9  # "notLaunched":Z
    .end local v10  # "hidden":Z
    .end local v11  # "distractionFlags":I
    .end local v12  # "dialogMessage":Ljava/lang/String;
    .end local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29  # "blockedStr":Ljava/lang/String;
    .end local v31  # "type":I
    .end local v32  # "name":Ljava/lang/String;
    .end local v34  # "tagName":Ljava/lang/String;
    .end local v35  # "hiddenStr":Ljava/lang/String;
    .end local v36  # "outerDepth":I
    .end local v38  # "suspended":Z
    :catch_2bd
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v7, v19

    goto/16 :goto_66d

    .line 1760
    :catch_2c6
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v7, v19

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1666
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2  # "maxAppLinkGeneration":I
    .restart local v3  # "suspendingPackage":Ljava/lang/String;
    .restart local v4  # "ceDataInode":J
    .restart local v7  # "installed":Z
    .restart local v8  # "stopped":Z
    .restart local v9  # "notLaunched":Z
    .restart local v10  # "hidden":Z
    .restart local v11  # "distractionFlags":I
    .restart local v12  # "dialogMessage":Ljava/lang/String;
    .restart local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29  # "blockedStr":Ljava/lang/String;
    .restart local v31  # "type":I
    .restart local v32  # "name":Ljava/lang/String;
    .restart local v34  # "tagName":Ljava/lang/String;
    .restart local v35  # "hiddenStr":Ljava/lang/String;
    .restart local v36  # "outerDepth":I
    .restart local v38  # "suspended":Z
    :cond_2d4
    move-object/from16 v39, v3

    .end local v3  # "suspendingPackage":Ljava/lang/String;
    .local v39, "suspendingPackage":Ljava/lang/String;
    :goto_2d6
    :try_start_2d6
    const-string v3, "blockUninstall"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v40, v3

    .line 1668
    .local v40, "blockUninstall":Z
    const-string/jumbo v3, "instant-app"

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 1670
    .local v17, "instantApp":Z
    const-string/jumbo v3, "virtual-preload"

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 1672
    .local v18, "virtualPreload":Z
    const-string v3, "enabled"

    invoke-static {v0, v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3
    :try_end_2f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d6 .. :try_end_2f3} :catch_4f9
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_2f3} :catch_4ec

    move-wide/from16 v42, v4

    move-object/from16 v41, v19

    const/4 v4, 0x4

    .end local v4  # "ceDataInode":J
    .local v42, "ceDataInode":J
    move v6, v3

    .line 1674
    .local v6, "enabled":I
    :try_start_2f9
    const-string v3, "enabledCaller"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1676
    .local v19, "enabledCaller":Ljava/lang/String;
    const-string v3, "harmful-app-warning"

    .line 1677
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1678
    .local v25, "harmfulAppWarning":Ljava/lang/String;
    const-string v3, "domainVerificationStatus"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 1681
    .local v22, "verifState":I
    const-string v3, "app-link-generation"

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    .line 1683
    .local v5, "linkGeneration":I
    if-le v5, v2, :cond_31a

    .line 1684
    move v2, v5

    move/from16 v44, v2

    goto :goto_31c

    .line 1683
    :cond_31a
    move/from16 v44, v2

    .line 1686
    .end local v2  # "maxAppLinkGeneration":I
    .local v44, "maxAppLinkGeneration":I
    :goto_31c
    const-string/jumbo v2, "install-reason"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v24

    .line 1689
    .local v24, "installReason":I
    const/4 v2, 0x0

    .line 1690
    .local v2, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 1691
    .local v16, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 1692
    .local v21, "suspendedAppExtras":Landroid/os/PersistableBundle;
    const/16 v45, 0x0

    .line 1693
    .local v45, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    const/16 v46, 0x0

    .line 1695
    .local v46, "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v47

    move/from16 v48, v47

    move-object/from16 v47, v16

    move-object/from16 v49, v21

    move-object/from16 v50, v45

    move-object/from16 v45, v2

    .line 1696
    .end local v2  # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16  # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21  # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v45, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v47, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v48, "packageDepth":I
    .local v49, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v50, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :goto_33b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_33f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f9 .. :try_end_33f} :catch_4db
    .catch Ljava/io/IOException; {:try_start_2f9 .. :try_end_33f} :catch_4ce

    move/from16 v51, v2

    const/4 v3, 0x1

    .end local v31  # "type":I
    .local v51, "type":I
    if-eq v2, v3, :cond_423

    move/from16 v3, v51

    const/4 v2, 0x3

    .end local v51  # "type":I
    .local v3, "type":I
    if-ne v3, v2, :cond_358

    .line 1698
    :try_start_349
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v2, v48

    .end local v48  # "packageDepth":I
    .local v2, "packageDepth":I
    if-le v4, v2, :cond_352

    goto :goto_35a

    :cond_352
    move/from16 v48, v2

    move/from16 v31, v3

    goto/16 :goto_425

    .line 1696
    .end local v2  # "packageDepth":I
    .restart local v48  # "packageDepth":I
    :cond_358
    move/from16 v2, v48

    .line 1699
    .end local v48  # "packageDepth":I
    .restart local v2  # "packageDepth":I
    :goto_35a
    const/4 v4, 0x3

    if-eq v3, v4, :cond_41b

    const/4 v4, 0x4

    if-ne v3, v4, :cond_366

    .line 1701
    move/from16 v48, v2

    move/from16 v31, v3

    goto/16 :goto_41f

    .line 1703
    :cond_366
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v31, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v48

    sparse-switch v48, :sswitch_data_6e2

    move/from16 v48, v2

    .end local v2  # "packageDepth":I
    .restart local v48  # "packageDepth":I
    goto :goto_3b5

    .end local v48  # "packageDepth":I
    .restart local v2  # "packageDepth":I
    :sswitch_376
    move/from16 v48, v2

    .end local v2  # "packageDepth":I
    .restart local v48  # "packageDepth":I
    const-string/jumbo v2, "suspended-dialog-info"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b5

    const/4 v2, 0x4

    goto :goto_3b7

    .end local v48  # "packageDepth":I
    .restart local v2  # "packageDepth":I
    :sswitch_383
    move/from16 v48, v2

    .end local v2  # "packageDepth":I
    .restart local v48  # "packageDepth":I
    const-string/jumbo v2, "suspended-launcher-extras"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b5

    const/4 v2, 0x3

    goto :goto_3b7

    .end local v48  # "packageDepth":I
    .restart local v2  # "packageDepth":I
    :sswitch_390
    move/from16 v48, v2

    .end local v2  # "packageDepth":I
    .restart local v48  # "packageDepth":I
    const-string/jumbo v2, "suspended-app-extras"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b5

    const/4 v2, 0x2

    goto :goto_3b7

    .end local v48  # "packageDepth":I
    .restart local v2  # "packageDepth":I
    :sswitch_39d
    move/from16 v48, v2

    .end local v2  # "packageDepth":I
    .restart local v48  # "packageDepth":I
    const-string v2, "enabled-components"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b5

    const/4 v2, 0x0

    goto :goto_3b7

    .end local v48  # "packageDepth":I
    .restart local v2  # "packageDepth":I
    :sswitch_3a9
    move/from16 v48, v2

    .end local v2  # "packageDepth":I
    .restart local v48  # "packageDepth":I
    const-string v2, "disabled-components"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b5

    const/4 v2, 0x1

    goto :goto_3b7

    :cond_3b5
    :goto_3b5
    move/from16 v2, v31

    :goto_3b7
    if-eqz v2, :cond_40e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_405

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3fc

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3f3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3ea

    .line 1720
    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v3

    .end local v3  # "type":I
    .restart local v31  # "type":I
    const-string v3, "Unknown tag "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " under tag "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_417

    .line 1717
    .end local v31  # "type":I
    .restart local v3  # "type":I
    :cond_3ea
    move/from16 v31, v3

    .end local v3  # "type":I
    .restart local v31  # "type":I
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    .line 1718
    .end local v46  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v2, "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    move-object/from16 v46, v2

    goto :goto_417

    .line 1714
    .end local v2  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v31  # "type":I
    .restart local v3  # "type":I
    .restart local v46  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    :cond_3f3
    move/from16 v31, v3

    .end local v3  # "type":I
    .restart local v31  # "type":I
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v50, v2

    .line 1715
    goto :goto_417

    .line 1711
    .end local v31  # "type":I
    .restart local v3  # "type":I
    :cond_3fc
    move/from16 v31, v3

    .end local v3  # "type":I
    .restart local v31  # "type":I
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v49, v2

    .line 1712
    goto :goto_417

    .line 1708
    .end local v31  # "type":I
    .restart local v3  # "type":I
    :cond_405
    move/from16 v31, v3

    .end local v3  # "type":I
    .restart local v31  # "type":I
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    move-object/from16 v47, v2

    .line 1709
    goto :goto_417

    .line 1705
    .end local v31  # "type":I
    .restart local v3  # "type":I
    :cond_40e
    move/from16 v31, v3

    .end local v3  # "type":I
    .restart local v31  # "type":I
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v2

    move-object/from16 v45, v2

    .line 1706
    nop

    .line 1720
    :goto_417
    const/4 v3, 0x0

    const/4 v4, 0x4

    goto/16 :goto_33b

    .line 1699
    .end local v31  # "type":I
    .end local v48  # "packageDepth":I
    .local v2, "packageDepth":I
    .restart local v3  # "type":I
    :cond_41b
    move/from16 v48, v2

    move/from16 v31, v3

    .line 1696
    .end local v2  # "packageDepth":I
    .end local v3  # "type":I
    .restart local v31  # "type":I
    .restart local v48  # "packageDepth":I
    :goto_41f
    const/4 v3, 0x0

    const/4 v4, 0x4

    goto/16 :goto_33b

    .end local v31  # "type":I
    .restart local v51  # "type":I
    :cond_423
    move/from16 v31, v51

    .line 1724
    .end local v51  # "type":I
    .restart local v31  # "type":I
    :goto_425
    if-nez v46, :cond_454

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_454

    .line 1725
    new-instance v2, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1726
    invoke-virtual {v2, v12}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v2

    .line 1727
    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2
    :try_end_43a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_349 .. :try_end_43a} :catch_446
    .catch Ljava/io/IOException; {:try_start_349 .. :try_end_43a} :catch_43d

    move-object/from16 v46, v2

    .end local v46  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .local v2, "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    goto :goto_454

    .line 1767
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v5  # "linkGeneration":I
    .end local v6  # "enabled":I
    .end local v7  # "installed":Z
    .end local v8  # "stopped":Z
    .end local v9  # "notLaunched":Z
    .end local v10  # "hidden":Z
    .end local v11  # "distractionFlags":I
    .end local v12  # "dialogMessage":Ljava/lang/String;
    .end local v17  # "instantApp":Z
    .end local v18  # "virtualPreload":Z
    .end local v19  # "enabledCaller":Ljava/lang/String;
    .end local v22  # "verifState":I
    .end local v24  # "installReason":I
    .end local v25  # "harmfulAppWarning":Ljava/lang/String;
    .end local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29  # "blockedStr":Ljava/lang/String;
    .end local v31  # "type":I
    .end local v32  # "name":Ljava/lang/String;
    .end local v34  # "tagName":Ljava/lang/String;
    .end local v35  # "hiddenStr":Ljava/lang/String;
    .end local v36  # "outerDepth":I
    .end local v38  # "suspended":Z
    .end local v39  # "suspendingPackage":Ljava/lang/String;
    .end local v40  # "blockUninstall":Z
    .end local v42  # "ceDataInode":J
    .end local v44  # "maxAppLinkGeneration":I
    .end local v45  # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v47  # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v48  # "packageDepth":I
    .end local v49  # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50  # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :catch_43d
    move-exception v0

    move/from16 v3, p1

    :goto_440
    move-object/from16 v55, v14

    move-object/from16 v7, v41

    goto/16 :goto_66d

    .line 1760
    :catch_446
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1730
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5  # "linkGeneration":I
    .restart local v6  # "enabled":I
    .restart local v7  # "installed":Z
    .restart local v8  # "stopped":Z
    .restart local v9  # "notLaunched":Z
    .restart local v10  # "hidden":Z
    .restart local v11  # "distractionFlags":I
    .restart local v12  # "dialogMessage":Ljava/lang/String;
    .restart local v17  # "instantApp":Z
    .restart local v18  # "virtualPreload":Z
    .restart local v19  # "enabledCaller":Ljava/lang/String;
    .restart local v22  # "verifState":I
    .restart local v24  # "installReason":I
    .restart local v25  # "harmfulAppWarning":Ljava/lang/String;
    .restart local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29  # "blockedStr":Ljava/lang/String;
    .restart local v31  # "type":I
    .restart local v32  # "name":Ljava/lang/String;
    .restart local v34  # "tagName":Ljava/lang/String;
    .restart local v35  # "hiddenStr":Ljava/lang/String;
    .restart local v36  # "outerDepth":I
    .restart local v38  # "suspended":Z
    .restart local v39  # "suspendingPackage":Ljava/lang/String;
    .restart local v40  # "blockUninstall":Z
    .restart local v42  # "ceDataInode":J
    .restart local v44  # "maxAppLinkGeneration":I
    .restart local v45  # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v46  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v47  # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v48  # "packageDepth":I
    .restart local v49  # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v50  # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :cond_454
    :goto_454
    if-eqz v40, :cond_46f

    .line 1731
    move/from16 v4, p1

    move-object/from16 v3, v32

    const/4 v2, 0x1

    .end local v32  # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :try_start_45b
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_45e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45b .. :try_end_45e} :catch_462
    .catch Ljava/io/IOException; {:try_start_45b .. :try_end_45e} :catch_45f

    goto :goto_474

    .line 1767
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3  # "name":Ljava/lang/String;
    .end local v5  # "linkGeneration":I
    .end local v6  # "enabled":I
    .end local v7  # "installed":Z
    .end local v8  # "stopped":Z
    .end local v9  # "notLaunched":Z
    .end local v10  # "hidden":Z
    .end local v11  # "distractionFlags":I
    .end local v12  # "dialogMessage":Ljava/lang/String;
    .end local v17  # "instantApp":Z
    .end local v18  # "virtualPreload":Z
    .end local v19  # "enabledCaller":Ljava/lang/String;
    .end local v22  # "verifState":I
    .end local v24  # "installReason":I
    .end local v25  # "harmfulAppWarning":Ljava/lang/String;
    .end local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29  # "blockedStr":Ljava/lang/String;
    .end local v31  # "type":I
    .end local v34  # "tagName":Ljava/lang/String;
    .end local v35  # "hiddenStr":Ljava/lang/String;
    .end local v36  # "outerDepth":I
    .end local v38  # "suspended":Z
    .end local v39  # "suspendingPackage":Ljava/lang/String;
    .end local v40  # "blockUninstall":Z
    .end local v42  # "ceDataInode":J
    .end local v44  # "maxAppLinkGeneration":I
    .end local v45  # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v46  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v47  # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v48  # "packageDepth":I
    .end local v49  # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50  # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :catch_45f
    move-exception v0

    move v3, v4

    goto :goto_440

    .line 1760
    :catch_462
    move-exception v0

    move v3, v4

    move-object/from16 v55, v14

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1730
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5  # "linkGeneration":I
    .restart local v6  # "enabled":I
    .restart local v7  # "installed":Z
    .restart local v8  # "stopped":Z
    .restart local v9  # "notLaunched":Z
    .restart local v10  # "hidden":Z
    .restart local v11  # "distractionFlags":I
    .restart local v12  # "dialogMessage":Ljava/lang/String;
    .restart local v17  # "instantApp":Z
    .restart local v18  # "virtualPreload":Z
    .restart local v19  # "enabledCaller":Ljava/lang/String;
    .restart local v22  # "verifState":I
    .restart local v24  # "installReason":I
    .restart local v25  # "harmfulAppWarning":Ljava/lang/String;
    .restart local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29  # "blockedStr":Ljava/lang/String;
    .restart local v31  # "type":I
    .restart local v32  # "name":Ljava/lang/String;
    .restart local v34  # "tagName":Ljava/lang/String;
    .restart local v35  # "hiddenStr":Ljava/lang/String;
    .restart local v36  # "outerDepth":I
    .restart local v38  # "suspended":Z
    .restart local v39  # "suspendingPackage":Ljava/lang/String;
    .restart local v40  # "blockUninstall":Z
    .restart local v42  # "ceDataInode":J
    .restart local v44  # "maxAppLinkGeneration":I
    .restart local v45  # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v46  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .restart local v47  # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v48  # "packageDepth":I
    .restart local v49  # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v50  # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :cond_46f
    move/from16 v4, p1

    move-object/from16 v3, v32

    const/4 v2, 0x1

    .line 1733
    .end local v32  # "name":Ljava/lang/String;
    .restart local v3  # "name":Ljava/lang/String;
    :goto_474
    move/from16 v16, v2

    move/from16 v32, v48

    .end local v48  # "packageDepth":I
    .local v32, "packageDepth":I
    move-object/from16 v2, v26

    move/from16 v48, v16

    move/from16 v37, v31

    move-object/from16 v31, v3

    .end local v3  # "name":Ljava/lang/String;
    .local v31, "name":Ljava/lang/String;
    .local v37, "type":I
    move/from16 v3, p1

    move-object/from16 v51, v12

    const/16 v52, 0x2

    const/16 v53, 0x0

    .end local v12  # "dialogMessage":Ljava/lang/String;
    .local v51, "dialogMessage":Ljava/lang/String;
    move/from16 v12, v38

    move-object/from16 v54, v13

    .end local v13  # "str":Ljava/io/FileInputStream;
    .local v54, "str":Ljava/io/FileInputStream;
    move-object/from16 v13, v39

    move-object/from16 v55, v14

    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .local v55, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v14, v46

    move-object/from16 v56, v15

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v20, v45

    move-object/from16 v21, v47

    move/from16 v23, v5

    move v1, v4

    move/from16 v33, v5

    move-wide/from16 v4, v42

    const/16 v42, 0x4

    .end local v5  # "linkGeneration":I
    .end local v42  # "ceDataInode":J
    .restart local v4  # "ceDataInode":J
    .local v33, "linkGeneration":I
    :try_start_4a5
    invoke-virtual/range {v2 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_4a8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a5 .. :try_end_4a8} :catch_4bf
    .catch Ljava/io/IOException; {:try_start_4a5 .. :try_end_4a8} :catch_4b5

    .line 1739
    .end local v4  # "ceDataInode":J
    .end local v6  # "enabled":I
    .end local v7  # "installed":Z
    .end local v8  # "stopped":Z
    .end local v9  # "notLaunched":Z
    .end local v10  # "hidden":Z
    .end local v11  # "distractionFlags":I
    .end local v17  # "instantApp":Z
    .end local v18  # "virtualPreload":Z
    .end local v19  # "enabledCaller":Ljava/lang/String;
    .end local v22  # "verifState":I
    .end local v24  # "installReason":I
    .end local v25  # "harmfulAppWarning":Ljava/lang/String;
    .end local v29  # "blockedStr":Ljava/lang/String;
    .end local v31  # "name":Ljava/lang/String;
    .end local v32  # "packageDepth":I
    .end local v33  # "linkGeneration":I
    .end local v35  # "hiddenStr":Ljava/lang/String;
    .end local v38  # "suspended":Z
    .end local v39  # "suspendingPackage":Ljava/lang/String;
    .end local v40  # "blockUninstall":Z
    .end local v45  # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v46  # "suspendDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    .end local v47  # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v49  # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v50  # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v51  # "dialogMessage":Ljava/lang/String;
    move v3, v1

    move-object/from16 v4, v26

    move/from16 v31, v37

    move-object/from16 v7, v41

    move/from16 v2, v44

    move-object/from16 v1, p0

    goto/16 :goto_5c6

    .line 1767
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v34  # "tagName":Ljava/lang/String;
    .end local v36  # "outerDepth":I
    .end local v37  # "type":I
    .end local v44  # "maxAppLinkGeneration":I
    :catch_4b5
    move-exception v0

    move v3, v1

    move-object/from16 v7, v41

    move-object/from16 v13, v54

    move-object/from16 v1, p0

    goto/16 :goto_66d

    .line 1760
    :catch_4bf
    move-exception v0

    move v3, v1

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    move-object/from16 v13, v54

    const/4 v4, 0x6

    move-object/from16 v1, p0

    goto/16 :goto_6b0

    .line 1767
    .end local v54  # "str":Ljava/io/FileInputStream;
    .end local v55  # "userPackagesStateFile":Ljava/io/File;
    .restart local v13  # "str":Ljava/io/FileInputStream;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :catch_4ce
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v7, v41

    goto/16 :goto_66d

    .line 1760
    :catch_4db
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    goto/16 :goto_6af

    .line 1767
    :catch_4ec
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v7, v19

    goto/16 :goto_66d

    .line 1760
    :catch_4f9
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v7, v19

    goto/16 :goto_65f

    .line 1767
    :catch_506
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object v7, v6

    goto/16 :goto_66d

    .line 1760
    :catch_512
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object v7, v6

    goto/16 :goto_65f

    .line 1767
    :catch_51e
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    goto/16 :goto_66b

    .line 1760
    :catch_529
    move-exception v0

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v1, p0

    move/from16 v3, p1

    goto/16 :goto_6a9

    .line 1739
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "maxAppLinkGeneration":I
    .local v3, "type":I
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "tagName":Ljava/lang/String;
    .local v10, "outerDepth":I
    :cond_534
    move/from16 v1, p1

    move/from16 v31, v3

    move/from16 v42, v6

    move-object/from16 v34, v7

    move-object/from16 v53, v9

    move/from16 v36, v10

    move/from16 v48, v11

    move/from16 v52, v12

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v41, v29

    .end local v3  # "type":I
    .end local v7  # "tagName":Ljava/lang/String;
    .end local v10  # "outerDepth":I
    .end local v13  # "str":Ljava/io/FileInputStream;
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .local v31, "type":I
    .restart local v34  # "tagName":Ljava/lang/String;
    .restart local v36  # "outerDepth":I
    .restart local v54  # "str":Ljava/io/FileInputStream;
    .restart local v55  # "userPackagesStateFile":Ljava/io/File;
    :try_start_54c
    const-string/jumbo v3, "preferred-activities"

    move-object/from16 v5, v34

    .end local v34  # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_555
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54c .. :try_end_555} :catch_5f4
    .catch Ljava/io/IOException; {:try_start_54c .. :try_end_555} :catch_5ed

    if-eqz v3, :cond_56d

    .line 1740
    move v3, v1

    move-object/from16 v1, p0

    :try_start_55a
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_55d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55a .. :try_end_55d} :catch_561
    .catch Ljava/io/IOException; {:try_start_55a .. :try_end_55d} :catch_5dc

    move-object/from16 v7, v41

    goto/16 :goto_5c6

    .line 1760
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2  # "maxAppLinkGeneration":I
    .end local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5  # "tagName":Ljava/lang/String;
    .end local v31  # "type":I
    .end local v36  # "outerDepth":I
    :catch_561
    move-exception v0

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v41

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1741
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2  # "maxAppLinkGeneration":I
    .restart local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5  # "tagName":Ljava/lang/String;
    .restart local v31  # "type":I
    .restart local v36  # "outerDepth":I
    :cond_56d
    move v3, v1

    move-object/from16 v1, p0

    :try_start_570
    const-string/jumbo v6, "persistent-preferred-activities"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_577
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_570 .. :try_end_577} :catch_5e1
    .catch Ljava/io/IOException; {:try_start_570 .. :try_end_577} :catch_5dc

    if-eqz v6, :cond_57f

    .line 1742
    :try_start_579
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_57c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_579 .. :try_end_57c} :catch_561
    .catch Ljava/io/IOException; {:try_start_579 .. :try_end_57c} :catch_5dc

    move-object/from16 v7, v41

    goto :goto_5c6

    .line 1743
    :cond_57f
    :try_start_57f
    const-string v6, "crossProfile-intent-filters"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_585
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57f .. :try_end_585} :catch_5e1
    .catch Ljava/io/IOException; {:try_start_57f .. :try_end_585} :catch_5dc

    if-eqz v6, :cond_58d

    .line 1744
    :try_start_587
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_58a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_587 .. :try_end_58a} :catch_561
    .catch Ljava/io/IOException; {:try_start_587 .. :try_end_58a} :catch_5dc

    move-object/from16 v7, v41

    goto :goto_5c6

    .line 1745
    :cond_58d
    :try_start_58d
    const-string v6, "default-apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_593
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58d .. :try_end_593} :catch_5e1
    .catch Ljava/io/IOException; {:try_start_58d .. :try_end_593} :catch_5dc

    if-eqz v6, :cond_59b

    .line 1746
    :try_start_595
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_598
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_595 .. :try_end_598} :catch_561
    .catch Ljava/io/IOException; {:try_start_595 .. :try_end_598} :catch_5dc

    move-object/from16 v7, v41

    goto :goto_5c6

    .line 1747
    :cond_59b
    :try_start_59b
    const-string v6, "block-uninstall-packages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59b .. :try_end_5a1} :catch_5e1
    .catch Ljava/io/IOException; {:try_start_59b .. :try_end_5a1} :catch_5dc

    if-eqz v6, :cond_5a9

    .line 1748
    :try_start_5a3
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_5a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a3 .. :try_end_5a6} :catch_561
    .catch Ljava/io/IOException; {:try_start_5a3 .. :try_end_5a6} :catch_5dc

    move-object/from16 v7, v41

    goto :goto_5c6

    .line 1750
    :cond_5a9
    :try_start_5a9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <stopped-packages>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_5be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a9 .. :try_end_5be} :catch_5e1
    .catch Ljava/io/IOException; {:try_start_5a9 .. :try_end_5be} :catch_5dc

    .line 1750
    move-object/from16 v7, v41

    :try_start_5c0
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1754
    .end local v5  # "tagName":Ljava/lang/String;
    :goto_5c6
    move-object/from16 v29, v7

    move/from16 v3, v31

    move/from16 v10, v36

    move/from16 v6, v42

    move/from16 v11, v48

    move/from16 v12, v52

    move-object/from16 v9, v53

    move-object/from16 v13, v54

    move-object/from16 v14, v55

    move-object/from16 v15, v56

    goto/16 :goto_1b4

    .line 1767
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2  # "maxAppLinkGeneration":I
    .end local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "type":I
    .end local v36  # "outerDepth":I
    :catch_5dc
    move-exception v0

    move-object/from16 v7, v41

    goto/16 :goto_64a

    .line 1760
    :catch_5e1
    move-exception v0

    move-object/from16 v7, v41

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1767
    :catch_5ed
    move-exception v0

    move v3, v1

    move-object/from16 v7, v41

    move-object/from16 v1, p0

    goto :goto_64a

    .line 1760
    :catch_5f4
    move-exception v0

    move v3, v1

    move-object/from16 v7, v41

    move-object/from16 v1, p0

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto/16 :goto_6b0

    .line 1620
    .end local v54  # "str":Ljava/io/FileInputStream;
    .end local v55  # "userPackagesStateFile":Ljava/io/File;
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2  # "maxAppLinkGeneration":I
    .restart local v3  # "type":I
    .restart local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10  # "outerDepth":I
    .restart local v13  # "str":Ljava/io/FileInputStream;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :cond_603
    move/from16 v31, v3

    move/from16 v42, v6

    move-object/from16 v53, v9

    move/from16 v36, v10

    move/from16 v48, v11

    move/from16 v52, v12

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v56, v15

    move-object/from16 v7, v29

    move/from16 v3, p1

    .line 1617
    .end local v3  # "type":I
    .end local v10  # "outerDepth":I
    .end local v13  # "str":Ljava/io/FileInputStream;
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .restart local v31  # "type":I
    .restart local v36  # "outerDepth":I
    .restart local v54  # "str":Ljava/io/FileInputStream;
    .restart local v55  # "userPackagesStateFile":Ljava/io/File;
    :goto_619
    move-object/from16 v29, v7

    move/from16 v3, v31

    move/from16 v10, v36

    move/from16 v6, v42

    move/from16 v11, v48

    move/from16 v12, v52

    move-object/from16 v9, v53

    move-object/from16 v13, v54

    move-object/from16 v14, v55

    move-object/from16 v15, v56

    goto/16 :goto_1b4

    .end local v31  # "type":I
    .end local v36  # "outerDepth":I
    .end local v54  # "str":Ljava/io/FileInputStream;
    .end local v55  # "userPackagesStateFile":Ljava/io/File;
    .restart local v3  # "type":I
    .restart local v10  # "outerDepth":I
    .restart local v13  # "str":Ljava/io/FileInputStream;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :cond_62f
    move/from16 v31, v3

    move/from16 v36, v10

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    move/from16 v3, p1

    .line 1756
    .end local v3  # "type":I
    .end local v10  # "outerDepth":I
    .end local v13  # "str":Ljava/io/FileInputStream;
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .restart local v31  # "type":I
    .restart local v36  # "outerDepth":I
    .restart local v54  # "str":Ljava/io/FileInputStream;
    .restart local v55  # "userPackagesStateFile":Ljava/io/File;
    :goto_63b
    invoke-virtual/range {v54 .. v54}, Ljava/io/FileInputStream;->close()V

    .line 1758
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_645
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c0 .. :try_end_645} :catch_64d
    .catch Ljava/io/IOException; {:try_start_5c0 .. :try_end_645} :catch_649

    .line 1772
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2  # "maxAppLinkGeneration":I
    .end local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "type":I
    .end local v36  # "outerDepth":I
    move-object/from16 v13, v54

    goto/16 :goto_6e0

    .line 1767
    :catch_649
    move-exception v0

    :goto_64a
    move-object/from16 v13, v54

    goto :goto_66d

    .line 1760
    :catch_64d
    move-exception v0

    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v13, v54

    const/4 v4, 0x6

    goto :goto_6b0

    .end local v54  # "str":Ljava/io/FileInputStream;
    .end local v55  # "userPackagesStateFile":Ljava/io/File;
    .restart local v13  # "str":Ljava/io/FileInputStream;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :catch_656
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    move-object/from16 v7, v29

    :goto_65f
    move-object/from16 v5, v27

    move-object/from16 v2, v28

    goto :goto_6af

    .line 1767
    :catch_664
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    :goto_66b
    move-object/from16 v7, v29

    .line 1768
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v55  # "userPackagesStateFile":Ljava/io/File;
    :goto_66d
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1770
    move-object/from16 v2, v28

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e0

    .line 1760
    .end local v0  # "e":Ljava/io/IOException;
    .end local v55  # "userPackagesStateFile":Ljava/io/File;
    .restart local v14  # "userPackagesStateFile":Ljava/io/File;
    :catch_6a2
    move-exception v0

    move/from16 v3, p1

    move-object/from16 v54, v13

    move-object/from16 v55, v14

    :goto_6a9
    move-object/from16 v5, v27

    move-object/from16 v2, v28

    move-object/from16 v7, v29

    :goto_6af
    const/4 v4, 0x6

    .line 1761
    .end local v14  # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v55  # "userPackagesStateFile":Ljava/io/File;
    :goto_6b0
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading stopped packages: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1764
    invoke-static {v7, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 1773
    :goto_6e0
    return-void

    nop

    :sswitch_data_6e2
    .sparse-switch
        -0x78da70f9 -> :sswitch_3a9
        -0x75017ede -> :sswitch_39d
        -0x5ee8613f -> :sswitch_390
        -0x54ce12c2 -> :sswitch_383
        0x62ff4521 -> :sswitch_376
    .end sparse-switch
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 10
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1379
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1381
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_81

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1382
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_81

    .line 1383
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1384
    goto :goto_4

    .line 1387
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1388
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_65

    .line 1389
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1390
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3e

    .line 1391
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_64

    .line 1393
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1395
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1393
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1398
    .end local v3  # "pa":Lcom/android/server/pm/PreferredActivity;
    :goto_64
    goto :goto_80

    .line 1399
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1399
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1401
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1403
    .end local v1  # "tagName":Ljava/lang/String;
    :goto_80
    goto :goto_4

    .line 1404
    :cond_81
    return-void
.end method

.method readStoppedLPw()V
    .registers 17

    .line 2301
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2302
    .local v2, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    const-string v4, "PackageManager"

    if-eqz v0, :cond_47

    .line 2304
    :try_start_e
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 2305
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2308
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_45} :catch_46

    .line 2318
    :cond_45
    goto :goto_47

    .line 2316
    :catch_46
    move-exception v0

    .line 2322
    :cond_47
    :goto_47
    const-string v5, "Error reading package manager stopped packages"

    const-string v7, "Error reading: "

    const/4 v0, 0x0

    if-nez v2, :cond_88

    .line 2323
    :try_start_4e
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_80

    .line 2324
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v9, "No stopped packages file found\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    const-string v8, "No stopped packages file file; assuming all started"

    invoke-static {v3, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2330
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2331
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2332
    invoke-virtual {v8, v0, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2333
    .end local v8  # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_6c

    .line 2334
    :cond_7f
    return-void

    .line 2336
    :cond_80
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v8

    .line 2338
    :cond_88
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2339
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v8, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2342
    :goto_90
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "type":I
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v10, v12, :cond_9c

    if-eq v11, v13, :cond_9c

    goto :goto_90

    .line 2347
    :cond_9c
    if-eq v11, v12, :cond_ac

    .line 2348
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2351
    return-void

    .line 2354
    :cond_ac
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 2355
    .local v10, "outerDepth":I
    :goto_b0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v11, v12

    if-eq v12, v13, :cond_12f

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c0

    .line 2357
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v10, :cond_12f

    .line 2358
    :cond_c0
    if-eq v11, v12, :cond_12d

    if-ne v11, v3, :cond_c5

    .line 2360
    goto :goto_12d

    .line 2363
    :cond_c5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2364
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_111

    .line 2365
    const-string/jumbo v14, "name"

    invoke-interface {v8, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2366
    .local v14, "name":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 2367
    .local v15, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v15, :cond_f9

    .line 2368
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2369
    const-string v3, "1"

    const-string/jumbo v6, "nl"

    invoke-interface {v8, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 2370
    invoke-virtual {v15, v13, v0}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_10d

    .line 2373
    :cond_f9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No package known for stopped package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :cond_10d
    :goto_10d
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2377
    .end local v14  # "name":Ljava/lang/String;
    .end local v15  # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_12c

    .line 2378
    :cond_111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2378
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2382
    .end local v12  # "tagName":Ljava/lang/String;
    :goto_12c
    nop

    .line 2355
    :cond_12d
    :goto_12d
    const/4 v3, 0x4

    goto :goto_b0

    .line 2384
    :cond_12f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_132
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_132} :catch_165
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_132} :catch_133

    .end local v8  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10  # "outerDepth":I
    .end local v11  # "type":I
    goto :goto_196

    .line 2393
    :catch_133
    move-exception v0

    .line 2394
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading settings: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2396
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_197

    .line 2386
    .end local v0  # "e":Ljava/io/IOException;
    :catch_165
    move-exception v0

    .line 2387
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading stopped packages: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2390
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2399
    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_196
    nop

    .line 2400
    :goto_197
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outPs"  # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2255
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_53

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 2256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_53

    .line 2257
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 2258
    goto :goto_4

    .line 2260
    :cond_1b
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2261
    .local v3, "libName":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2263
    .local v1, "libVersionStr":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 2265
    .local v4, "libVersion":J
    :try_start_2c
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_30} :catch_32

    move-wide v4, v6

    .line 2268
    goto :goto_33

    .line 2266
    :catch_32
    move-exception v6

    .line 2270
    :goto_33
    if-eqz v3, :cond_4f

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4f

    .line 2271
    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2273
    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2277
    :cond_4f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2278
    .end local v1  # "libVersionStr":Ljava/lang/String;
    .end local v3  # "libName":Ljava/lang/String;
    .end local v4  # "libVersion":J
    goto :goto_4

    .line 2279
    :cond_53
    return-void
.end method

.method registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z
    .registers 8
    .param p1, "p"  # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 842
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_c

    .line 844
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 845
    const/4 v0, 0x1

    .local v0, "createdNew":Z
    goto :goto_14

    .line 848
    .end local v0  # "createdNew":Z
    :cond_c
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v0

    .line 850
    .restart local v0  # "createdNew":Z
    :goto_14
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v1, :cond_19

    .line 856
    return v0

    .line 851
    :cond_19
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be assigned a valid UID"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 853
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method removeAppIdLPw(I)V
    .registers 6
    .param p1, "appId"  # I

    .line 1125
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_15

    .line 1126
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1127
    .local v0, "size":I
    add-int/lit16 v1, p1, -0x2710

    .line 1128
    .local v1, "index":I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1129
    .end local v0  # "size":I
    .end local v1  # "index":I
    :cond_14
    goto :goto_1a

    .line 1130
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1132
    :goto_1a
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1133
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .registers 12
    .param p1, "userId"  # I

    .line 4188
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4190
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 4191
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4192
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4195
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4196
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_57

    .line 4197
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4198
    .local v3, "sourceUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4199
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v5, 0x0

    .line 4200
    .local v5, "needsWriting":Z
    new-instance v6, Landroid/util/ArraySet;

    .line 4201
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4202
    .local v6, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4203
    .local v8, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_4e

    .line 4204
    const/4 v5, 0x1

    .line 4205
    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 4207
    .end local v8  # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_4e
    goto :goto_38

    .line 4208
    :cond_4f
    if-eqz v5, :cond_54

    .line 4209
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4196
    .end local v3  # "sourceUserId":I
    .end local v4  # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5  # "needsWriting":Z
    .end local v6  # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 4212
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_57
    monitor-exit v0

    .line 4213
    return-void

    .line 4212
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I

    .line 1296
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "alsoResetStatus"  # Z

    .line 1273
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1274
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1275
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 1280
    :cond_26
    if-eqz p3, :cond_2b

    .line 1281
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1283
    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1284
    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userIds"  # [I

    .line 1288
    const/4 v0, 0x0

    .line 1289
    .local v0, "result":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_10

    aget v3, p2, v2

    .line 1290
    .local v3, "userId":I
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1289
    .end local v3  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1292
    :cond_10
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 1039
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1040
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_42

    .line 1041
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1043
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_3a

    .line 1044
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1045
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_42

    .line 1046
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1048
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    .line 1051
    :cond_3a
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1052
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 1055
    :cond_42
    const/4 v1, -0x1

    return v1
.end method

.method removeSystemMultiApp()V
    .registers 7

    .line 5593
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 5594
    const-string v0, "PackageSettings"

    const-string v1, "FlymeParallelSpace not open"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5595
    return-void

    .line 5597
    :cond_12
    const-string v0, "PackageSettings"

    const-string v2, "FlymeParallelSpace start init System Multi App"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5599
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5600
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_26

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_3d

    .line 5601
    goto :goto_26

    .line 5603
    :cond_3d
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-nez v4, :cond_57

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_55

    goto :goto_57

    :cond_55
    const/4 v4, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v4, 0x1

    .line 5605
    .local v4, "notInstall":Z
    :goto_58
    if-eqz v4, :cond_65

    .line 5606
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/UserHandle;->isMultiSystemPackage(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 5609
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4  # "notInstall":Z
    :cond_65
    goto :goto_26

    .line 5610
    :cond_66
    monitor-exit v0

    .line 5611
    return-void

    .line 5610
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_1c .. :try_end_6a} :catchall_68

    throw v1
.end method

.method removeUserLPw(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 4167
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4168
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4169
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4170
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_a

    .line 4171
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4172
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4173
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4174
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 4175
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4176
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4178
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4180
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4184
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4185
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "blockUninstall"  # Z

    .line 1776
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1777
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1b

    .line 1778
    if-nez v0, :cond_17

    .line 1779
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1780
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1782
    :cond_17
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1783
    :cond_1b
    if-eqz v0, :cond_2b

    .line 1784
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1785
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1786
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1789
    :cond_2b
    :goto_2b
    return-void
.end method

.method setDefaultRuntimePermissionsVersionLPr(II)V
    .registers 4
    .param p1, "version"  # I
    .param p2, "userId"  # I

    .line 1347
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersionLPr(II)V

    .line 1348
    return-void
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "warning"  # Ljava/lang/CharSequence;
    .param p3, "userId"  # I

    .line 4408
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4409
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_16

    .line 4412
    if-nez p2, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4413
    return-void

    .line 4410
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "installerPkgName"  # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 435
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_14

    .line 436
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 437
    if-eqz p2, :cond_14

    .line 438
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_14
    return-void
.end method

.method public setMzAppInstalled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "installed"  # Z

    .line 5633
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/FlymeMzAppManager;->setMzAppInstalled(Ljava/lang/String;Z)V

    .line 5634
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .registers 12
    .param p1, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "stopped"  # Z
    .param p4, "allowedByPermission"  # Z
    .param p5, "uid"  # I
    .param p6, "userId"  # I

    .line 4375
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4376
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4377
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_63

    .line 4380
    if-nez p4, :cond_42

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_15

    goto :goto_42

    .line 4381
    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4393
    :cond_42
    :goto_42
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_62

    .line 4394
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4396
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 4397
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 4398
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4400
    :cond_5d
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4402
    :cond_60
    const/4 v2, 0x1

    return v2

    .line 4404
    :cond_62
    return v3

    .line 4378
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V
    .registers 4
    .param p1, "fingerPrint"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1339
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V

    .line 1340
    return-void
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "status"  # I
    .param p3, "userId"  # I

    .line 1231
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1232
    .local v0, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1233
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 1240
    :cond_26
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_37

    .line 1241
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 1242
    .local v1, "alwaysGeneration":I
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_38

    .line 1244
    .end local v1  # "alwaysGeneration":I
    :cond_37
    const/4 v1, 0x0

    .line 1247
    .restart local v1  # "alwaysGeneration":I
    :goto_38
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1248
    return v2
.end method

.method updateMeizuFingerprint(Ljava/lang/String;)V
    .registers 2
    .param p1, "fingerprint"  # Ljava/lang/String;

    .line 5623
    iput-object p1, p0, Lcom/android/server/pm/Settings;->meizuFingerprint:Ljava/lang/String;

    .line 5624
    return-void
.end method

.method updateMzAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "codePath"  # Ljava/lang/String;

    .line 5641
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/FlymeMzAppManager;->updateMzAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 5642
    return-void
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .registers 16
    .param p1, "deletedPs"  # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"  # I

    .line 960
    const/16 v0, -0x2710

    if-eqz p1, :cond_b3

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_a

    goto/16 :goto_b3

    .line 967
    :cond_a
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_f

    .line 968
    return v0

    .line 971
    :cond_f
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 973
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    const/16 v2, -0x2710

    .line 975
    .local v2, "affectedUserId":I
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 976
    .local v4, "eachPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 977
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_30

    .line 978
    goto :goto_1b

    .line 982
    :cond_30
    const/4 v6, 0x0

    .line 983
    .local v6, "used":Z
    iget-object v7, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 984
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_61

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 985
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_61

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 986
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 987
    const/4 v6, 0x1

    .line 988
    goto :goto_62

    .line 990
    .end local v8  # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_61
    goto :goto_37

    .line 991
    :cond_62
    :goto_62
    if-eqz v6, :cond_65

    .line 992
    goto :goto_1b

    .line 995
    :cond_65
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 996
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 1000
    .local v8, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_94

    .line 1001
    const/4 v9, 0x0

    .line 1002
    .local v9, "reqByDisabledSysPkg":Z
    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_91

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1003
    .local v11, "permission":Ljava/lang/String;
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_90

    .line 1004
    const/4 v9, 0x1

    .line 1005
    goto :goto_91

    .line 1007
    .end local v11  # "permission":Ljava/lang/String;
    :cond_90
    goto :goto_7c

    .line 1008
    :cond_91
    :goto_91
    if-eqz v9, :cond_94

    .line 1009
    goto :goto_1b

    .line 1015
    .end local v9  # "reqByDisabledSysPkg":Z
    :cond_94
    const v9, 0xfbff

    const/4 v10, 0x0

    invoke-virtual {v7, v5, p2, v9, v10}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1018
    invoke-virtual {v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a3

    .line 1020
    const/4 v2, -0x1

    .line 1024
    :cond_a3
    invoke-virtual {v7, v5, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v9

    if-ne v9, v10, :cond_b0

    .line 1026
    if-ne v2, v0, :cond_ad

    .line 1027
    move v2, p2

    goto :goto_b0

    .line 1028
    :cond_ad
    if-eq v2, p2, :cond_b0

    .line 1030
    const/4 v2, -0x1

    .line 1033
    .end local v4  # "eachPerm":Ljava/lang/String;
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "used":Z
    .end local v7  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v8  # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_b0
    :goto_b0
    goto/16 :goto_1b

    .line 1035
    :cond_b2
    return v2

    .line 961
    .end local v1  # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2  # "affectedUserId":I
    :cond_b3
    :goto_b3
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4366
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4367
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_11

    .line 4370
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4368
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 9
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1890
    const-string v0, "all-intent-filter-verifications"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1891
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1892
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_23

    .line 1893
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1894
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v5

    .line 1895
    .local v5, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v5, :cond_20

    .line 1896
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1892
    .end local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5  # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1899
    .end local v3  # "i":I
    :cond_23
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1900
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .registers 6

    .line 1328
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 1329
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1328
    .end local v3  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1331
    :cond_16
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .registers 5

    .line 1319
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1320
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_b

    return-void

    .line 1322
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1323
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1324
    .end local v2  # "user":Landroid/content/pm/UserInfo;
    goto :goto_f

    .line 1325
    :cond_21
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 10
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1957
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1958
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_31

    .line 1959
    const-string v1, "block-uninstall-packages"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1960
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 1961
    const-string v4, "block-uninstall"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1962
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "packageName"

    invoke-interface {p1, v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1963
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1960
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1965
    .end local v3  # "i":I
    :cond_2e
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1967
    :cond_31
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 9
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2239
    .local p2, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_3

    .line 2240
    return-void

    .line 2242
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2243
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_22

    .line 2244
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2245
    .local v2, "childPackageName":Ljava/lang/String;
    const-string v3, "child-package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2246
    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2247
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2243
    .end local v2  # "childPackageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2249
    .end local v1  # "i":I
    :cond_22
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 9
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1861
    const-string v0, "crossProfile-intent-filters"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1862
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1863
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_31

    .line 1864
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1865
    .local v4, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1866
    invoke-virtual {v4, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1867
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1868
    .end local v4  # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_18

    .line 1870
    :cond_31
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1871
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1945
    const-string v0, "default-apps"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1946
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1947
    .local v2, "defaultBrowser":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1948
    const-string v3, "default-browser"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1949
    const-string/jumbo v4, "packageName"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1950
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1952
    :cond_22
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1953
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"  # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2788
    const-string/jumbo v0, "updated-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2789
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2790
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 2791
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2793
    :cond_1b
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2794
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2795
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2796
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2797
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2798
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 2799
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2801
    :cond_63
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_6f

    .line 2802
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2804
    :cond_6f
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_7b

    .line 2805
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2807
    :cond_7b
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_87

    .line 2808
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2810
    :cond_87
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_92

    .line 2811
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2814
    :cond_92
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_a3

    .line 2815
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_af

    .line 2817
    :cond_a3
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2820
    :goto_af
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_bb

    .line 2821
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    const-string/jumbo v3, "parentPackageName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2825
    :cond_bb
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "forceFull"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2826
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d3

    const/4 v2, 0x1

    goto :goto_d4

    :cond_d3
    const/4 v2, 0x0

    :goto_d4
    iput-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->mzApp:Z

    .line 2827
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->mzApp:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mzApp"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2830
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2832
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2835
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_fd

    .line 2836
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2837
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 2836
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2840
    :cond_fd
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2841
    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 7
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"  # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1876
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1877
    const-string v0, "domain-verification"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1878
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1879
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_2f

    .line 1880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote domain verification for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1880
    const-string v3, "PackageSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_2f
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1885
    :cond_32
    return-void
.end method

.method writeKernelMappingLPr()V
    .registers 7

    .line 2581
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2583
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2584
    .local v0, "known":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2585
    .local v1, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    .line 2586
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2585
    .end local v4  # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2589
    :cond_1b
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2591
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2592
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2593
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_25

    .line 2596
    :cond_3a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 2597
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2600
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2596
    .end local v3  # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 2603
    .end local v2  # "i":I
    :cond_59
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p1, "ps"  # Lcom/android/server/pm/PackageSetting;

    .line 2606
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_17

    .line 2608
    :cond_b
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    .line 2609
    return-void

    .line 2606
    :cond_17
    :goto_17
    return-void
.end method

.method writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .registers 11
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "appId"  # I
    .param p3, "excludedUserIds"  # [I

    .line 2612
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2613
    .local v0, "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    .line 2614
    .local v3, "firstTime":Z
    :goto_f
    if-nez v3, :cond_19

    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2615
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    move v1, v2

    .line 2618
    .local v1, "userIdsChanged":Z
    :cond_1a
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2620
    .local v2, "dir":Ljava/io/File;
    if-eqz v3, :cond_32

    .line 2621
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2623
    new-instance v4, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v4

    .line 2624
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    :cond_32
    iget v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq v4, p2, :cond_40

    .line 2629
    new-instance v4, Ljava/io/File;

    const-string v5, "appid"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2630
    .local v4, "appIdFile":Ljava/io/File;
    invoke-direct {p0, v4, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2634
    .end local v4  # "appIdFile":Ljava/io/File;
    :cond_40
    if-eqz v1, :cond_8a

    .line 2636
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_43
    array-length v5, p3

    if-ge v4, v5, :cond_63

    .line 2637
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v5, :cond_54

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, p3, v4

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_60

    .line 2639
    :cond_54
    new-instance v5, Ljava/io/File;

    const-string v6, "excluded_userids"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v6, p3, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2636
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 2645
    .end local v4  # "i":I
    :cond_63
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v4, :cond_88

    .line 2646
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_68
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_88

    .line 2647
    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v5, v5, v4

    invoke-static {p3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_85

    .line 2648
    new-instance v5, Ljava/io/File;

    const-string v6, "clear_userid"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2646
    :cond_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 2656
    .end local v4  # "i":I
    :cond_88
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2658
    :cond_8a
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 9
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"  # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2943
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2944
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v2, "defined-keyset"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2945
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "alias"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2946
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "identifier"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2947
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2948
    .end local v1  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_c

    .line 2949
    :cond_41
    return-void
.end method

.method writeLPr()V
    .registers 24

    .line 2405
    move-object/from16 v1, p0

    const-string/jumbo v0, "renamed-package"

    const-string/jumbo v2, "restored-ivi"

    const-string/jumbo v3, "shared-user"

    const-string/jumbo v4, "permissions"

    const-string/jumbo v5, "version"

    const-string/jumbo v6, "read-external-storage"

    const-string/jumbo v7, "permission-trees"

    const-string/jumbo v8, "verifier"

    const-string/jumbo v9, "meizu_version"

    const-string/jumbo v10, "packages"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 2409
    .local v11, "startTime":J
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    const-string v14, "PackageManager"

    if-eqz v13, :cond_50

    .line 2414
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_46

    .line 2415
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v15, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v13, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_50

    .line 2416
    const-string v0, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    return-void

    .line 2422
    :cond_46
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 2423
    const-string v13, "Preserving older settings backup"

    invoke-static {v14, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    :cond_50
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2430
    :try_start_55
    new-instance v13, Ljava/io/FileOutputStream;

    iget-object v15, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2431
    .local v13, "fstr":Ljava/io/FileOutputStream;
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-direct {v15, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2434
    .local v15, "str":Ljava/io/BufferedOutputStream;
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object/from16 v17, v16

    .line 2435
    .local v17, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_6a} :catch_27a

    move-object/from16 v18, v14

    :try_start_6c
    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_276

    move-wide/from16 v19, v11

    move-object/from16 v11, v17

    .end local v17  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v19, "startTime":J
    :try_start_74
    invoke-interface {v11, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2436
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v12, 0x0

    invoke-interface {v11, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2437
    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v11, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2439
    const/4 v12, 0x0

    invoke-interface {v11, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8b
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v12, v14, :cond_d5

    .line 2442
    iget-object v14, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2443
    .local v14, "volumeUuid":Ljava/lang/String;
    move-object/from16 v16, v13

    .end local v13  # "fstr":Ljava/io/FileOutputStream;
    .local v16, "fstr":Ljava/io/FileOutputStream;
    iget-object v13, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2445
    .local v13, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    move-object/from16 v21, v15

    const/4 v15, 0x0

    .end local v15  # "str":Ljava/io/BufferedOutputStream;
    .local v21, "str":Ljava/io/BufferedOutputStream;
    invoke-interface {v11, v15, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2446
    const-string/jumbo v15, "volumeUuid"

    invoke-static {v11, v15, v14}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2447
    const-string/jumbo v15, "sdkVersion"

    move-object/from16 v22, v14

    .end local v14  # "volumeUuid":Ljava/lang/String;
    .local v22, "volumeUuid":Ljava/lang/String;
    iget v14, v13, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v11, v15, v14}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2448
    const-string v14, "databaseVersion"

    iget v15, v13, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v11, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2449
    const-string v14, "fingerprint"

    iget-object v15, v13, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v11, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2450
    const/4 v14, 0x0

    invoke-interface {v11, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    nop

    .end local v13  # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v22  # "volumeUuid":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, v16

    move-object/from16 v15, v21

    goto :goto_8b

    .end local v16  # "fstr":Ljava/io/FileOutputStream;
    .end local v21  # "str":Ljava/io/BufferedOutputStream;
    .local v13, "fstr":Ljava/io/FileOutputStream;
    .restart local v15  # "str":Ljava/io/BufferedOutputStream;
    :cond_d5
    move-object/from16 v16, v13

    move-object/from16 v21, v15

    .line 2455
    .end local v12  # "i":I
    .end local v13  # "fstr":Ljava/io/FileOutputStream;
    .end local v15  # "str":Ljava/io/BufferedOutputStream;
    .restart local v16  # "fstr":Ljava/io/FileOutputStream;
    .restart local v21  # "str":Ljava/io/BufferedOutputStream;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->meizuFingerprint:Ljava/lang/String;

    if-eqz v5, :cond_ed

    .line 2456
    const/4 v5, 0x0

    invoke-interface {v11, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2457
    const-string/jumbo v5, "meizu_fingerprint"

    iget-object v12, v1, Lcom/android/server/pm/Settings;->meizuFingerprint:Ljava/lang/String;

    invoke-static {v11, v5, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2458
    const/4 v5, 0x0

    invoke-interface {v11, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    :cond_ed
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v5, :cond_104

    .line 2463
    const/4 v5, 0x0

    invoke-interface {v11, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2464
    const-string v5, "device"

    iget-object v9, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v9}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-interface {v11, v12, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2465
    invoke-interface {v11, v12, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2468
    :cond_104
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v5, :cond_122

    .line 2469
    const/4 v5, 0x0

    invoke-interface {v11, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2470
    const-string v5, "enforcement"

    .line 2471
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_119

    const-string v8, "1"

    goto :goto_11b

    :cond_119
    const-string v8, "0"

    .line 2470
    :goto_11b
    const/4 v9, 0x0

    invoke-interface {v11, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    invoke-interface {v11, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2475
    :cond_122
    const/4 v5, 0x0

    invoke-interface {v11, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2476
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v11}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2477
    const/4 v5, 0x0

    invoke-interface {v11, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2479
    invoke-interface {v11, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2480
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v11}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2481
    const/4 v5, 0x0

    invoke-interface {v11, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_145
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_155

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2484
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v11, v5}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2485
    .end local v5  # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_145

    .line 2487
    :cond_155
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2488
    .restart local v5  # "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1, v11, v5}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2489
    .end local v5  # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_15f

    .line 2491
    :cond_16f
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_179
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 2492
    .local v5, "usr":Lcom/android/server/pm/SharedUserSetting;
    const/4 v6, 0x0

    invoke-interface {v11, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2493
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v11, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2494
    const-string/jumbo v6, "userId"

    iget v7, v5, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 2495
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2494
    const/4 v8, 0x0

    invoke-interface {v11, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2496
    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v7, "sigs"

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v11, v7, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2497
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 2498
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v6

    .line 2497
    invoke-virtual {v1, v11, v6}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2499
    const/4 v6, 0x0

    invoke-interface {v11, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2500
    nop

    .end local v5  # "usr":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_179

    .line 2502
    :cond_1b9
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_1fa

    .line 2503
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2504
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {v11, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2505
    const-string/jumbo v5, "new"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2506
    const-string/jumbo v5, "old"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v11, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2507
    invoke-interface {v11, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2508
    nop

    .end local v4  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1cb

    .line 2511
    :cond_1fa
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_200} :catch_274

    .line 2512
    .local v0, "numIVIs":I
    const-string v3, "PackageSettings"

    if-lez v0, :cond_227

    .line 2513
    :try_start_204
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v4, :cond_20d

    .line 2514
    const-string v4, "Writing restored-ivi entries to packages.xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_20d
    const/4 v3, 0x0

    invoke-interface {v11, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2517
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_212
    if-ge v3, v0, :cond_222

    .line 2518
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2519
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v11, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2517
    .end local v4  # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_212

    .line 2521
    .end local v3  # "i":I
    :cond_222
    const/4 v3, 0x0

    invoke-interface {v11, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_230

    .line 2523
    :cond_227
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_230

    .line 2524
    const-string v2, "  no restored IVI entries to write"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_230
    :goto_230
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v2, v11}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2530
    const/4 v2, 0x0

    invoke-interface {v11, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2532
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2534
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2535
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2536
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->close()V

    .line 2540
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2541
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2546
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2547
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2548
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2549
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2551
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mFlymeMzAppManager:Lcom/android/server/pm/FlymeMzAppManager;

    invoke-virtual {v2}, Lcom/android/server/pm/FlymeMzAppManager;->writeConfig()V

    .line 2553
    const-string/jumbo v2, "package"

    .line 2554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v19

    .line 2553
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_273
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_273} :catch_274

    .line 2555
    return-void

    .line 2557
    .end local v0  # "numIVIs":I
    .end local v11  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16  # "fstr":Ljava/io/FileOutputStream;
    .end local v21  # "str":Ljava/io/BufferedOutputStream;
    :catch_274
    move-exception v0

    goto :goto_27f

    .end local v19  # "startTime":J
    .local v11, "startTime":J
    :catch_276
    move-exception v0

    move-wide/from16 v19, v11

    goto :goto_27f

    :catch_27a
    move-exception v0

    move-wide/from16 v19, v11

    move-object/from16 v18, v14

    .line 2558
    .end local v11  # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v19  # "startTime":J
    :goto_27f
    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v3, v18

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2562
    .end local v0  # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2ac

    .line 2563
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2ac

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :cond_2ac
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"  # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2845
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2846
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2847
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 2848
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2850
    :cond_1b
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2851
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 2852
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2855
    :cond_34
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 2856
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2858
    :cond_40
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 2859
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2861
    :cond_4c
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_58

    .line 2862
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2864
    :cond_58
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_63

    .line 2865
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2868
    :cond_63
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "publicFlags"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2869
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "privateFlags"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2870
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2871
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2872
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2873
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2874
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_bb

    .line 2875
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c7

    .line 2877
    :cond_bb
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2879
    :goto_c7
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    const-string/jumbo v3, "true"

    if-eqz v2, :cond_d4

    .line 2880
    const-string/jumbo v2, "uidError"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2882
    :cond_d4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_e0

    .line 2883
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v4, "installer"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2885
    :cond_e0
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    if-eqz v2, :cond_ea

    .line 2886
    const-string/jumbo v2, "isOrphaned"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2888
    :cond_ea
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v2, :cond_f6

    .line 2889
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v4, "volumeUuid"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2891
    :cond_f6
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_106

    .line 2892
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 2893
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2892
    const-string v4, "categoryHint"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2895
    :cond_106
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_112

    .line 2896
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    const-string/jumbo v4, "parentPackageName"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2898
    :cond_112
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v2, :cond_11c

    .line 2899
    const-string/jumbo v2, "updateAvailable"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2902
    :cond_11c
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->forceFull:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "forceFull"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2905
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2907
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2909
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    const-string/jumbo v4, "sigs"

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2911
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2912
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 2911
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2914
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2915
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2916
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2917
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2919
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2920
    return-void
.end method

.method writePackageListLPr()V
    .registers 2

    .line 2670
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2671
    return-void
.end method

.method writePackageListLPr(I)V
    .registers 7
    .param p1, "creatingUserId"  # I

    .line 2674
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2675
    .local v0, "filename":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2676
    .local v1, "ctx":Ljava/lang/String;
    const-string v2, "PackageSettings"

    if-nez v1, :cond_28

    .line 2677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get SELinux context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2678
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2677
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_28
    invoke-static {v1}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2682
    const-string v3, "Failed to set packages.list SELinux context"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_33
    const/4 v2, 0x0

    :try_start_34
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3c

    .line 2687
    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2688
    nop

    .line 2689
    return-void

    .line 2687
    :catchall_3c
    move-exception v3

    invoke-static {v2}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    throw v3
.end method

.method writePackageRestrictionsLPr(I)V
    .registers 28
    .param p1, "userId"  # I

    .line 1973
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "disabled-components"

    const-string v4, "enabled-components"

    const-string/jumbo v5, "suspended-launcher-extras"

    const-string/jumbo v6, "suspended-app-extras"

    const-string/jumbo v7, "suspended-dialog-info"

    const-string/jumbo v8, "pkg"

    const-string/jumbo v9, "package-restrictions"

    const-string/jumbo v10, "name"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1977
    .local v11, "startTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v13

    .line 1978
    .local v13, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 1979
    .local v14, "backupFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1980
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v15, "PackageManager"

    if-eqz v0, :cond_54

    .line 1985
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1986
    invoke-virtual {v13, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1987
    const-string v0, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    return-void

    .line 1993
    :cond_4c
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 1994
    const-string v0, "Preserving older stopped packages backup"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_54
    :try_start_54
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v16, v0

    .line 2000
    .local v16, "fstr":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5d} :catch_2eb

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    .end local v16  # "fstr":Ljava/io/FileOutputStream;
    .local v15, "fstr":Ljava/io/FileOutputStream;
    :try_start_61
    invoke-direct {v0, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v16, v0

    .line 2002
    .local v16, "str":Ljava/io/BufferedOutputStream;
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object/from16 v18, v0

    .line 2003
    .local v18, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_73} :catch_2e3

    move-wide/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v18

    .end local v16  # "str":Ljava/io/BufferedOutputStream;
    .end local v18  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v11, "str":Ljava/io/BufferedOutputStream;
    .local v12, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v19, "startTime":J
    :try_start_79
    invoke-interface {v12, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_2dd

    .line 2004
    move-object/from16 v16, v13

    .end local v13  # "userPackagesStateFile":Ljava/io/File;
    .local v16, "userPackagesStateFile":Ljava/io/File;
    const/4 v13, 0x1

    :try_start_7f
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v13, 0x0

    invoke-interface {v12, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2005
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2007
    const/4 v13, 0x0

    invoke-interface {v12, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2009
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_9f} :catch_2d9

    if-eqz v0, :cond_286

    :try_start_a1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v21, v0

    .line 2010
    .local v21, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v22, v13

    move-object/from16 v13, v21

    .end local v21  # "pkg":Lcom/android/server/pm/PackageSetting;
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_b1} :catch_27e

    move-object/from16 v21, v0

    .line 2013
    .local v21, "ustate":Landroid/content/pm/PackageUserState;
    move-object/from16 v23, v14

    const/4 v14, 0x0

    .end local v14  # "backupFile":Ljava/io/File;
    .local v23, "backupFile":Ljava/io/File;
    :try_start_b6
    invoke-interface {v12, v14, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2014
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v12, v14, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2015
    move-object/from16 v14, v21

    .end local v21  # "ustate":Landroid/content/pm/PackageUserState;
    .local v14, "ustate":Landroid/content/pm/PackageUserState;
    iget-wide v0, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v24, 0x0

    cmp-long v0, v0, v24

    if-eqz v0, :cond_cf

    .line 2016
    const-string v0, "ceDataInode"

    iget-wide v1, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v12, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2018
    :cond_cf
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v0, :cond_dc

    .line 2019
    const-string/jumbo v0, "inst"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2021
    :cond_dc
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->stopped:Z
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_de} :catch_277

    const-string/jumbo v1, "true"

    if-eqz v0, :cond_ea

    .line 2022
    :try_start_e3
    const-string/jumbo v0, "stopped"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    :cond_ea
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v0, :cond_f5

    .line 2025
    const-string/jumbo v0, "nl"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    :cond_f5
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_ff

    .line 2028
    const-string v0, "hidden"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2030
    :cond_ff
    iget v0, v14, Landroid/content/pm/PackageUserState;->distractionFlags:I

    if-eqz v0, :cond_112

    .line 2031
    const-string v0, "distraction_flags"

    iget v2, v14, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 2032
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2031
    move-object/from16 v21, v15

    const/4 v15, 0x0

    .end local v15  # "fstr":Ljava/io/FileOutputStream;
    .local v21, "fstr":Ljava/io/FileOutputStream;
    invoke-interface {v12, v15, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_114

    .line 2030
    .end local v21  # "fstr":Ljava/io/FileOutputStream;
    .restart local v15  # "fstr":Ljava/io/FileOutputStream;
    :cond_112
    move-object/from16 v21, v15

    .line 2034
    .end local v15  # "fstr":Ljava/io/FileOutputStream;
    .restart local v21  # "fstr":Ljava/io/FileOutputStream;
    :goto_114
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_19f

    .line 2035
    const-string/jumbo v0, "suspended"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2036
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    if-eqz v0, :cond_12c

    .line 2037
    const-string/jumbo v0, "suspending-package"

    iget-object v2, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2040
    :cond_12c
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_13d

    .line 2041
    const/4 v2, 0x0

    invoke-interface {v12, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2042
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0, v12}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2043
    const/4 v2, 0x0

    invoke-interface {v12, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2045
    :cond_13d
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_13f} :catch_277

    const-string v2, "PackageSettings"

    if-eqz v0, :cond_170

    .line 2046
    const/4 v15, 0x0

    :try_start_144
    invoke-interface {v12, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_277

    .line 2048
    :try_start_147
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_14c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_147 .. :try_end_14c} :catch_14f
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14c} :catch_277

    .line 2052
    move-object/from16 v24, v7

    goto :goto_16b

    .line 2049
    :catch_14f
    move-exception v0

    .line 2050
    .local v0, "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_150
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v7

    const-string v7, "Exception while trying to write suspendedAppExtras for "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ". Will be lost on reboot"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2053
    .end local v0  # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_16b
    const/4 v7, 0x0

    invoke-interface {v12, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_172

    .line 2045
    :cond_170
    move-object/from16 v24, v7

    .line 2055
    :goto_172
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1a1

    .line 2056
    const/4 v7, 0x0

    invoke-interface {v12, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_17a} :catch_277

    .line 2058
    :try_start_17a
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_17f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17a .. :try_end_17f} :catch_180
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17f} :catch_277

    .line 2062
    goto :goto_19a

    .line 2059
    :catch_180
    move-exception v0

    .line 2060
    .restart local v0  # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedLauncherExtras for "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2063
    .end local v0  # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_19a
    const/4 v2, 0x0

    invoke-interface {v12, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1a1

    .line 2034
    :cond_19f
    move-object/from16 v24, v7

    .line 2066
    :cond_1a1
    :goto_1a1
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_1ac

    .line 2067
    const-string/jumbo v0, "instant-app"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2069
    :cond_1ac
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_1b7

    .line 2070
    const-string/jumbo v0, "virtual-preload"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2072
    :cond_1b7
    iget v0, v14, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v0, :cond_1d3

    .line 2073
    const-string v0, "enabled"

    iget v1, v14, Landroid/content/pm/PackageUserState;->enabled:I

    .line 2074
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2073
    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2075
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v0, :cond_1d3

    .line 2076
    const-string v0, "enabledCaller"

    iget-object v1, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2080
    :cond_1d3
    iget v0, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v0, :cond_1de

    .line 2082
    const-string v0, "domainVerificationStatus"

    iget v1, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v12, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2085
    :cond_1de
    iget v0, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v0, :cond_1e9

    .line 2086
    const-string v0, "app-link-generation"

    iget v1, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v12, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2089
    :cond_1e9
    iget v0, v14, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v0, :cond_1fa

    .line 2090
    const-string/jumbo v0, "install-reason"

    iget v1, v14, Landroid/content/pm/PackageUserState;->installReason:I

    .line 2091
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2090
    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2093
    :cond_1fa
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v0, :cond_206

    .line 2094
    const-string v0, "harmful-app-warning"

    iget-object v1, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2097
    :cond_206
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_20c} :catch_277

    const-string/jumbo v1, "item"

    if-nez v0, :cond_237

    .line 2098
    const/4 v2, 0x0

    :try_start_212
    invoke-interface {v12, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2099
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_233

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2100
    .local v2, "name":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2101
    invoke-interface {v12, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2102
    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2103
    nop

    .end local v2  # "name":Ljava/lang/String;
    goto :goto_21b

    .line 2104
    :cond_233
    const/4 v2, 0x0

    invoke-interface {v12, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2106
    :cond_237
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_265

    .line 2107
    const/4 v2, 0x0

    invoke-interface {v12, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2108
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_249
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_261

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2109
    .restart local v2  # "name":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2110
    invoke-interface {v12, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2111
    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2112
    nop

    .end local v2  # "name":Ljava/lang/String;
    goto :goto_249

    .line 2113
    :cond_261
    const/4 v1, 0x0

    invoke-interface {v12, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2116
    :cond_265
    const/4 v1, 0x0

    invoke-interface {v12, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_269
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_269} :catch_277

    .line 2117
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v15, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v7, v24

    .end local v13  # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "ustate":Landroid/content/pm/PackageUserState;
    goto/16 :goto_9b

    .line 2146
    .end local v11  # "str":Ljava/io/BufferedOutputStream;
    .end local v12  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v21  # "fstr":Ljava/io/FileOutputStream;
    :catch_277
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto/16 :goto_2f4

    .end local v23  # "backupFile":Ljava/io/File;
    .local v14, "backupFile":Ljava/io/File;
    :catch_27e
    move-exception v0

    move-object/from16 v23, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto :goto_2dc

    .line 2119
    .restart local v11  # "str":Ljava/io/BufferedOutputStream;
    .restart local v12  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v15  # "fstr":Ljava/io/FileOutputStream;
    :cond_286
    move-object/from16 v23, v14

    move-object/from16 v21, v15

    .end local v14  # "backupFile":Ljava/io/File;
    .end local v15  # "fstr":Ljava/io/FileOutputStream;
    .restart local v21  # "fstr":Ljava/io/FileOutputStream;
    .restart local v23  # "backupFile":Ljava/io/File;
    const/4 v3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    :try_start_28f
    invoke-virtual {v1, v12, v2, v3}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2120
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2121
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2122
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2123
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2125
    const/4 v3, 0x0

    invoke-interface {v12, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2127
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2129
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2130
    invoke-static/range {v21 .. v21}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2131
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 2135
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 2136
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v19

    .line 2141
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_2d6
    .catch Ljava/io/IOException; {:try_start_28f .. :try_end_2d6} :catch_2d7

    .line 2145
    return-void

    .line 2146
    .end local v11  # "str":Ljava/io/BufferedOutputStream;
    .end local v12  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v21  # "fstr":Ljava/io/FileOutputStream;
    :catch_2d7
    move-exception v0

    goto :goto_2f4

    .end local v23  # "backupFile":Ljava/io/File;
    .restart local v14  # "backupFile":Ljava/io/File;
    :catch_2d9
    move-exception v0

    move-object/from16 v23, v14

    .end local v14  # "backupFile":Ljava/io/File;
    .restart local v23  # "backupFile":Ljava/io/File;
    :goto_2dc
    goto :goto_2f4

    .end local v16  # "userPackagesStateFile":Ljava/io/File;
    .end local v23  # "backupFile":Ljava/io/File;
    .local v13, "userPackagesStateFile":Ljava/io/File;
    .restart local v14  # "backupFile":Ljava/io/File;
    :catch_2dd
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v23, v14

    .end local v13  # "userPackagesStateFile":Ljava/io/File;
    .end local v14  # "backupFile":Ljava/io/File;
    .restart local v16  # "userPackagesStateFile":Ljava/io/File;
    .restart local v23  # "backupFile":Ljava/io/File;
    goto :goto_2f4

    .end local v16  # "userPackagesStateFile":Ljava/io/File;
    .end local v19  # "startTime":J
    .end local v23  # "backupFile":Ljava/io/File;
    .local v11, "startTime":J
    .restart local v13  # "userPackagesStateFile":Ljava/io/File;
    .restart local v14  # "backupFile":Ljava/io/File;
    :catch_2e3
    move-exception v0

    move-wide/from16 v19, v11

    move-object/from16 v16, v13

    move-object/from16 v23, v14

    goto :goto_2f4

    :catch_2eb
    move-exception v0

    move-wide/from16 v19, v11

    move-object/from16 v16, v13

    move-object/from16 v23, v14

    move-object/from16 v17, v15

    .line 2147
    .end local v11  # "startTime":J
    .end local v13  # "userPackagesStateFile":Ljava/io/File;
    .end local v14  # "backupFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16  # "userPackagesStateFile":Ljava/io/File;
    .restart local v19  # "startTime":J
    .restart local v23  # "backupFile":Ljava/io/File;
    :goto_2f4
    const-string v3, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v4, v17

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2153
    .end local v0  # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31d

    .line 2154
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_31d

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean up mangled file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_31d
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"  # Lcom/android/server/pm/permission/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2952
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2953
    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 10
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2220
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2221
    return-void

    .line 2224
    :cond_7
    const-string/jumbo v0, "perms"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2226
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2227
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2228
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2229
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "granted"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2230
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "flags"

    invoke-interface {p1, v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2231
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2232
    .end local v3  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_12

    .line 2234
    :cond_4c
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2235
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 9
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1847
    const-string/jumbo v0, "persistent-preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1848
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1849
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_32

    .line 1850
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1851
    .local v4, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1852
    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1853
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1854
    .end local v4  # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_19

    .line 1856
    :cond_32
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1857
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .registers 10
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .param p3, "full"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1833
    const-string/jumbo v0, "preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1834
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1835
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_32

    .line 1836
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredActivity;

    .line 1837
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v5, "item"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1838
    invoke-virtual {v4, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1839
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1840
    .end local v4  # "pa":Lcom/android/server/pm/PreferredActivity;
    goto :goto_19

    .line 1842
    :cond_32
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1843
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "sync"  # Z

    .line 5209
    if-eqz p2, :cond_8

    .line 5210
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_d

    .line 5212
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5214
    :goto_d
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"  # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2924
    const-string/jumbo v0, "proper-signing-keyset"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2925
    nop

    .line 2926
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2925
    const-string/jumbo v3, "identifier"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2927
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2928
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 12
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"  # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2932
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2933
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_27

    aget-wide v3, v0, v2

    .line 2934
    .local v3, "id":J
    const-string/jumbo v5, "upgrade-keyset"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2935
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "identifier"

    invoke-interface {p1, v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2936
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2933
    .end local v3  # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2939
    :cond_27
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .param p1, "newPackage"  # Lcom/android/server/pm/PackageSetting;
    .param p2, "oldPackage"  # Lcom/android/server/pm/PackageSetting;

    .line 865
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_9

    .line 866
    return-void

    .line 869
    :cond_9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 870
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_14

    .line 871
    return-void

    .line 873
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 874
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez p2, :cond_29

    .line 875
    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_2f

    .line 876
    :cond_29
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    :goto_2f
    nop

    .line 877
    .local v3, "oldUserState":Landroid/content/pm/PackageUserState;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 878
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 880
    .end local v2  # "user":Landroid/content/pm/UserInfo;
    .end local v3  # "oldUserState":Landroid/content/pm/PackageUserState;
    :cond_41
    goto :goto_18

    .line 881
    :cond_42
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .registers 13
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "usesStaticLibraries"  # [Ljava/lang/String;
    .param p3, "usesStaticLibraryVersions"  # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2283
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_37

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_11

    goto :goto_37

    .line 2287
    :cond_11
    array-length v0, p2

    .line 2288
    .local v0, "libCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_36

    .line 2289
    aget-object v2, p2, v1

    .line 2290
    .local v2, "libName":Ljava/lang/String;
    aget-wide v3, p3, v1

    .line 2291
    .local v3, "libVersion":J
    const-string/jumbo v5, "uses-static-lib"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2292
    const-string/jumbo v7, "name"

    invoke-interface {p1, v6, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2293
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "version"

    invoke-interface {p1, v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2294
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2288
    .end local v2  # "libName":Ljava/lang/String;
    .end local v3  # "libVersion":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2296
    .end local v1  # "i":I
    :cond_36
    return-void

    .line 2285
    .end local v0  # "libCount":I
    :cond_37
    :goto_37
    return-void
.end method
