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


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 287
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3589
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3590
    const/high16 v2, 0x10000000

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3591
    const/high16 v2, 0x40000000  # 2.0f

    sput v2, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4385
    const/16 v3, 0x1e

    new-array v4, v3, [Ljava/lang/Object;

    .line 4386
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "SYSTEM"

    aput-object v7, v4, v5

    .line 4387
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v9, 0x3

    const-string v10, "DEBUGGABLE"

    aput-object v10, v4, v9

    .line 4388
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v11, 0x5

    const-string v12, "HAS_CODE"

    aput-object v12, v4, v11

    .line 4389
    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v4, v14

    const/4 v15, 0x7

    const-string v16, "PERSISTENT"

    aput-object v16, v4, v15

    .line 4390
    const/16 v16, 0x10

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v12

    const/16 v18, 0x9

    const-string v19, "FACTORY_TEST"

    aput-object v19, v4, v18

    .line 4391
    const/16 v19, 0x20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0xa

    aput-object v20, v4, v21

    const/16 v21, 0xb

    const-string v22, "ALLOW_TASK_REPARENTING"

    aput-object v22, v4, v21

    .line 4392
    const/16 v21, 0x40

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0xc

    aput-object v21, v4, v22

    const/16 v21, 0xd

    const-string v22, "ALLOW_CLEAR_USER_DATA"

    aput-object v22, v4, v21

    .line 4393
    const/16 v21, 0x80

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0xe

    aput-object v21, v4, v22

    const/16 v21, 0xf

    const-string v22, "UPDATED_SYSTEM_APP"

    aput-object v22, v4, v21

    .line 4394
    const/16 v21, 0x100

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v16

    const/16 v21, 0x11

    const-string v22, "TEST_ONLY"

    aput-object v22, v4, v21

    .line 4395
    const/16 v21, 0x4000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x12

    aput-object v21, v4, v22

    const/16 v21, 0x13

    const-string v22, "VM_SAFE_MODE"

    aput-object v22, v4, v21

    .line 4396
    const v21, 0x8000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x14

    aput-object v21, v4, v22

    const/16 v21, 0x15

    const-string v22, "ALLOW_BACKUP"

    aput-object v22, v4, v21

    .line 4397
    const/high16 v21, 0x10000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x16

    aput-object v21, v4, v22

    const/16 v21, 0x17

    const-string v22, "KILL_AFTER_RESTORE"

    aput-object v22, v4, v21

    .line 4398
    const/high16 v21, 0x20000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x18

    aput-object v21, v4, v22

    const/16 v21, 0x19

    const-string v22, "RESTORE_ANY_VERSION"

    aput-object v22, v4, v21

    .line 4399
    const/high16 v21, 0x40000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1a

    aput-object v21, v4, v22

    const/16 v21, 0x1b

    const-string v22, "EXTERNAL_STORAGE"

    aput-object v22, v4, v21

    .line 4400
    const/high16 v21, 0x100000

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1c

    aput-object v21, v4, v22

    const/16 v21, 0x1d

    const-string v22, "LARGE_HEAP"

    aput-object v22, v4, v21

    sput-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4403
    const/16 v4, 0x2e

    new-array v4, v4, [Ljava/lang/Object;

    .line 4404
    const/16 v21, 0x400

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v4, v5

    .line 4405
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v4, v9

    .line 4406
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v4, v11

    .line 4407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v14

    const-string v0, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    aput-object v0, v4, v15

    .line 4408
    const/high16 v0, 0x20000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v12

    const-string v0, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    aput-object v0, v4, v18

    .line 4409
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v4, v1

    const/16 v0, 0xb

    const-string v1, "BACKUP_IN_FOREGROUND"

    aput-object v1, v4, v0

    .line 4410
    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    const-string v1, "CANT_SAVE_STATE"

    aput-object v1, v4, v0

    .line 4411
    const/16 v0, 0xe

    aput-object v20, v4, v0

    const/16 v0, 0xf

    const-string v1, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v1, v4, v0

    .line 4412
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v16

    const/16 v0, 0x11

    const-string v1, "DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4413
    const/16 v0, 0x12

    aput-object v17, v4, v0

    const/16 v0, 0x13

    const-string v1, "HAS_DOMAIN_URLS"

    aput-object v1, v4, v0

    .line 4414
    const/16 v0, 0x14

    aput-object v6, v4, v0

    const/16 v0, 0x15

    const-string v1, "HIDDEN"

    aput-object v1, v4, v0

    .line 4415
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v4, v1

    const/16 v0, 0x17

    const-string v1, "EPHEMERAL"

    aput-object v1, v4, v0

    .line 4416
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v4, v1

    const/16 v0, 0x19

    const-string v1, "ISOLATED_SPLIT_LOADING"

    aput-object v1, v4, v0

    .line 4417
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v4, v1

    const/16 v0, 0x1b

    const-string v1, "OEM"

    aput-object v1, v4, v0

    .line 4418
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, v4, v1

    const/16 v0, 0x1d

    const-string v1, "PARTIALLY_DIRECT_BOOT_AWARE"

    aput-object v1, v4, v0

    .line 4419
    aput-object v13, v4, v3

    const/16 v0, 0x1f

    const-string v1, "PRIVILEGED"

    aput-object v1, v4, v0

    .line 4420
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v19

    const/16 v0, 0x21

    const-string v1, "REQUIRED_FOR_SYSTEM_USER"

    aput-object v1, v4, v0

    .line 4421
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v4, v1

    const/16 v0, 0x23

    const-string v1, "STATIC_SHARED_LIBRARY"

    aput-object v1, v4, v0

    .line 4422
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v4, v1

    const/16 v0, 0x25

    const-string v1, "VENDOR"

    aput-object v1, v4, v0

    .line 4423
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v4, v1

    const/16 v0, 0x27

    const-string v1, "PRODUCT"

    aput-object v1, v4, v0

    .line 4424
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, v4, v1

    const/16 v0, 0x29

    const-string v1, "PRODUCT_SERVICES"

    aput-object v1, v4, v0

    .line 4425
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, v4, v1

    const/16 v0, 0x2b

    const-string v1, "VIRTUAL_PRELOAD"

    aput-object v1, v4, v0

    .line 4426
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, v4, v1

    const/16 v0, 0x2d

    const-string v1, "ODM"

    aput-object v1, v4, v0

    sput-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4403
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 6

    .line 386
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

    .line 387
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 388
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 389
    new-instance p2, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, p3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 391
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "system"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 392
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 393
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    const/16 p3, 0x1fd

    invoke-static {p1, p3, p2, p2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 397
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo p3, "packages.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 398
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo p3, "packages-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 399
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo p3, "packages.list"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 400
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 p2, 0x1a0

    const/16 p3, 0x3e8

    const/16 v0, 0x408

    invoke-static {p1, p2, p3, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 402
    new-instance p1, Ljava/io/File;

    const-string p2, "/config/sdcardfs"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_fd

    goto :goto_fe

    :cond_fd
    const/4 p1, 0x0

    :goto_fe
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 406
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo p3, "packages-stopped.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 407
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo p3, "packages-stopped-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 408
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .registers 2

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I
    .registers 5

    .line 4139
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4140
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    :goto_8
    if-ge v1, v0, :cond_1d

    .line 4141
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 4142
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4143
    add-int/lit16 v1, v1, 0x2710

    return v1

    .line 4140
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4148
    :cond_1d
    const/16 v1, 0x270f

    if-le v0, v1, :cond_23

    .line 4149
    const/4 p1, -0x1

    return p1

    .line 4152
    :cond_23
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4153
    add-int/lit16 v0, v0, 0x2710

    return v0
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 8

    .line 882
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    if-eqz p2, :cond_87

    .line 884
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_45

    .line 885
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

    .line 889
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_7e

    .line 890
    :cond_45
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v4, :cond_7e

    .line 891
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

    .line 898
    :cond_7e
    :goto_7e
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 899
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 900
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 905
    :cond_87
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 906
    if-nez p2, :cond_99

    .line 907
    if-eqz v0, :cond_a2

    if-eq v0, p1, :cond_a2

    .line 908
    iget p2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    goto :goto_a2

    .line 911
    :cond_99
    if-eqz v0, :cond_a2

    if-eq v0, p2, :cond_a2

    .line 912
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/Settings;->replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V

    .line 916
    :cond_a2
    :goto_a2
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 917
    if-eqz p2, :cond_b8

    .line 921
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 924
    :cond_b8
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 27

    .line 3347
    move-object/from16 v1, p2

    move/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 3348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-virtual {v7, v1, v0, v5, v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v5

    .line 3352
    nop

    .line 3353
    nop

    .line 3354
    if-nez v5, :cond_1b

    move v7, v6

    goto :goto_1f

    :cond_1b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 3355
    :goto_1f
    const-string v8, "PackageSettings"

    const/4 v9, 0x1

    if-gt v7, v9, :cond_45

    .line 3356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No potential matches found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3356
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    return-void

    .line 3360
    :cond_45
    nop

    .line 3361
    nop

    .line 3362
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v14, v10, [Landroid/content/ComponentName;

    .line 3363
    move v10, v6

    move v11, v10

    move v13, v11

    :goto_50
    if-ge v10, v7, :cond_a1

    .line 3364
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3365
    new-instance v6, Landroid/content/ComponentName;

    iget-object v12, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v12, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v14, v10

    .line 3366
    iget-object v6, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v6, v9

    if-nez v6, :cond_7a

    .line 3367
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-ltz v6, :cond_9d

    .line 3374
    aget-object v12, v14, v10

    .line 3375
    goto :goto_a2

    .line 3377
    :cond_7a
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v12, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 3378
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v12, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 3382
    nop

    .line 3383
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v6, v6, Landroid/content/pm/ResolveInfo;->match:I

    move v13, v6

    move v11, v9

    .line 3363
    :cond_9d
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_50

    :cond_a1
    const/4 v12, 0x0

    .line 3390
    :goto_a2
    if-eqz v12, :cond_a7

    if-lez v13, :cond_a7

    .line 3395
    const/4 v12, 0x0

    .line 3397
    :cond_a7
    if-eqz v11, :cond_14d

    if-nez v12, :cond_14d

    .line 3398
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 3399
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_bd

    .line 3400
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3402
    :cond_bd
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_db

    .line 3403
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_cb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_db

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3404
    invoke-virtual {v12, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3405
    goto :goto_cb

    .line 3407
    :cond_db
    const/high16 v5, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_e5

    .line 3408
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3410
    :cond_e5
    if-eqz v2, :cond_ea

    .line 3411
    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3413
    :cond_ea
    if-eqz p6, :cond_f7

    .line 3414
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v2

    invoke-virtual {v12, v0, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3416
    :cond_f7
    if-eqz v3, :cond_fc

    .line 3417
    invoke-virtual {v12, v3}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3419
    :cond_fc
    if-eqz v4, :cond_101

    .line 3420
    invoke-virtual {v12, v4}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3422
    :cond_101
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_135

    .line 3424
    :try_start_107
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_10e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_107 .. :try_end_10e} :catch_111

    .line 3427
    move-object/from16 v2, p4

    goto :goto_137

    .line 3425
    :catch_111
    move-exception v0

    .line 3426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed mimetype "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    .line 3422
    :cond_135
    move-object/from16 v2, p4

    .line 3429
    :goto_137
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v16, 0x1

    move-object v11, v0

    move-object/from16 v15, p4

    invoke-direct/range {v11 .. v16}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3430
    move-object/from16 v1, p0

    move/from16 v2, p9

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 3431
    goto :goto_1ae

    .line 3397
    :cond_14d
    move-object/from16 v2, p4

    .line 3431
    if-nez v12, :cond_18e

    .line 3432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3433
    const-string v3, "No component "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3435
    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3437
    const-string v1, "; possible matches are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    const/4 v1, 0x0

    :goto_170
    array-length v2, v14

    if-ge v1, v2, :cond_186

    .line 3439
    if-lez v1, :cond_17a

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    :cond_17a
    aget-object v2, v14, v1

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    add-int/lit8 v1, v1, 0x1

    goto :goto_170

    .line 3442
    :cond_186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    goto :goto_1ae

    .line 3444
    :cond_18e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; found third party match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3444
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :goto_1ae
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 29

    .line 3237
    move-object/from16 v0, p2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3238
    nop

    .line 3240
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3241
    const/high16 v3, 0xc0000

    move v14, v3

    move v3, v1

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 3242
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    .line 3243
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3244
    const/high16 v4, 0x10000

    or-int/2addr v14, v4

    goto :goto_2d

    .line 3246
    :cond_2a
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3241
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3250
    :cond_30
    nop

    .line 3251
    nop

    .line 3253
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    .line 3254
    const/4 v15, 0x1

    move v13, v1

    move/from16 v16, v13

    move v4, v15

    :goto_3b
    if-ge v13, v3, :cond_177

    .line 3255
    nop

    .line 3256
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v12

    .line 3257
    if-eqz v12, :cond_4c

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 3258
    move/from16 v16, v15

    .line 3260
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v11

    .line 3261
    move v10, v1

    move v4, v15

    :goto_52
    if-ge v10, v11, :cond_9c

    .line 3262
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3263
    invoke-virtual {v4, v12}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3264
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v17

    .line 3265
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3266
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3267
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3268
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v12

    move/from16 v20, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, v18

    move-object v1, v12

    move-object/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3270
    nop

    .line 3261
    add-int/lit8 v10, v20, 0x1

    move-object v12, v1

    move/from16 v11, v17

    move/from16 v13, v19

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_52

    .line 3272
    :cond_9c
    move-object v1, v12

    move/from16 v19, v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    .line 3273
    const/4 v12, 0x0

    :goto_a4
    if-ge v12, v13, :cond_14a

    .line 3274
    nop

    .line 3275
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v17

    .line 3276
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v11

    .line 3277
    move v5, v4

    move v4, v15

    const/4 v10, 0x0

    :goto_b2
    if-ge v10, v11, :cond_109

    .line 3278
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3279
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3280
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c9

    .line 3281
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3283
    :cond_c9
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v20

    .line 3284
    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3285
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3286
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3287
    const/16 v21, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v1

    move/from16 v22, v10

    move-object/from16 v10, v21

    move/from16 v21, v11

    move-object/from16 v11, v17

    move/from16 v23, v12

    move-object/from16 v12, v20

    move/from16 v20, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3289
    nop

    .line 3277
    add-int/lit8 v10, v22, 0x1

    move/from16 v13, v20

    move/from16 v11, v21

    move/from16 v12, v23

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_b2

    .line 3291
    :cond_109
    move/from16 v23, v12

    move/from16 v20, v13

    if-eqz v4, :cond_143

    .line 3292
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3293
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3294
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_124

    .line 3295
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3297
    :cond_124
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3298
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3299
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v1

    move-object/from16 v11, v17

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3301
    const/4 v4, 0x0

    goto :goto_144

    .line 3291
    :cond_143
    move v4, v5

    .line 3273
    :goto_144
    add-int/lit8 v12, v23, 0x1

    move/from16 v13, v20

    goto/16 :goto_a4

    .line 3304
    :cond_14a
    if-eqz v4, :cond_170

    .line 3305
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 3306
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3307
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3308
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3309
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v1

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3312
    :cond_170
    nop

    .line 3254
    add-int/lit8 v13, v19, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_3b

    .line 3315
    :cond_177
    const/4 v1, 0x0

    :goto_178
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v1, v3, :cond_1e0

    .line 3316
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    .line 3317
    if-eqz v16, :cond_1c3

    .line 3318
    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    .line 3319
    const/4 v13, 0x0

    :goto_18a
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v13, v4, :cond_1c2

    .line 3320
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v9

    .line 3321
    if-eqz v9, :cond_1bd

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1bd

    .line 3322
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3323
    invoke-virtual {v15, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3324
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3325
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v14

    move-object/from16 v8, p3

    move/from16 v17, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_1bf

    .line 3321
    :cond_1bd
    move/from16 v17, v13

    .line 3319
    :goto_1bf
    add-int/lit8 v13, v17, 0x1

    goto :goto_18a

    .line 3329
    :cond_1c2
    goto :goto_1db

    .line 3330
    :cond_1c3
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3331
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3332
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v7, v14

    move-object/from16 v8, p3

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3335
    :goto_1db
    nop

    .line 3315
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_178

    .line 3338
    :cond_1e0
    if-eqz v4, :cond_1f2

    .line 3339
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move-object/from16 v4, p3

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3342
    :cond_1f2
    return-void
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLjava/lang/String;Ljava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 54
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

    .line 603
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v15, p12

    move-object/from16 v14, p19

    if-eqz v0, :cond_5a

    .line 606
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v4, p0

    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 607
    nop

    .line 608
    if-eqz v14, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 609
    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 610
    move-object/from16 v8, p7

    iput-object v8, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 611
    move-object/from16 v12, p18

    iput-object v12, v1, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    .line 612
    iput v15, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 613
    move/from16 v13, p13

    iput v13, v1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 614
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 615
    move-object/from16 v7, p6

    iput-object v7, v1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 616
    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 619
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v2, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 620
    move-wide/from16 v5, p10

    iput-wide v5, v1, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 621
    move-object/from16 v11, p21

    iput-object v11, v1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 622
    move-object/from16 v3, p22

    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 624
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object v0, v1

    goto/16 :goto_158

    .line 626
    :cond_5a
    move-object/from16 v4, p0

    move-object/from16 v0, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v5, p10

    move/from16 v13, p13

    move-object/from16 v12, p18

    move-object/from16 v11, p21

    move-object/from16 v3, p22

    new-instance v11, Lcom/android/server/pm/PackageSetting;

    move-object v3, v11

    const/16 v16, 0x0

    move-object v0, v11

    move-object/from16 v11, v16

    const/16 v18, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v19, p21

    move-object/from16 v20, p22

    invoke-direct/range {v3 .. v20}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 631
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 632
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 634
    const/4 v3, 0x1

    and-int/lit8 v4, p12, 0x1

    if-nez v4, :cond_10e

    .line 640
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    .line 641
    const/16 v28, 0x0

    if-eqz p14, :cond_ab

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move v9, v5

    goto :goto_ad

    :cond_ab
    move/from16 v9, v28

    .line 642
    :goto_ad
    if-eqz v4, :cond_10e

    if-eqz p15, :cond_10e

    .line 643
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_b5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 650
    if-eqz p14, :cond_db

    const/4 v5, -0x1

    if-ne v9, v5, :cond_d1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 652
    move-object/from16 v15, p20

    invoke-static {v15, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v5

    if-eqz v5, :cond_d7

    goto :goto_d3

    .line 650
    :cond_d1
    move-object/from16 v15, p20

    .line 652
    :goto_d3
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v9, v5, :cond_d8

    :cond_d7
    goto :goto_dd

    :cond_d8
    move/from16 v19, v28

    goto :goto_df

    .line 650
    :cond_db
    move-object/from16 v15, p20

    .line 652
    :goto_dd
    move/from16 v19, v3

    .line 654
    :goto_df
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v4, v0

    move/from16 v30, v9

    move/from16 v9, v19

    move/from16 v19, p16

    move/from16 v20, p17

    invoke-virtual/range {v4 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    .line 673
    move/from16 v9, v30

    goto :goto_b5

    .line 676
    :cond_10e
    if-eqz v2, :cond_115

    .line 677
    iget v1, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_158

    .line 680
    :cond_115
    if-eqz v1, :cond_158

    .line 685
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 686
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 688
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 690
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 691
    if-eqz v2, :cond_158

    .line 692
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_139
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_158

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 693
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 694
    nop

    .line 695
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 694
    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 696
    nop

    .line 697
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 696
    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 698
    goto :goto_139

    .line 703
    :cond_158
    :goto_158
    return-object v0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    .line 4990
    if-nez p1, :cond_9

    .line 4991
    const-string/jumbo p1, "unknown"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    .line 4994
    :cond_9
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4995
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4996
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    const-string v1, ":"

    if-eqz v0, :cond_21

    .line 4997
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4999
    :cond_21
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 5000
    const/4 v0, 0x0

    :goto_26
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    .line 5001
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5002
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5003
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v2, v2, v0

    if-eqz v2, :cond_47

    .line 5004
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5000
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 5008
    :cond_4a
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5010
    :goto_4f
    return-void
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 2
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

    .line 4336
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 4

    .line 1289
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "package-restrictions-backup.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .registers 6

    .line 1277
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1278
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "package-restrictions.xml"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 6

    .line 1284
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1285
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "runtime-permissions.xml"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .registers 4
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

    .line 4347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4349
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_8} :catch_11
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 4353
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4349
    return-object p0

    .line 4353
    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    .line 4350
    :catch_11
    move-exception p0

    .line 4353
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4354
    nop

    .line 4355
    const/4 p0, 0x0

    return-object p0
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3

    .line 859
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 5038
    const/4 v0, 0x0

    .line 5039
    :goto_1
    if-eqz p1, :cond_29

    .line 5040
    if-nez v0, :cond_12

    .line 5041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5042
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5043
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5045
    :cond_12
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5046
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5047
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5048
    if-eqz p1, :cond_28

    .line 5049
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5052
    :cond_28
    goto :goto_1

    .line 5053
    :cond_29
    if-eqz v0, :cond_35

    .line 5054
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5057
    :cond_35
    const-string p0, ""

    return-object p0
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 5

    .line 4374
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4375
    const/4 v0, 0x0

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_23

    .line 4376
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4377
    and-int/2addr v1, p1

    if-eqz v1, :cond_20

    .line 4378
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4379
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4375
    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 4382
    :cond_23
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4383
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 8
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

    .line 1776
    nop

    .line 1778
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1780
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    .line 1782
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_3d

    .line 1783
    :cond_17
    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1d

    .line 1785
    goto :goto_7

    .line 1787
    :cond_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1788
    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1789
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1790
    if-eqz v3, :cond_3c

    .line 1791
    if-nez v2, :cond_39

    .line 1792
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1794
    :cond_39
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1796
    :cond_3c
    goto :goto_7

    .line 1798
    :cond_3d
    return-object v2
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1405
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1407
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1408
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4c

    .line 1409
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1410
    goto :goto_4

    .line 1412
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1413
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1414
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v1, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1415
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1416
    goto :goto_4b

    .line 1417
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1420
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1422
    :goto_4b
    goto :goto_4

    .line 1423
    :cond_4c
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3451
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3452
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3453
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3455
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_87

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 3456
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_87

    .line 3457
    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    .line 3458
    goto :goto_c

    .line 3461
    :cond_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3462
    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_6b

    .line 3463
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3464
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_44

    .line 3465
    iget-object v3, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_6a

    .line 3468
    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3470
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3471
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3468
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3473
    :goto_6a
    goto :goto_86

    .line 3474
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <preferred-activities>: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3475
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3474
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3476
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3478
    :goto_86
    goto :goto_c

    .line 3479
    :cond_87
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3908
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3910
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 3911
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6e

    .line 3912
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 3913
    goto :goto_4

    .line 3916
    :cond_1a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3917
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_52

    .line 3918
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3919
    if-eqz v1, :cond_39

    .line 3920
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_51

    .line 3922
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3924
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3922
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3926
    :goto_51
    goto :goto_6a

    .line 3927
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <disabled-components>: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3928
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3927
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3930
    :goto_6a
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3931
    goto :goto_4

    .line 3932
    :cond_6e
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3483
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3484
    const-string/jumbo v0, "realName"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3485
    const-string v0, "codePath"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3486
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3488
    const-string/jumbo v5, "requiredCpuAbi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3489
    const-string/jumbo v8, "nativeLibraryPath"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3491
    const-string/jumbo v8, "parentPackageName"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3493
    const-string/jumbo v8, "primaryCpuAbi"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3494
    const-string/jumbo v9, "secondaryCpuAbi"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3495
    const-string v9, "cpuAbiOverride"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3497
    if-nez v8, :cond_4f

    if-eqz v5, :cond_4f

    .line 3498
    move-object v11, v5

    goto :goto_50

    .line 3501
    :cond_4f
    move-object v11, v8

    :goto_50
    if-nez v0, :cond_54

    .line 3502
    move-object v15, v6

    goto :goto_55

    .line 3501
    :cond_54
    move-object v15, v0

    .line 3504
    :goto_55
    const-string/jumbo v0, "version"

    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3505
    const-wide/16 v8, 0x0

    .line 3506
    if-eqz v0, :cond_68

    .line 3508
    :try_start_60
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_64} :catch_67

    .line 3510
    move-wide/from16 v16, v8

    goto :goto_6a

    .line 3509
    :catch_67
    move-exception v0

    .line 3513
    :cond_68
    move-wide/from16 v16, v8

    :goto_6a
    nop

    .line 3514
    nop

    .line 3515
    const/4 v0, 0x1

    .line 3516
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/lang/String;)Z

    move-result v5

    const/16 v23, 0x0

    if-eqz v5, :cond_7a

    .line 3517
    const/16 v5, 0x8

    move/from16 v24, v5

    goto :goto_7c

    .line 3516
    :cond_7a
    move/from16 v24, v23

    .line 3519
    :goto_7c
    new-instance v9, Lcom/android/server/pm/PackageSetting;

    move-object v5, v9

    new-instance v8, Ljava/io/File;

    move-object/from16 v19, v8

    move-object/from16 v4, v19

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    move-object v6, v9

    move-object v9, v4

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v4, v6

    move-object v6, v14

    move-object/from16 v25, v14

    move-wide/from16 v14, v16

    move/from16 v16, v0

    move/from16 v17, v24

    invoke-direct/range {v5 .. v22}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 3523
    const-string v0, "ft"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3524
    const/16 v5, 0x10

    if-eqz v0, :cond_b9

    .line 3526
    :try_start_af
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 3527
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_b6} :catch_b7

    goto :goto_b8

    .line 3528
    :catch_b7
    move-exception v0

    .line 3529
    :goto_b8
    goto :goto_cc

    .line 3531
    :cond_b9
    const-string/jumbo v0, "ts"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3532
    if-eqz v0, :cond_cc

    .line 3534
    :try_start_c3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3535
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_ca} :catch_cb

    .line 3537
    goto :goto_cc

    .line 3536
    :catch_cb
    move-exception v0

    .line 3540
    :cond_cc
    :goto_cc
    const-string v0, "it"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3541
    if-eqz v0, :cond_dd

    .line 3543
    :try_start_d5
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_d5 .. :try_end_db} :catch_dc

    .line 3545
    goto :goto_dd

    .line 3544
    :catch_dc
    move-exception v0

    .line 3547
    :cond_dd
    :goto_dd
    const-string/jumbo v0, "ut"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3548
    if-eqz v0, :cond_ef

    .line 3550
    :try_start_e7
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_e7 .. :try_end_ed} :catch_ee

    .line 3552
    goto :goto_ef

    .line 3551
    :catch_ee
    move-exception v0

    .line 3554
    :cond_ef
    :goto_ef
    const-string/jumbo v0, "userId"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3555
    if-eqz v0, :cond_fe

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_100

    :cond_fe
    move/from16 v0, v23

    :goto_100
    iput v0, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3556
    iget v0, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v0, :cond_118

    .line 3557
    const-string/jumbo v0, "sharedUserId"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3558
    if-eqz v0, :cond_114

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    :cond_114
    move/from16 v0, v23

    iput v0, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3561
    :cond_118
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3563
    :goto_11c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19a

    const/4 v6, 0x3

    if-ne v5, v6, :cond_12c

    .line 3564
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_19a

    .line 3565
    :cond_12c
    if-eq v5, v6, :cond_198

    const/4 v6, 0x4

    if-ne v5, v6, :cond_132

    .line 3566
    goto :goto_11c

    .line 3569
    :cond_132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "perms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 3570
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_11c

    .line 3571
    :cond_147
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "child-package"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 3572
    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3573
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v7, :cond_163

    .line 3574
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3576
    :cond_163
    iget-object v7, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3577
    goto :goto_11c

    :cond_169
    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uses-static-lib"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 3578
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_11c

    .line 3580
    :cond_17b
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3580
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3582
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11c

    .line 3565
    :cond_198
    const/4 v5, 0x0

    goto :goto_11c

    .line 3586
    :cond_19a
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1427
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1428
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1432
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3936
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3938
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 3939
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6e

    .line 3940
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 3941
    goto :goto_4

    .line 3944
    :cond_1a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3945
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_52

    .line 3946
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3947
    if-eqz v1, :cond_39

    .line 3948
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_51

    .line 3950
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3952
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3950
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3954
    :goto_51
    goto :goto_6a

    .line 3955
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <enabled-components>: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3956
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3955
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3958
    :goto_6a
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3959
    goto :goto_4

    .line 3960
    :cond_6e
    return-void
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 61
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3594
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v13, " has bad userId "

    const-string/jumbo v11, "name"

    const-string v12, " at "

    const-string v10, "Error in package manager settings: package "

    const-string/jumbo v9, "true"

    .line 3595
    nop

    .line 3596
    nop

    .line 3597
    nop

    .line 3598
    nop

    .line 3599
    nop

    .line 3600
    nop

    .line 3601
    nop

    .line 3602
    nop

    .line 3603
    nop

    .line 3604
    nop

    .line 3605
    nop

    .line 3606
    nop

    .line 3607
    nop

    .line 3608
    nop

    .line 3609
    nop

    .line 3610
    nop

    .line 3611
    nop

    .line 3612
    nop

    .line 3613
    nop

    .line 3614
    nop

    .line 3615
    nop

    .line 3616
    nop

    .line 3617
    nop

    .line 3618
    nop

    .line 3619
    nop

    .line 3620
    nop

    .line 3623
    const/4 v5, 0x0

    :try_start_2b
    invoke-interface {v14, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_48b

    .line 3624
    :try_start_2f
    const-string/jumbo v0, "realName"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3625
    const-string/jumbo v0, "userId"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_3d} :catch_47f

    .line 3626
    :try_start_3d
    const-string/jumbo v0, "uidError"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_44} :catch_472

    .line 3627
    :try_start_44
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3628
    const-string v0, "codePath"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3629
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3631
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3633
    const-string/jumbo v8, "parentPackageName"

    invoke-interface {v14, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3635
    const-string/jumbo v8, "nativeLibraryPath"

    invoke-interface {v14, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_6d} :catch_465

    .line 3636
    :try_start_6d
    const-string/jumbo v8, "primaryCpuAbi"

    invoke-interface {v14, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_74} :catch_458

    .line 3637
    :try_start_74
    const-string/jumbo v6, "secondaryCpuAbi"

    invoke-interface {v14, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_7b} :catch_444

    .line 3638
    :try_start_7b
    const-string v6, "cpuAbiOverride"

    invoke-interface {v14, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3639
    const-string/jumbo v6, "updateAvailable"

    invoke-interface {v14, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_88} :catch_435

    .line 3641
    if-nez v8, :cond_8f

    if-eqz v0, :cond_8f

    .line 3642
    move-object/from16 v42, v0

    goto :goto_91

    .line 3645
    :cond_8f
    move-object/from16 v42, v8

    :goto_91
    :try_start_91
    const-string/jumbo v0, "version"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_98} :catch_427

    .line 3646
    const-wide/16 v22, 0x0

    if-eqz v0, :cond_a4

    .line 3648
    :try_start_9c
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a0} :catch_a3

    .line 3650
    move-wide/from16 v30, v24

    goto :goto_a6

    .line 3649
    :catch_a3
    move-exception v0

    .line 3652
    :cond_a4
    move-wide/from16 v30, v22

    :goto_a6
    :try_start_a6
    const-string v0, "installer"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_ac} :catch_427

    .line 3653
    :try_start_ac
    const-string v0, "isOrphaned"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b2} :catch_419

    .line 3654
    :try_start_b2
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_b2 .. :try_end_b9} :catch_40b

    .line 3655
    :try_start_b9
    const-string v0, "categoryHint"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_bf} :catch_3fd

    .line 3656
    if-eqz v0, :cond_c9

    .line 3658
    :try_start_c1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_c5} :catch_c8

    .line 3660
    move/from16 v46, v0

    goto :goto_cb

    .line 3659
    :catch_c8
    move-exception v0

    .line 3663
    :cond_c9
    const/16 v46, -0x1

    :goto_cb
    :try_start_cb
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_d2} :catch_3ef

    .line 3664
    if-eqz v0, :cond_105

    .line 3666
    :try_start_d4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_d8} :catch_d9

    .line 3668
    goto :goto_db

    .line 3667
    :catch_d9
    move-exception v0

    const/4 v6, 0x0

    .line 3669
    :goto_db
    :try_start_db
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e2
    .catch Ljava/lang/NumberFormatException; {:try_start_db .. :try_end_e2} :catch_f7

    .line 3670
    if-eqz v0, :cond_f0

    .line 3672
    :try_start_e4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_e8} :catch_ef

    .line 3674
    move/from16 v33, v0

    move/from16 v32, v6

    const/4 v6, 0x0

    goto/16 :goto_15a

    .line 3673
    :catch_ef
    move-exception v0

    .line 3709
    :cond_f0
    move/from16 v32, v6

    const/4 v6, 0x0

    const/16 v33, 0x0

    goto/16 :goto_15a

    .line 3801
    :catch_f7
    move-exception v0

    move-object v7, v3

    move-object v0, v5

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    :goto_102
    const/4 v5, 0x5

    goto/16 :goto_4aa

    .line 3678
    :cond_105
    :try_start_105
    const-string v0, "flags"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_10b} :catch_3ef

    .line 3679
    if-eqz v0, :cond_13c

    .line 3681
    :try_start_10d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_111
    .catch Ljava/lang/NumberFormatException; {:try_start_10d .. :try_end_111} :catch_112

    .line 3683
    goto :goto_114

    .line 3682
    :catch_112
    move-exception v0

    const/4 v6, 0x0

    .line 3684
    :goto_114
    :try_start_114
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_11b

    .line 3685
    const/4 v0, 0x1

    goto :goto_11c

    .line 3684
    :cond_11b
    const/4 v0, 0x0

    .line 3687
    :goto_11c
    sget v8, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_123

    .line 3688
    or-int/lit8 v0, v0, 0x2

    .line 3690
    :cond_123
    sget v8, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_12a

    .line 3691
    or-int/lit8 v0, v0, 0x8

    .line 3693
    :cond_12a
    sget v8, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v8, v8, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_132
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_132} :catch_f7

    or-int v8, v8, v16

    not-int v8, v8

    and-int/2addr v6, v8

    move/from16 v33, v0

    move/from16 v32, v6

    const/4 v6, 0x0

    goto :goto_15a

    .line 3698
    :cond_13c
    :try_start_13c
    const-string/jumbo v0, "system"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_143
    .catch Ljava/lang/NumberFormatException; {:try_start_13c .. :try_end_143} :catch_3ef

    .line 3699
    if-eqz v0, :cond_155

    .line 3700
    :try_start_145
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_149
    .catch Ljava/lang/NumberFormatException; {:try_start_145 .. :try_end_149} :catch_f7

    if-eqz v0, :cond_14d

    const/4 v0, 0x1

    goto :goto_14e

    .line 3701
    :cond_14d
    const/4 v0, 0x0

    :goto_14e
    const/4 v6, 0x0

    or-int/2addr v0, v6

    move/from16 v32, v0

    move/from16 v33, v6

    goto :goto_15a

    .line 3705
    :cond_155
    const/4 v6, 0x0

    move/from16 v33, v6

    const/16 v32, 0x1

    .line 3709
    :goto_15a
    :try_start_15a
    const-string v0, "ft"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_160
    .catch Ljava/lang/NumberFormatException; {:try_start_15a .. :try_end_160} :catch_3ef

    .line 3710
    const/16 v8, 0x10

    if-eqz v0, :cond_16d

    .line 3712
    :try_start_164
    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24
    :try_end_168
    .catch Ljava/lang/NumberFormatException; {:try_start_164 .. :try_end_168} :catch_16b

    .line 3714
    move-wide/from16 v47, v24

    goto :goto_180

    .line 3713
    :catch_16b
    move-exception v0

    .line 3714
    goto :goto_17e

    .line 3716
    :cond_16d
    :try_start_16d
    const-string/jumbo v0, "ts"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_16d .. :try_end_174} :catch_3ef

    .line 3717
    if-eqz v0, :cond_17e

    .line 3719
    :try_start_176
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24
    :try_end_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_176 .. :try_end_17a} :catch_17d

    .line 3721
    move-wide/from16 v47, v24

    goto :goto_180

    .line 3720
    :catch_17d
    move-exception v0

    .line 3724
    :cond_17e
    :goto_17e
    move-wide/from16 v47, v22

    :goto_180
    :try_start_180
    const-string v0, "it"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_186
    .catch Ljava/lang/NumberFormatException; {:try_start_180 .. :try_end_186} :catch_3ef

    .line 3725
    if-eqz v0, :cond_190

    .line 3727
    :try_start_188
    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24
    :try_end_18c
    .catch Ljava/lang/NumberFormatException; {:try_start_188 .. :try_end_18c} :catch_18f

    .line 3729
    move-wide/from16 v49, v24

    goto :goto_192

    .line 3728
    :catch_18f
    move-exception v0

    .line 3731
    :cond_190
    move-wide/from16 v49, v22

    :goto_192
    :try_start_192
    const-string/jumbo v0, "ut"

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_199
    .catch Ljava/lang/NumberFormatException; {:try_start_192 .. :try_end_199} :catch_3ef

    .line 3732
    if-eqz v0, :cond_1a3

    .line 3734
    :try_start_19b
    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22
    :try_end_19f
    .catch Ljava/lang/NumberFormatException; {:try_start_19b .. :try_end_19f} :catch_1a2

    .line 3736
    move-wide/from16 v51, v22

    goto :goto_1a5

    .line 3735
    :catch_1a2
    move-exception v0

    .line 3741
    :cond_1a3
    move-wide/from16 v51, v22

    :goto_1a5
    if-eqz v3, :cond_1ac

    :try_start_1a7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1ad

    :cond_1ac
    move v0, v6

    .line 3742
    :goto_1ad
    if-eqz v1, :cond_1b6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v36, v8

    goto :goto_1b8

    :cond_1b6
    move/from16 v36, v6

    .line 3743
    :goto_1b8
    if-nez v17, :cond_1bc

    .line 3744
    move-object v8, v7

    goto :goto_1be

    .line 3743
    :cond_1bc
    move-object/from16 v8, v17

    .line 3746
    :goto_1be
    if-eqz v2, :cond_1c7

    .line 3747
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_1c9

    .line 3746
    :cond_1c7
    move-object/from16 v23, v2

    .line 3749
    :goto_1c9
    if-nez v4, :cond_1fd

    .line 3750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3752
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e0
    .catch Ljava/lang/NumberFormatException; {:try_start_1a7 .. :try_end_1e0} :catch_f7

    .line 3750
    const/4 v1, 0x5

    :try_start_1e1
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1e4
    .catch Ljava/lang/NumberFormatException; {:try_start_1e1 .. :try_end_1e4} :catch_1ef

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v2, v15

    const/4 v5, 0x5

    goto/16 :goto_3cb

    .line 3801
    :catch_1ef
    move-exception v0

    move-object v7, v3

    move-object v0, v5

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v6, v13

    move-object v2, v15

    move v5, v1

    move-object v1, v12

    goto/16 :goto_4aa

    .line 3753
    :cond_1fd
    if-nez v7, :cond_231

    .line 3754
    :try_start_1ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3756
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_214
    .catch Ljava/lang/NumberFormatException; {:try_start_1ff .. :try_end_214} :catch_f7

    .line 3754
    const/4 v2, 0x5

    :try_start_215
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_218
    .catch Ljava/lang/NumberFormatException; {:try_start_215 .. :try_end_218} :catch_223

    move v5, v2

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v2, v15

    goto/16 :goto_3cb

    .line 3801
    :catch_223
    move-exception v0

    move-object v7, v3

    move-object v0, v5

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move v5, v2

    move-object v2, v15

    goto/16 :goto_4aa

    .line 3757
    :cond_231
    const/4 v2, 0x5

    if-lez v0, :cond_2ec

    .line 3758
    :try_start_234
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_242
    .catch Ljava/lang/NumberFormatException; {:try_start_234 .. :try_end_242} :catch_2d8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v1

    move-object/from16 v1, p0

    move/from16 v21, v2

    move-object/from16 v2, v20

    move-object/from16 v53, v3

    move-object/from16 v3, v23

    move-object/from16 v20, v4

    move-object v4, v8

    move-object v8, v5

    move-object v5, v7

    move v7, v6

    move-object/from16 v6, v39

    move-object/from16 v7, v42

    move-object/from16 v8, v40

    move-object/from16 v54, v9

    move-object/from16 v9, v29

    move-object/from16 v55, v10

    move v10, v0

    move-object/from16 v57, v11

    move-object/from16 v56, v12

    move-wide/from16 v11, v30

    move-object/from16 v58, v13

    move/from16 v13, v32

    move/from16 v14, v33

    move-object/from16 v15, v34

    :try_start_274
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v5
    :try_end_278
    .catch Ljava/lang/NumberFormatException; {:try_start_274 .. :try_end_278} :catch_2c7

    .line 3766
    if-nez v5, :cond_29c

    .line 3767
    const/4 v1, 0x6

    :try_start_27b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure adding uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while parsing settings at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3769
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3767
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2a9

    .line 3771
    :cond_29c
    move-wide/from16 v2, v47

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3772
    move-wide/from16 v9, v49

    iput-wide v9, v5, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3773
    move-wide/from16 v11, v51

    iput-wide v11, v5, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_2a9
    .catch Ljava/lang/NumberFormatException; {:try_start_27b .. :try_end_2a9} :catch_2b7

    .line 3805
    :goto_2a9
    move-object/from16 v2, p0

    move-object v0, v5

    move-object/from16 v4, v20

    move-object/from16 v7, v53

    move-object/from16 v3, v55

    move-object/from16 v1, v56

    const/4 v5, 0x5

    goto/16 :goto_3cc

    .line 3801
    :catch_2b7
    move-exception v0

    move-object/from16 v2, p0

    move-object v0, v5

    :goto_2bb
    move-object/from16 v4, v20

    move-object/from16 v7, v53

    move-object/from16 v3, v55

    move-object/from16 v1, v56

    move-object/from16 v6, v58

    goto/16 :goto_102

    :catch_2c7
    move-exception v0

    const/4 v0, 0x0

    const/4 v5, 0x5

    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v7, v53

    move-object/from16 v3, v55

    move-object/from16 v1, v56

    move-object/from16 v6, v58

    goto/16 :goto_4aa

    :catch_2d8
    move-exception v0

    move-object/from16 v53, v3

    move-object/from16 v20, v4

    move-object/from16 v54, v9

    move-object/from16 v57, v11

    move v5, v2

    move-object v3, v10

    move-object v1, v12

    move-object v6, v13

    move-object/from16 v7, v53

    const/4 v0, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_4aa

    .line 3775
    :cond_2ec
    move-object/from16 v53, v3

    move-object/from16 v20, v4

    move-object/from16 v54, v9

    move-object/from16 v55, v10

    move-object/from16 v57, v11

    move-object/from16 v56, v12

    move-object/from16 v58, v13

    move-wide/from16 v2, v47

    move-wide/from16 v9, v49

    move-wide/from16 v11, v51

    if-eqz v1, :cond_39c

    .line 3776
    if-lez v36, :cond_35b

    .line 3777
    :try_start_304
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v21, v1

    move-object/from16 v24, v0

    move-object/from16 v25, v4

    move-object/from16 v26, v39

    move-object/from16 v27, v42

    move-object/from16 v28, v40

    invoke-direct/range {v21 .. v38}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    :try_end_329
    .catch Ljava/lang/NumberFormatException; {:try_start_304 .. :try_end_329} :catch_34b

    .line 3783
    :try_start_329
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3784
    iput-wide v9, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3785
    iput-wide v11, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_330
    .catch Ljava/lang/NumberFormatException; {:try_start_329 .. :try_end_330} :catch_345

    .line 3786
    move-object/from16 v2, p0

    :try_start_332
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_337
    .catch Ljava/lang/NumberFormatException; {:try_start_332 .. :try_end_337} :catch_343

    move-object v0, v1

    move-object/from16 v4, v20

    move-object/from16 v7, v53

    move-object/from16 v3, v55

    move-object/from16 v1, v56

    const/4 v5, 0x5

    goto/16 :goto_3cc

    .line 3801
    :catch_343
    move-exception v0

    goto :goto_348

    :catch_345
    move-exception v0

    move-object/from16 v2, p0

    :goto_348
    move-object v0, v1

    goto/16 :goto_2bb

    :catch_34b
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v7, v53

    move-object/from16 v3, v55

    move-object/from16 v1, v56

    move-object/from16 v6, v58

    const/4 v0, 0x0

    goto/16 :goto_102

    .line 3791
    :cond_35b
    move-object/from16 v2, p0

    :try_start_35d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_362
    .catch Ljava/lang/NumberFormatException; {:try_start_35d .. :try_end_362} :catch_393

    move-object/from16 v3, v55

    :try_start_364
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_367
    .catch Ljava/lang/NumberFormatException; {:try_start_364 .. :try_end_367} :catch_38f

    move-object/from16 v4, v20

    :try_start_369
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has bad sharedId "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_374
    .catch Ljava/lang/NumberFormatException; {:try_start_369 .. :try_end_374} :catch_38d

    move-object/from16 v1, v56

    :try_start_376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3794
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_384
    .catch Ljava/lang/NumberFormatException; {:try_start_376 .. :try_end_384} :catch_38b

    .line 3791
    const/4 v5, 0x5

    :try_start_385
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v7, v53

    goto :goto_3cb

    .line 3801
    :catch_38b
    move-exception v0

    goto :goto_39a

    :catch_38d
    move-exception v0

    goto :goto_398

    :catch_38f
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_398

    :catch_393
    move-exception v0

    move-object/from16 v4, v20

    move-object/from16 v3, v55

    :goto_398
    move-object/from16 v1, v56

    :goto_39a
    const/4 v5, 0x5

    goto :goto_3ea

    .line 3797
    :cond_39c
    const/4 v5, 0x5

    move-object/from16 v2, p0

    move-object/from16 v4, v20

    move-object/from16 v3, v55

    move-object/from16 v1, v56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b0
    .catch Ljava/lang/NumberFormatException; {:try_start_385 .. :try_end_3b0} :catch_3e9

    move-object/from16 v6, v58

    :try_start_3b2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b5
    .catch Ljava/lang/NumberFormatException; {:try_start_3b2 .. :try_end_3b5} :catch_3e5

    move-object/from16 v7, v53

    :try_start_3b7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3799
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3797
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_3cb
    .catch Ljava/lang/NumberFormatException; {:try_start_3b7 .. :try_end_3cb} :catch_3e3

    .line 3805
    :goto_3cb
    const/4 v0, 0x0

    :goto_3cc
    move-object v14, v4

    move-object v15, v7

    move-object/from16 v10, v39

    move-object/from16 v12, v40

    move-object/from16 v13, v41

    move-object/from16 v11, v42

    move-object/from16 v6, v43

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    move/from16 v9, v46

    move-object v4, v0

    move-object/from16 v0, v19

    goto/16 :goto_4e1

    .line 3801
    :catch_3e3
    move-exception v0

    goto :goto_3fa

    :catch_3e5
    move-exception v0

    move-object/from16 v7, v53

    goto :goto_3fa

    :catch_3e9
    move-exception v0

    :goto_3ea
    move-object/from16 v7, v53

    move-object/from16 v6, v58

    goto :goto_3fa

    :catch_3ef
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    :goto_3fa
    const/4 v0, 0x0

    goto/16 :goto_4aa

    :catch_3fd
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto/16 :goto_4a8

    :catch_40b
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto/16 :goto_4a6

    :catch_419
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto/16 :goto_4a4

    :catch_427
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto/16 :goto_4a2

    :catch_435
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    move-object/from16 v42, v8

    const/4 v0, 0x0

    goto :goto_454

    :catch_444
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    move-object/from16 v42, v8

    const/4 v0, 0x0

    const/16 v40, 0x0

    :goto_454
    const/16 v41, 0x0

    goto/16 :goto_4a2

    :catch_458
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto :goto_49c

    :catch_465
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto :goto_49a

    :catch_472
    move-exception v0

    move-object v7, v3

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto :goto_498

    :catch_47f
    move-exception v0

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    goto :goto_497

    :catch_48b
    move-exception v0

    move-object/from16 v54, v9

    move-object v3, v10

    move-object/from16 v57, v11

    move-object v1, v12

    move-object v6, v13

    move-object v2, v15

    const/4 v5, 0x5

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_497
    const/4 v7, 0x0

    :goto_498
    const/16 v19, 0x0

    :goto_49a
    const/16 v39, 0x0

    :goto_49c
    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    :goto_4a2
    const/16 v43, 0x0

    :goto_4a4
    const/16 v44, 0x0

    :goto_4a6
    const/16 v45, 0x0

    :goto_4a8
    const/16 v46, -0x1

    .line 3802
    :goto_4aa
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3804
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3802
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object v14, v4

    move-object v15, v7

    move-object/from16 v10, v39

    move-object/from16 v12, v40

    move-object/from16 v13, v41

    move-object/from16 v11, v42

    move-object/from16 v6, v43

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    move/from16 v9, v46

    move-object v4, v0

    move-object/from16 v0, v19

    .line 3806
    :goto_4e1
    if-eqz v4, :cond_6f1

    .line 3807
    move-object/from16 v5, v54

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 3808
    iput-object v6, v4, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    .line 3809
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 3810
    iput-object v8, v4, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3811
    iput v9, v4, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 3812
    iput-object v10, v4, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3813
    iput-object v11, v4, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 3814
    iput-object v12, v4, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3815
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 3817
    const-string v0, "enabled"

    move-object/from16 v7, p1

    const/4 v8, 0x0

    invoke-interface {v7, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3818
    if-eqz v9, :cond_567

    .line 3820
    :try_start_50e
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_512
    .catch Ljava/lang/NumberFormatException; {:try_start_50e .. :try_end_512} :catch_51a

    const/4 v10, 0x0

    :try_start_513
    invoke-virtual {v4, v0, v10, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_516
    .catch Ljava/lang/NumberFormatException; {:try_start_513 .. :try_end_516} :catch_518

    .line 3834
    const/4 v5, 0x1

    goto :goto_56c

    .line 3821
    :catch_518
    move-exception v0

    goto :goto_51c

    :catch_51a
    move-exception v0

    const/4 v10, 0x0

    .line 3822
    :goto_51c
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_527

    .line 3823
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v10, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_566

    .line 3824
    :cond_527
    const/4 v5, 0x1

    const-string v0, "false"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_535

    .line 3825
    const/4 v0, 0x2

    invoke-virtual {v4, v0, v10, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_566

    .line 3826
    :cond_535
    const-string v0, "default"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_541

    .line 3827
    invoke-virtual {v4, v10, v10, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_566

    .line 3829
    :cond_541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has bad enabled value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3832
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3829
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3834
    :goto_566
    goto :goto_56c

    .line 3836
    :cond_567
    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v10, v8}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3839
    :goto_56c
    if-eqz v6, :cond_573

    .line 3840
    iget-object v0, v2, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3843
    :cond_573
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3845
    :goto_577
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_6f0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_586

    .line 3846
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_6f0

    .line 3847
    :cond_586
    if-eq v1, v3, :cond_6eb

    const/4 v3, 0x4

    if-ne v1, v3, :cond_58c

    .line 3848
    goto :goto_577

    .line 3851
    :cond_58c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3853
    const-string v3, "disabled-components"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a0

    .line 3854
    invoke-direct {v2, v4, v7, v10}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto/16 :goto_6e7

    .line 3855
    :cond_5a0
    const-string v3, "enabled-components"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b0

    .line 3856
    invoke-direct {v2, v4, v7, v10}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto/16 :goto_6e7

    .line 3857
    :cond_5b0
    const-string/jumbo v3, "sigs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c5

    .line 3858
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v2, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v1, v7, v3}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto/16 :goto_6e7

    .line 3859
    :cond_5c5
    const-string/jumbo v3, "perms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5dd

    .line 3860
    nop

    .line 3861
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 3860
    invoke-virtual {v2, v7, v1}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 3862
    iput-boolean v5, v4, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto/16 :goto_6e7

    .line 3863
    :cond_5dd
    const-string/jumbo v3, "proper-signing-keyset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "identifier"

    if-eqz v3, :cond_624

    .line 3864
    invoke-interface {v7, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 3865
    iget-object v1, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3866
    if-eqz v1, :cond_611

    .line 3867
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61e

    .line 3869
    :cond_611
    iget-object v1, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3871
    :goto_61e
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1, v11, v12}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto :goto_62d

    .line 3872
    :cond_624
    const-string/jumbo v3, "signing-keyset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_632

    :goto_62d
    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto/16 :goto_6e7

    .line 3874
    :cond_632
    const-string/jumbo v3, "upgrade-keyset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64d

    .line 3875
    invoke-interface {v7, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 3876
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1, v11, v12}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 3877
    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto/16 :goto_6e7

    :cond_64d
    const-string v3, "defined-keyset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69a

    .line 3878
    invoke-interface {v7, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 3879
    const-string v1, "alias"

    invoke-interface {v7, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3880
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3881
    if-eqz v3, :cond_684

    .line 3882
    iget-object v6, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_691

    .line 3884
    :cond_684
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3886
    :goto_691
    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3, v11, v12, v1}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 3887
    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto :goto_6e7

    :cond_69a
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a9

    .line 3888
    invoke-direct {v2, v7, v4}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto :goto_6e7

    .line 3889
    :cond_6a9
    const-string v3, "child-package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c9

    .line 3890
    move-object/from16 v1, v57

    invoke-interface {v7, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3891
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v6, :cond_6c2

    .line 3892
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3894
    :cond_6c2
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3895
    const/4 v6, 0x5

    goto :goto_6e7

    .line 3896
    :cond_6c9
    move-object/from16 v1, v57

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3897
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3896
    const/4 v6, 0x5

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3898
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3900
    :goto_6e7
    move-object/from16 v57, v1

    goto/16 :goto_577

    .line 3847
    :cond_6eb
    move-object/from16 v1, v57

    const/4 v6, 0x5

    goto/16 :goto_577

    .line 3901
    :cond_6f0
    goto :goto_6f6

    .line 3902
    :cond_6f1
    move-object/from16 v7, p1

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3904
    :goto_6f6
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1383
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1385
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_50

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1386
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_50

    .line 1387
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1388
    goto :goto_4

    .line 1390
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1391
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1392
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1393
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1394
    goto :goto_4f

    .line 1395
    :cond_33
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1395
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1398
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1400
    :goto_4f
    goto :goto_4

    .line 1401
    :cond_50
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1436
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1438
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1439
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4f

    .line 1440
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1441
    goto :goto_4

    .line 1443
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1444
    const-string v2, "domain-verification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1445
    new-instance v1, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v1, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1450
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    goto :goto_4e

    .line 1452
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageSettings"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1455
    :goto_4e
    goto :goto_4

    .line 1456
    :cond_4f
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3963
    const-string v0, " at "

    const-string v1, " has bad userId "

    .line 3964
    nop

    .line 3965
    nop

    .line 3966
    nop

    .line 3967
    nop

    .line 3969
    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_b
    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_12} :catch_a1

    .line 3970
    :try_start_12
    const-string/jumbo v6, "userId"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_19} :catch_9e

    .line 3971
    const/4 v7, 0x0

    if-eqz v6, :cond_24

    :try_start_1c
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_25

    .line 3992
    :catch_21
    move-exception v7

    goto/16 :goto_a4

    .line 3971
    :cond_24
    move v8, v7

    .line 3972
    :goto_25
    const-string/jumbo v9, "true"

    const-string/jumbo v10, "system"

    invoke-interface {p1, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 3973
    move v9, v2

    goto :goto_38

    .line 3972
    :cond_37
    move v9, v7

    .line 3975
    :goto_38
    if-nez v5, :cond_53

    .line 3976
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3978
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3976
    invoke-static {v3, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9d

    .line 3979
    :cond_53
    if-nez v8, :cond_7a

    .line 3980
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: shared-user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3980
    invoke-static {v3, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9d

    .line 3985
    :cond_7a
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v9, v7}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    if-nez v4, :cond_9d

    .line 3987
    const/4 v7, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Occurred while parsing settings at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3988
    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_9d} :catch_21

    .line 3996
    :cond_9d
    :goto_9d
    goto :goto_c8

    .line 3992
    :catch_9e
    move-exception v6

    move-object v6, v4

    goto :goto_a4

    :catch_a1
    move-exception v5

    move-object v5, v4

    move-object v6, v5

    .line 3993
    :goto_a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3995
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3993
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3998
    :goto_c8
    if-eqz v4, :cond_126

    .line 3999
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4001
    :cond_ce
    :goto_ce
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_125

    const/4 v5, 0x3

    if-ne v1, v5, :cond_dd

    .line 4002
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_125

    .line 4003
    :cond_dd
    if-eq v1, v5, :cond_ce

    const/4 v5, 0x4

    if-ne v1, v5, :cond_e3

    .line 4004
    goto :goto_ce

    .line 4007
    :cond_e3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4008
    const-string/jumbo v5, "sigs"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 4009
    iget-object v1, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_124

    .line 4010
    :cond_f8
    const-string/jumbo v5, "perms"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 4011
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_124

    .line 4013
    :cond_109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <shared-user>: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4014
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4013
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4015
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4017
    :goto_124
    goto :goto_ce

    .line 4018
    :cond_125
    goto :goto_129

    .line 4019
    :cond_126
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4021
    :goto_129
    return-void
.end method

.method private registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .registers 11

    .line 1056
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_6

    .line 1057
    return v0

    .line 1060
    :cond_6
    const-string v1, " name="

    const/4 v2, 0x6

    const/16 v3, 0x2710

    if-lt p1, v3, :cond_49

    .line 1061
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1062
    add-int/lit16 v4, p1, -0x2710

    .line 1064
    :goto_15
    if-lt v4, v3, :cond_20

    .line 1065
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1068
    :cond_20
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 1069
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate app id: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1072
    return v0

    .line 1074
    :cond_43
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1075
    goto :goto_71

    .line 1076
    :cond_49
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 1077
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1080
    return v0

    .line 1082
    :cond_6c
    iget-object p3, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1084
    :goto_71
    const/4 p1, 0x1

    return p1
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .registers 5

    .line 1039
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1040
    return-void

    .line 1042
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1043
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1044
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1045
    if-eqz v2, :cond_2d

    .line 1046
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1047
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 1048
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 1042
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1051
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1052
    return-void
.end method

.method private replaceAppIdLPw(ILcom/android/server/pm/SettingBase;)V
    .registers 5

    .line 1111
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_13

    .line 1112
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1113
    sub-int/2addr p1, v0

    .line 1114
    if-ge p1, v1, :cond_12

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_12
    goto :goto_18

    .line 1116
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1118
    :goto_18
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .registers 3

    .line 4131
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_6

    .line 4132
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4134
    :cond_6
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)V
    .registers 31
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

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 720
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v9, " to "

    if-eq v8, v1, :cond_66

    .line 721
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shared user changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v5, "<nothing>"

    if-eqz v4, :cond_34

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_35

    :cond_34
    move-object v0, v5

    :goto_35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    if-eqz v1, :cond_3f

    iget-object v5, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :cond_3f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 725
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating application package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 729
    :cond_66
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "; Retain data and using new"

    const-string v10, " package "

    const-string v11, " system"

    const-string v12, ""

    const-string v13, "Update"

    const-string v14, "PackageManager"

    if-nez v1, :cond_e5

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    .line 731
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    move-object/from16 v16, v11

    if-eqz v1, :cond_8b

    goto :goto_8c

    :cond_8b
    move-object v11, v12

    :goto_8c
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " code path from "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 731
    invoke-static {v14, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-nez v1, :cond_dc

    .line 741
    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_d8

    if-nez p1, :cond_d8

    .line 742
    invoke-static/range {p11 .. p11}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    .line 743
    if-eqz v1, :cond_d8

    .line 744
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 745
    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 746
    goto :goto_c5

    .line 753
    :cond_d8
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 755
    :cond_dc
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 756
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    goto :goto_e7

    .line 729
    :cond_e5
    move-object/from16 v16, v11

    .line 758
    :goto_e7
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    if-eqz v1, :cond_ff

    move-object/from16 v12, v16

    :cond_ff
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resource path from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 767
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 772
    :cond_12e
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 773
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v2, -0x402e0009

    and-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 779
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/4 v2, 0x1

    and-int/lit8 v2, p8, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 780
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v2, p9, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 782
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v2, 0x20000

    and-int v2, p9, v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 784
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v2, 0x40000

    and-int v2, p9, v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 786
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v2, 0x80000

    and-int v2, p9, v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 788
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v2, 0x200000

    and-int v2, p9, v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 790
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v2, 0x40000000  # 2.0f

    and-int v2, p9, v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 792
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 793
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 794
    if-eqz v4, :cond_189

    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 798
    :cond_189
    if-eqz v5, :cond_196

    if-eqz v6, :cond_196

    array-length v1, v5

    array-length v2, v6

    if-ne v1, v2, :cond_196

    .line 800
    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 801
    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_19b

    .line 803
    :cond_196
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 804
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 806
    :goto_19b
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .registers 6

    .line 2625
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2626
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2625
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2629
    goto :goto_35

    .line 2627
    :catch_12
    move-exception v0

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageSettings"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :goto_35
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .registers 5

    .line 2535
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2537
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2540
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2541
    return-void
.end method

.method private writePackageListLPrInternal(I)V
    .registers 16

    .line 2656
    const-string v0, "PackageSettings"

    const-string v1, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v2

    .line 2657
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2658
    const/4 v5, 0x0

    move v6, v5

    :goto_15
    array-length v7, v4

    if-ge v6, v7, :cond_25

    .line 2659
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v4, v6

    .line 2658
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 2661
    :cond_25
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2c

    .line 2662
    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 2666
    :cond_2c
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2667
    new-instance v2, Lcom/android/internal/util/JournaledFile;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v2, v6, p1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2669
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object p1

    .line 2671
    const/4 v6, 0x0

    .line 2673
    :try_start_54
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2674
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_67} :catch_167

    .line 2675
    :try_start_67
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    const/16 v8, 0x1a0

    const/16 v9, 0x3e8

    const/16 v10, 0x408

    invoke-static {v6, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2677
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2678
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_83
    :goto_83
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_158

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 2679
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_133

    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_133

    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez v10, :cond_a3

    goto/16 :goto_133

    .line 2687
    :cond_a3
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2688
    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2689
    iget v12, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_b1

    move v12, v3

    goto :goto_b2

    :cond_b1
    move v12, v5

    .line 2690
    :goto_b2
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v9

    .line 2693
    const/16 v13, 0x20

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_c3

    .line 2694
    goto :goto_83

    .line 2713
    :cond_c3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2714
    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    iget v13, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2717
    if-eqz v12, :cond_d8

    const-string v12, " 1 "

    goto :goto_da

    :cond_d8
    const-string v12, " 0 "

    :goto_da
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2718
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2720
    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2721
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    if-eqz v9, :cond_106

    array-length v11, v9

    if-lez v11, :cond_106

    .line 2723
    aget v11, v9, v5

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2724
    move v11, v3

    :goto_f6
    array-length v12, v9

    if-ge v11, v12, :cond_10c

    .line 2725
    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2726
    aget v12, v9, v11

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2724
    add-int/lit8 v11, v11, 0x1

    goto :goto_f6

    .line 2729
    :cond_106
    const-string/jumbo v9, "none"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2731
    :cond_10c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v9

    if-eqz v9, :cond_118

    const-string v9, "1"

    goto :goto_11a

    :cond_118
    const-string v9, "0"

    :goto_11a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2733
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2734
    iget-wide v9, v10, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2735
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2736
    invoke-virtual {p1, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2737
    goto/16 :goto_83

    .line 2681
    :cond_133
    :goto_133
    const-string v10, "android"

    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_83

    .line 2682
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " due to missing metadata"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_83

    .line 2738
    :cond_158
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 2739
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2740
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 2741
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_164} :catch_165

    .line 2746
    goto :goto_174

    .line 2742
    :catch_165
    move-exception v1

    goto :goto_169

    :catch_167
    move-exception v1

    move-object p1, v6

    .line 2743
    :goto_169
    const-string v3, "Failed to write packages.list"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2744
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2745
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2747
    :goto_174
    return-void
.end method


# virtual methods
.method addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 38
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

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p9

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 522
    const/16 v19, 0x0

    if-eqz v1, :cond_2d

    .line 523
    iget v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v14, :cond_17

    .line 524
    return-object v1

    .line 526
    :cond_17
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding duplicate package, keeping first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 528
    return-object v19

    .line 530
    :cond_2d
    new-instance v13, Lcom/android/server/pm/PackageSetting;

    move-object v1, v13

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

    move-object v0, v13

    move/from16 v13, p13

    move-object/from16 p2, v0

    move v0, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 534
    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 535
    move-object v3, v1

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 536
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return-object v3

    .line 539
    :cond_6a
    return-object v19
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 7

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 548
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 549
    iget p3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne p3, p2, :cond_10

    .line 550
    return-object v0

    .line 552
    :cond_10
    const/4 p2, 0x6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 554
    return-object v1

    .line 556
    :cond_26
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 557
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 558
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 559
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-object v0

    .line 562
    :cond_39
    return-object v1
.end method

.method applyDefaultPreferredAppsLPw(I)V
    .registers 16

    .line 3153
    const-string v0, "Error reading apps file "

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 3154
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 3155
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 3156
    iget v6, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_53

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_53

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v5, :cond_53

    .line 3158
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3160
    nop

    :goto_36
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_53

    .line 3161
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3162
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v6, v7, p1}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3160
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 3166
    :cond_53
    goto :goto_14

    .line 3169
    :cond_54
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/preferred-apps"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_6d

    goto/16 :goto_1a0

    .line 3173
    :cond_6d
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    const-string v3, " cannot be read"

    const-string v6, "PackageSettings"

    if-nez v2, :cond_8f

    .line 3174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Directory "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    return-void

    .line 3179
    :cond_8f
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v7, v2

    :goto_94
    if-ge v4, v7, :cond_19f

    aget-object v8, v2, v4

    .line 3180
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c7

    .line 3181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-xml file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " directory, ignoring"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    goto/16 :goto_192

    .line 3184
    :cond_c7
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v9

    const-string v10, "Preferred apps file "

    if-nez v9, :cond_e6

    .line 3185
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    goto/16 :goto_192

    .line 3190
    :cond_e6
    nop

    .line 3192
    const/4 v9, 0x0

    :try_start_e8
    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e8 .. :try_end_f2} :catch_175
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f2} :catch_15a
    .catchall {:try_start_e8 .. :try_end_f2} :catchall_157

    .line 3193
    :try_start_f2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 3194
    invoke-interface {v12, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3197
    :goto_f9
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v13, 0x2

    if-eq v9, v13, :cond_103

    if-eq v9, v5, :cond_103

    goto :goto_f9

    .line 3202
    :cond_103
    if-eq v9, v13, :cond_122

    .line 3203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " does not have start tag"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_11c} :catch_155
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_11c} :catch_153
    .catchall {:try_start_f2 .. :try_end_11c} :catchall_196

    .line 3217
    nop

    .line 3219
    :try_start_11d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_190

    goto/16 :goto_18f

    .line 3206
    :cond_122
    :try_start_122
    const-string/jumbo v9, "preferred-activities"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14b

    .line 3207
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " does not start with \'preferred-activities\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_122 .. :try_end_146} :catch_155
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_146} :catch_153
    .catchall {:try_start_122 .. :try_end_146} :catchall_196

    .line 3217
    nop

    .line 3219
    :try_start_147
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_190

    goto :goto_18f

    .line 3211
    :cond_14b
    :try_start_14b
    invoke-direct {p0, v12, p1}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14b .. :try_end_14e} :catch_155
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_153
    .catchall {:try_start_14b .. :try_end_14e} :catchall_196

    .line 3217
    nop

    .line 3219
    :try_start_14f
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_190

    goto :goto_18f

    .line 3214
    :catch_153
    move-exception v9

    goto :goto_15d

    .line 3212
    :catch_155
    move-exception v9

    goto :goto_178

    .line 3217
    :catchall_157
    move-exception p1

    move-object v11, v9

    goto :goto_197

    .line 3214
    :catch_15a
    move-exception v10

    move-object v11, v9

    move-object v9, v10

    .line 3215
    :goto_15d
    :try_start_15d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16f
    .catchall {:try_start_15d .. :try_end_16f} :catchall_196

    .line 3217
    if-eqz v11, :cond_192

    .line 3219
    :try_start_171
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_174} :catch_190

    goto :goto_18f

    .line 3212
    :catch_175
    move-exception v10

    move-object v11, v9

    move-object v9, v10

    .line 3213
    :goto_178
    :try_start_178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18a
    .catchall {:try_start_178 .. :try_end_18a} :catchall_196

    .line 3217
    if-eqz v11, :cond_192

    .line 3219
    :try_start_18c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_18f} :catch_190

    .line 3221
    :goto_18f
    goto :goto_192

    .line 3220
    :catch_190
    move-exception v8

    goto :goto_18f

    .line 3179
    :cond_192
    :goto_192
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_94

    .line 3217
    :catchall_196
    move-exception p1

    :goto_197
    if-eqz v11, :cond_19e

    .line 3219
    :try_start_199
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_19d

    .line 3221
    goto :goto_19e

    .line 3220
    :catch_19d
    move-exception v0

    .line 3221
    :cond_19e
    :goto_19e
    throw p1

    .line 3225
    :cond_19f
    return-void

    .line 3171
    :cond_1a0
    :goto_1a0
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3

    .line 1309
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 1310
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimePermissionsGrantedLPr(I)Z

    move-result p1

    .line 1309
    return p1
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 5
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

    .line 1167
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1168
    if-nez v0, :cond_c

    .line 1172
    const/4 p1, 0x0

    return-object p1

    .line 1174
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    .line 1175
    if-nez v1, :cond_1b

    .line 1176
    new-instance v1, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v1, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    .line 1177
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_1e

    .line 1183
    :cond_1b
    invoke-virtual {v1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    .line 1190
    :goto_1e
    return-object v1
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I[Ljava/lang/String;)V
    .registers 24

    .line 4031
    move-object/from16 v1, p0

    move/from16 v10, p3

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4032
    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4033
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v11

    .line 4034
    new-array v12, v11, [Ljava/lang/String;

    .line 4035
    new-array v13, v11, [Ljava/lang/String;

    .line 4036
    new-array v14, v11, [I

    .line 4037
    new-array v15, v11, [Ljava/lang/String;

    .line 4038
    new-array v9, v11, [I

    .line 4039
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4040
    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v11, :cond_7d

    .line 4041
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4042
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_78

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_36

    .line 4043
    move-object/from16 v7, p4

    goto :goto_7a

    .line 4045
    :cond_36
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_50

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4046
    move-object/from16 v7, p4

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-nez v6, :cond_52

    const/4 v6, 0x1

    goto :goto_53

    .line 4045
    :cond_50
    move-object/from16 v7, p4

    .line 4046
    :cond_52
    move v6, v3

    .line 4049
    :goto_53
    invoke-virtual {v5, v6, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4050
    if-nez v6, :cond_5b

    .line 4051
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4055
    :cond_5b
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v6, v12, v4

    .line 4056
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v6, v13, v4

    .line 4057
    iget v6, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v6, v14, v4

    .line 4058
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v6, v15, v4

    .line 4059
    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v5, v9, v4

    goto :goto_7a

    .line 4042
    :cond_78
    move-object/from16 v7, p4

    .line 4040
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 4061
    :cond_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7 .. :try_end_7e} :catchall_c2

    .line 4062
    move v8, v3

    :goto_7f
    if-ge v8, v11, :cond_b7

    .line 4063
    aget-object v0, v13, v8

    if-nez v0, :cond_8a

    .line 4064
    move/from16 v17, v8

    move-object/from16 v18, v9

    goto :goto_b2

    .line 4069
    :cond_8a
    :try_start_8a
    aget-object v3, v12, v8

    aget-object v4, v13, v8

    const/4 v6, 0x3

    aget v7, v14, v8

    aget-object v0, v15, v8

    aget v16, v9, v8
    :try_end_95
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8a .. :try_end_95} :catch_a6

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v17, v8

    move-object v8, v0

    move-object/from16 v18, v9

    move/from16 v9, v16

    :try_start_a0
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_a3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a0 .. :try_end_a3} :catch_a4

    .line 4073
    goto :goto_b2

    .line 4071
    :catch_a4
    move-exception v0

    goto :goto_ab

    :catch_a6
    move-exception v0

    move/from16 v17, v8

    move-object/from16 v18, v9

    .line 4072
    :goto_ab
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4062
    :goto_b2
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v9, v18

    goto :goto_7f

    .line 4075
    :cond_b7
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 4076
    :try_start_ba
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4077
    monitor-exit v3

    .line 4078
    return-void

    .line 4077
    :catchall_bf
    move-exception v0

    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_bf

    throw v0

    .line 4061
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v0
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .registers 6

    .line 459
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 460
    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 461
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an installed package"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v1

    .line 464
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 466
    if-nez v2, :cond_69

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_69

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_69

    .line 467
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_59

    .line 468
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 471
    :cond_59
    if-eqz p2, :cond_61

    .line 476
    new-instance p2, Lcom/android/server/pm/PackageSetting;

    invoke-direct {p2, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_62

    .line 478
    :cond_61
    move-object p2, v0

    .line 480
    :goto_62
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const/4 p1, 0x1

    return p1

    .line 484
    :cond_69
    return v1
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 11

    .line 5080
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const-string v5, "activities:"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5081
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    const-string/jumbo v5, "services:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5082
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    const-string/jumbo v5, "receivers:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5083
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    const-string/jumbo v5, "providers:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5084
    iget-object v0, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    const-string v5, "instrumentations:"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V

    .line 5085
    return-void
.end method

.method dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
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

    .line 5089
    invoke-static {p5}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p3

    .line 5090
    if-nez p3, :cond_7

    .line 5091
    return-void

    .line 5093
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    const/4 p4, 0x0

    :goto_e
    if-ge p4, p3, :cond_2c

    .line 5095
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Component;

    .line 5096
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    add-int/lit8 p4, p4, 0x1

    goto :goto_e

    .line 5099
    :cond_2c
    return-void
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5

    .line 5013
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 5014
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5015
    const-string p2, "gids="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5016
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object p2

    .line 5015
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5018
    :cond_15
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 7
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

    .line 5063
    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object p4

    .line 5064
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 5065
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "install permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_16
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5067
    if-eqz p3, :cond_2f

    .line 5068
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 5069
    goto :goto_16

    .line 5071
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5072
    const-string v1, ": granted="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 5073
    nop

    .line 5074
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v0

    .line 5073
    const-string v1, ", flags="

    invoke-static {v1, v0}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5075
    goto :goto_16

    .line 5077
    :cond_59
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .registers 27
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

    .line 4455
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v1, p7

    if-eqz v0, :cond_173

    .line 4456
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4457
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4458
    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_21
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4459
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4460
    iget v2, v10, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4461
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4462
    iget-wide v2, v10, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 4463
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4464
    iget-wide v2, v10, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 4465
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4466
    iget-wide v2, v10, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 4467
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4468
    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string v3, "?"

    if-eqz v2, :cond_50

    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    goto :goto_51

    :cond_50
    move-object v2, v3

    :goto_51
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4469
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4470
    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const-string v4, "-"

    if-eqz v2, :cond_a4

    .line 4471
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "splt,"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4472
    const-string v5, "base,"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4473
    iget-object v5, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v5, v5, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4474
    iget-object v5, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v5, :cond_a4

    .line 4475
    const/4 v11, 0x0

    :goto_7c
    iget-object v5, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v11, v5, :cond_a4

    .line 4476
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4477
    iget-object v5, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4478
    iget-object v5, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v5, v5, v11

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4475
    add-int/lit8 v11, v11, 0x1

    goto :goto_7c

    .line 4482
    :cond_a4
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_172

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4483
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4484
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4485
    const-string/jumbo v6, "usr"

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4486
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4487
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4488
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4489
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-eqz v6, :cond_d6

    const-string v6, "I"

    goto :goto_d8

    :cond_d6
    const-string v6, "i"

    :goto_d8
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4490
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v6

    if-eqz v6, :cond_e6

    const-string v6, "B"

    goto :goto_e8

    :cond_e6
    const-string v6, "b"

    :goto_e8
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4491
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v6

    if-eqz v6, :cond_f6

    const-string v6, "SU"

    goto :goto_f9

    :cond_f6
    const-string/jumbo v6, "su"

    :goto_f9
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4492
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v6

    if-eqz v6, :cond_107

    const-string v6, "S"

    goto :goto_10a

    :cond_107
    const-string/jumbo v6, "s"

    :goto_10a
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4493
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v6

    if-eqz v6, :cond_118

    const-string v6, "l"

    goto :goto_11a

    :cond_118
    const-string v6, "L"

    :goto_11a
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    if-eqz v6, :cond_128

    const-string v6, "IA"

    goto :goto_12a

    :cond_128
    const-string v6, "ia"

    :goto_12a
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v6

    if-eqz v6, :cond_138

    const-string v6, "VPI"

    goto :goto_13b

    :cond_138
    const-string/jumbo v6, "vpi"

    :goto_13b
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4496
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v6

    .line 4497
    if-eqz v6, :cond_149

    const-string v6, "HA"

    goto :goto_14b

    :cond_149
    const-string v6, "ha"

    :goto_14b
    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4498
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4499
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4500
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v5}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v5

    .line 4501
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4502
    if-eqz v5, :cond_166

    goto :goto_167

    :cond_166
    move-object v5, v3

    :goto_167
    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4503
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4504
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4505
    goto/16 :goto_a8

    .line 4506
    :cond_172
    return-void

    .line 4509
    :cond_173
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4510
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_182

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_184

    :cond_182
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_184
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4511
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4512
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4513
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4515
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1ad

    .line 4516
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4517
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4520
    :cond_1ad
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4522
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1cb

    .line 4523
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4525
    :cond_1cb
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4526
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4527
    if-nez v9, :cond_21b

    .line 4528
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4529
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4530
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4531
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4532
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4534
    :cond_21b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v10, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 4535
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_248

    .line 4536
    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4537
    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4539
    :cond_248
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4540
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const-string v12, "    "

    const/4 v2, 0x1

    if-eqz v0, :cond_55c

    .line 4541
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    const-string v3, "]"

    const-string v4, ", "

    if-eqz v0, :cond_298

    .line 4542
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 4543
    iget-object v5, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4544
    if-eqz v5, :cond_276

    iget-object v13, v5, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_281

    .line 4545
    :cond_276
    iget-object v5, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4547
    :cond_281
    if-eqz v5, :cond_2f6

    .line 4548
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  parentPackage="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4549
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_292

    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_294

    :cond_292
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_294
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f6

    .line 4551
    :cond_298
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f6

    .line 4552
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  childPackages=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4553
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4554
    const/4 v5, 0x0

    :goto_2af
    if-ge v5, v0, :cond_2f2

    .line 4555
    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Package;

    .line 4556
    iget-object v14, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v15, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 4557
    if-eqz v14, :cond_2d1

    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v11, v13, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2dc

    .line 4558
    :cond_2d1
    iget-object v11, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 4560
    :cond_2dc
    if-eqz v14, :cond_2ef

    .line 4561
    if-lez v5, :cond_2e3

    .line 4562
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4564
    :cond_2e3
    iget-object v11, v14, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v11, :cond_2ea

    iget-object v11, v14, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_2ec

    :cond_2ea
    iget-object v11, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_2ec
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4554
    :cond_2ef
    add-int/lit8 v5, v5, 0x1

    goto :goto_2af

    .line 4567
    :cond_2f2
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f7

    .line 4551
    :cond_2f6
    :goto_2f6
    nop

    .line 4569
    :goto_2f7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v7, v0}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4571
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4572
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  apkSigningVersion="

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4573
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  applicationInfo="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4574
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4575
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  flags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v5, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4576
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4577
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v0, :cond_36e

    .line 4578
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  privateFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v5, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4579
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4581
    :cond_36e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  dataDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4582
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  supportsScreens=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4583
    nop

    .line 4584
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_39c

    .line 4585
    nop

    .line 4587
    nop

    .line 4588
    const-string/jumbo v0, "small"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_39d

    .line 4584
    :cond_39c
    move v11, v2

    .line 4590
    :goto_39d
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3b3

    .line 4591
    if-nez v11, :cond_3ac

    .line 4592
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4593
    :cond_3ac
    nop

    .line 4594
    const-string v0, "medium"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 4596
    :cond_3b3
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3c9

    .line 4597
    if-nez v11, :cond_3c2

    .line 4598
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4599
    :cond_3c2
    nop

    .line 4600
    const-string v0, "large"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 4602
    :cond_3c9
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v0, v5

    if-eqz v0, :cond_3e1

    .line 4603
    if-nez v11, :cond_3d9

    .line 4604
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4605
    :cond_3d9
    nop

    .line 4606
    const-string/jumbo v0, "xlarge"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 4608
    :cond_3e1
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3f8

    .line 4609
    if-nez v11, :cond_3f0

    .line 4610
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4611
    :cond_3f0
    nop

    .line 4612
    const-string/jumbo v0, "resizeable"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 4614
    :cond_3f8
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_40d

    .line 4615
    if-nez v11, :cond_407

    .line 4616
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4617
    :cond_407
    nop

    .line 4618
    const-string v0, "anyDensity"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4620
    :cond_40d
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4621
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_449

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_449

    .line 4622
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  dynamic libraries:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    const/4 v0, 0x0

    :goto_429
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_449

    .line 4624
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4625
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    add-int/lit8 v0, v0, 0x1

    goto :goto_429

    .line 4628
    :cond_449
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    const-string v3, " version:"

    if-eqz v0, :cond_476

    .line 4629
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  static library:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4631
    const-string/jumbo v0, "name:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4632
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-wide v4, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {v7, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4634
    :cond_476
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_4af

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4af

    .line 4635
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  usesLibraries:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4636
    const/4 v0, 0x0

    :goto_48f
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4af

    .line 4637
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4636
    add-int/lit8 v0, v0, 0x1

    goto :goto_48f

    .line 4640
    :cond_4af
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f4

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 4641
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4f4

    .line 4642
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  usesStaticLibraries:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4643
    const/4 v0, 0x0

    :goto_4c8
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4f4

    .line 4644
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4645
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4646
    iget-object v4, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    aget-wide v4, v4, v0

    invoke-virtual {v7, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4643
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c8

    .line 4649
    :cond_4f4
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_52d

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4650
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_52d

    .line 4651
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  usesOptionalLibraries:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4652
    const/4 v0, 0x0

    :goto_50d
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_52d

    .line 4653
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4654
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4652
    add-int/lit8 v0, v0, 0x1

    goto :goto_50d

    .line 4657
    :cond_52d
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_55c

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_55c

    .line 4659
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  usesLibraryFiles:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4660
    const/4 v0, 0x0

    :goto_543
    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_55c

    .line 4661
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4660
    add-int/lit8 v0, v0, 0x1

    goto :goto_543

    .line 4665
    :cond_55c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4666
    iget-wide v3, v10, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 4667
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4668
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4669
    iget-wide v3, v10, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 4670
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4671
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4672
    iget-wide v3, v10, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 4673
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4674
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5a9

    .line 4675
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4676
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4678
    :cond_5a9
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_5ba

    .line 4679
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4680
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4682
    :cond_5ba
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4683
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4684
    iget-boolean v0, v10, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4685
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4686
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4687
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4689
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_611

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_611

    .line 4690
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4691
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4694
    :cond_611
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_695

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_695

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_695

    .line 4695
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 4696
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    const/4 v1, 0x0

    :goto_632
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_695

    .line 4698
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Permission;

    .line 4699
    if-eqz v9, :cond_64b

    iget-object v4, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4700
    invoke-virtual {v9, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64b

    .line 4701
    goto :goto_692

    .line 4703
    :cond_64b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4704
    const-string v4, ": prot="

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    iget-object v4, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4706
    iget-object v4, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_674

    .line 4707
    const-string v4, ", COSTS_MONEY"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4709
    :cond_674
    iget-object v4, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_681

    .line 4710
    const-string v4, ", HIDDEN"

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4712
    :cond_681
    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000  # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_68f

    .line 4713
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4715
    :cond_68f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4697
    :goto_692
    add-int/lit8 v1, v1, 0x1

    goto :goto_632

    .line 4719
    :cond_695
    if-nez v9, :cond_699

    if-eqz p9, :cond_6f2

    :cond_699
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_6f2

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f2

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4721
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6f2

    .line 4722
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4723
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4724
    const/4 v1, 0x0

    :goto_6ba
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f2

    .line 4725
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4726
    if-eqz v9, :cond_6cf

    .line 4727
    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6cf

    .line 4728
    goto :goto_6ef

    .line 4730
    :cond_6cf
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4731
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 4732
    if-eqz v2, :cond_6ec

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v2

    if-eqz v2, :cond_6ec

    .line 4733
    const-string v2, ": restricted=true"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6ef

    .line 4735
    :cond_6ec
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4724
    :goto_6ef
    add-int/lit8 v1, v1, 0x1

    goto :goto_6ba

    .line 4740
    :cond_6f2
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const-string v1, "  "

    if-eqz v0, :cond_6fc

    if-nez v9, :cond_6fc

    if-eqz p9, :cond_712

    .line 4741
    :cond_6fc
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2, v9, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4745
    :cond_712
    if-eqz p10, :cond_726

    .line 4746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v10}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 4749
    :cond_726
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_72a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8da

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 4750
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4751
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4752
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4753
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4754
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4755
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4756
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4757
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4758
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4759
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_7a3

    .line 4760
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 4761
    const-string v1, " suspendingPackage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4762
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4763
    const-string v1, " dialogInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4764
    iget-object v0, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4766
    :cond_7a3
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4767
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4768
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4769
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4770
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4771
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4772
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4773
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4774
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4775
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4777
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v0

    .line 4778
    if-eqz v0, :cond_80e

    array-length v1, v0

    if-lez v1, :cond_80e

    .line 4779
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  overlay paths:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7fe
    if-ge v2, v1, :cond_80e

    aget-object v3, v0, v2

    .line 4781
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    add-int/lit8 v2, v2, 0x1

    goto :goto_7fe

    .line 4785
    :cond_80e
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v0

    .line 4786
    if-eqz v0, :cond_821

    .line 4787
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    lastDisabledCaller: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4788
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4791
    :cond_821
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_861

    .line 4792
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v2

    invoke-virtual {v6, v7, v1, v2}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    .line 4795
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v4

    .line 4794
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 4798
    :cond_861
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 4799
    if-eqz v0, :cond_874

    .line 4800
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4801
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4804
    :cond_874
    if-nez v9, :cond_8d8

    .line 4805
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 4806
    const-string v1, "      "

    if-eqz v0, :cond_8a8

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_8a8

    .line 4807
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4808
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_892
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4809
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4810
    goto :goto_892

    .line 4812
    :cond_8a8
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 4813
    if-eqz v0, :cond_8d8

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_8d8

    .line 4814
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4815
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4816
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4817
    goto :goto_8c2

    .line 4820
    :cond_8d8
    goto/16 :goto_72a

    .line 4821
    :cond_8da
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 31
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

    .line 4825
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4826
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 4827
    nop

    .line 4828
    nop

    .line 4829
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v17

    .line 4830
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v18

    .line 4831
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    :goto_34
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v21, 0x0

    const/16 v22, 0x1

    if-eqz v1, :cond_ae

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4832
    if-eqz v13, :cond_58

    iget-object v1, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4833
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 4834
    goto :goto_34

    .line 4836
    :cond_58
    if-eqz v14, :cond_65

    .line 4837
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 4838
    goto :goto_34

    .line 4841
    :cond_65
    if-nez p5, :cond_6e

    if-eqz v13, :cond_6e

    .line 4842
    iget-object v1, v5, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v15, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 4845
    :cond_6e
    if-nez p5, :cond_83

    if-nez v0, :cond_83

    .line 4846
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 4847
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4848
    :cond_7b
    const-string v0, "Packages:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4849
    move/from16 v23, v22

    goto :goto_85

    .line 4851
    :cond_83
    move/from16 v23, v0

    :goto_85
    if-eqz p5, :cond_8c

    const-string/jumbo v0, "pkg"

    move-object v3, v0

    goto :goto_8e

    :cond_8c
    move-object/from16 v3, v21

    :goto_8e
    if-eqz v13, :cond_93

    move/from16 v9, v22

    goto :goto_95

    :cond_93
    move/from16 v9, v20

    :goto_95
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object v6, v10

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move-object/from16 v24, v10

    move/from16 v10, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 4853
    move/from16 v0, v23

    move-object/from16 v10, v24

    goto :goto_34

    .line 4855
    :cond_ae
    move-object/from16 v24, v10

    .line 4856
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_126

    if-nez v14, :cond_126

    .line 4857
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v1, v20

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_126

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4858
    if-eqz v13, :cond_e9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 4859
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 4860
    goto :goto_c6

    .line 4862
    :cond_e9
    if-nez p5, :cond_103

    .line 4863
    if-nez v1, :cond_fd

    .line 4864
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 4865
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4866
    :cond_f6
    const-string v1, "Renamed packages:"

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4867
    move/from16 v1, v22

    .line 4869
    :cond_fd
    const-string v3, "  "

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_109

    .line 4871
    :cond_103
    const-string/jumbo v3, "ren,"

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4873
    :goto_109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    if-eqz p5, :cond_117

    const-string v3, " -> "

    goto :goto_119

    :cond_117
    const-string v3, ","

    :goto_119
    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4875
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4876
    goto :goto_c6

    .line 4879
    :cond_126
    nop

    .line 4880
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_199

    if-nez v14, :cond_199

    .line 4881
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v0, v20

    :goto_13d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_199

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4882
    if-eqz v13, :cond_15d

    iget-object v1, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15d

    iget-object v1, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4883
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15d

    .line 4884
    goto :goto_13d

    .line 4886
    :cond_15d
    if-nez p5, :cond_172

    if-nez v0, :cond_172

    .line 4887
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 4888
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4889
    :cond_16a
    const-string v0, "Hidden system packages:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    move/from16 v23, v22

    goto :goto_174

    .line 4892
    :cond_172
    move/from16 v23, v0

    :goto_174
    if-eqz p5, :cond_17a

    const-string v0, "dis"

    move-object v3, v0

    goto :goto_17c

    :cond_17a
    move-object/from16 v3, v21

    :goto_17c
    if-eqz v13, :cond_181

    move/from16 v9, v22

    goto :goto_183

    :cond_181
    move/from16 v9, v20

    :goto_183
    const-string v2, "  "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v6, v24

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move/from16 v10, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    .line 4894
    move/from16 v0, v23

    goto :goto_13d

    .line 4896
    :cond_199
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    .line 4899
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 4901
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 4902
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_24

    .line 4903
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4904
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    .line 4902
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4906
    :cond_24
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 11
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

    .line 4910
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

    .line 4912
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 3

    .line 4985
    const-string p2, "Settings parse messages:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4986
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4987
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .registers 7
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

    .line 5022
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p5, :cond_58

    .line 5023
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p5, "runtime permissions:"

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_15
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_58

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5025
    if-eqz p3, :cond_2e

    .line 5026
    invoke-virtual {p5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 5027
    goto :goto_15

    .line 5029
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5030
    const-string v0, ": granted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5031
    nop

    .line 5032
    invoke-virtual {p5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result p5

    .line 5031
    const-string v0, ", flags="

    invoke-static {v0, p5}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5033
    goto :goto_15

    .line 5035
    :cond_58
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 27
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

    .line 4916
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 4917
    iget-object v0, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_178

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 4918
    if-eqz p2, :cond_26

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eq v1, v2, :cond_26

    .line 4919
    goto :goto_11

    .line 4921
    :cond_26
    if-eqz v8, :cond_33

    .line 4922
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 4923
    goto :goto_11

    .line 4925
    :cond_33
    if-nez p5, :cond_15f

    .line 4926
    const/4 v11, 0x1

    if-nez v0, :cond_48

    .line 4927
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4928
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4929
    :cond_41
    const-string v0, "Shared users:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4930
    move v12, v11

    goto :goto_49

    .line 4926
    :cond_48
    move v12, v0

    .line 4933
    :goto_49
    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4934
    iget-object v0, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4935
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4936
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4937
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4939
    const-string v13, "    "

    .line 4940
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4942
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Packages"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    iget-object v0, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 4944
    const/4 v2, 0x0

    :goto_87
    const-string v14, "  "

    if-ge v2, v0, :cond_c9

    .line 4945
    iget-object v3, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4946
    if-eqz v3, :cond_af

    .line 4947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c6

    .line 4949
    :cond_af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "NULL?!"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    :goto_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 4953
    :cond_c9
    const/4 v0, 0x4

    move-object/from16 v15, p4

    invoke-virtual {v15, v0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 4954
    move v0, v12

    goto/16 :goto_11

    .line 4957
    :cond_d5
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 4958
    invoke-virtual {v6, v7, v13, v8, v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4960
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_e6
    if-ge v2, v3, :cond_15d

    aget v0, v4, v2

    .line 4961
    invoke-virtual {v5, v0}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 4962
    nop

    .line 4963
    invoke-virtual {v5, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    .line 4964
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v17

    if-eqz v17, :cond_108

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_100

    goto :goto_108

    :cond_100
    move/from16 v19, v2

    move v10, v3

    move-object/from16 v20, v4

    move-object/from16 v16, v5

    goto :goto_155

    .line 4965
    :cond_108
    :goto_108
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "User "

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz p2, :cond_13e

    move/from16 v18, v11

    goto :goto_140

    :cond_13e
    const/16 v18, 0x0

    :goto_140
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v19, v2

    move-object v2, v10

    move v10, v3

    move-object/from16 v3, p3

    move-object/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 4960
    :goto_155
    add-int/lit8 v2, v19, 0x1

    move v3, v10

    move-object/from16 v5, v16

    move-object/from16 v4, v20

    goto :goto_e6

    .line 4971
    :cond_15d
    move v0, v12

    goto :goto_176

    .line 4972
    :cond_15f
    move-object/from16 v15, p4

    const-string/jumbo v2, "suid,"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    :goto_176
    goto/16 :goto_11

    .line 4975
    :cond_178
    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 4978
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4979
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    .line 4980
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4979
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4982
    :cond_1c
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 4430
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4431
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 4432
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4433
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4434
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4435
    const-string v1, "Internal:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4436
    :cond_2a
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4437
    const-string v1, "External:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4439
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4441
    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4442
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "sdkVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4443
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "databaseVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4444
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4445
    iget-object v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    const-string v2, "fingerprint"

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4446
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4447
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4431
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4449
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4450
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 4

    .line 1139
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1140
    if-nez v0, :cond_14

    .line 1141
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    .line 1142
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1144
    :cond_14
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 4

    .line 1130
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1131
    if-nez v0, :cond_14

    .line 1132
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 1133
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1135
    :cond_14
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 4

    .line 1121
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1122
    if-nez v0, :cond_14

    .line 1123
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 1124
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1126
    :cond_14
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 20

    .line 488
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 489
    if-nez v15, :cond_2c

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not disabled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    return-object v0

    .line 494
    :cond_2c
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_40

    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_40

    .line 495
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 497
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

    move-object v1, v15

    move-object v15, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v17, v0

    move-object/from16 v1, p1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 503
    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 4

    .line 1326
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1327
    if-nez v0, :cond_14

    .line 1328
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    .line 1329
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    :cond_14
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

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 5

    .line 4255
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4256
    if-eqz v0, :cond_f

    .line 4259
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result p1

    return p1

    .line 4257
    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .registers 4

    .line 1767
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 1768
    if-nez p1, :cond_c

    .line 1769
    const/4 p1, 0x0

    return p1

    .line 1771
    :cond_c
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChildSettingsLPr(Lcom/android/server/pm/PackageSetting;)[Lcom/android/server/pm/PackageSetting;
    .registers 7

    .line 4218
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 4221
    :cond_9
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4222
    new-array v1, v0, [Lcom/android/server/pm/PackageSetting;

    .line 4224
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_27

    .line 4225
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    aput-object v3, v1, v2

    .line 4224
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4227
    :cond_27
    return-object v1

    .line 4219
    :cond_28
    :goto_28
    const/4 p1, 0x0

    return-object p1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 5

    .line 4263
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4264
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4265
    if-eqz v0, :cond_17

    .line 4268
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 4269
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 4266
    :cond_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getDefaultRuntimePermissionsVersionLPr(I)I
    .registers 3

    .line 1318
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersionLPr(I)I

    move-result p1

    return p1
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .registers 2

    .line 4204
    if-nez p1, :cond_4

    .line 4205
    const/4 p1, 0x0

    return-object p1

    .line 4207
    :cond_4
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    return-object p1
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 4194
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4195
    return-object p1
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1339
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 4323
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4324
    if-eqz v0, :cond_f

    .line 4327
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4325
    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 4239
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4240
    if-eqz v0, :cond_d

    .line 4243
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object p1

    .line 4241
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 3

    .line 1154
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1155
    if-nez p1, :cond_c

    .line 1159
    const/4 p1, 0x0

    return-object p1

    .line 1161
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object p1

    return-object p1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .registers 4

    .line 1194
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1195
    if-nez p1, :cond_c

    .line 1199
    const/4 p1, 0x0

    return p1

    .line 1201
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide p1

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 1231
    if-nez p1, :cond_7

    .line 1232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1234
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1235
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

    .line 1236
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v2

    .line 1237
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1238
    invoke-virtual {v2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1239
    goto :goto_16

    .line 1241
    :cond_3d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    goto :goto_16

    .line 1243
    :cond_41
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1335
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    return-object p1
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .registers 4

    .line 1089
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_18

    .line 1090
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1091
    sub-int/2addr p1, v0

    .line 1092
    if-ge p1, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/SettingBase;

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return-object p1

    .line 1094
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/SettingBase;

    return-object p1
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 440
    if-nez v0, :cond_5e

    if-eqz p4, :cond_5e

    .line 441
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 442
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 443
    iget p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz p2, :cond_41

    .line 448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "New shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 445
    :cond_41
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    const/4 p3, -0x4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating shared user "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 451
    :cond_5e
    :goto_5e
    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .line 4157
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 4158
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4160
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4163
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 4363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4364
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 4365
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4366
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4367
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4364
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4370
    :cond_24
    return-object v0
.end method

.method hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 4168
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4169
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_47

    .line 4170
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4171
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4172
    goto :goto_44

    .line 4174
    :cond_1f
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4175
    goto :goto_44

    .line 4177
    :cond_28
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 4178
    move v5, v1

    :goto_2f
    if-ge v5, v4, :cond_44

    .line 4179
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4180
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 4181
    const/4 p1, 0x1

    return p1

    .line 4178
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 4169
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4185
    :cond_47
    return v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    .line 867
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_e

    .line 868
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 872
    :cond_e
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_24

    .line 873
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object p2, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 875
    :cond_24
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 876
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .registers 6

    .line 4231
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4232
    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    .line 4234
    :cond_e
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p3

    .line 4235
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result p1

    return p1
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .registers 5

    .line 4247
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4248
    if-eqz v0, :cond_d

    .line 4251
    iget-boolean p1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    return p1

    .line 4249
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 3

    .line 1343
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    return-void
.end method

.method pruneSharedUsersLPw()V
    .registers 8

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
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

    .line 568
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 569
    if-nez v3, :cond_2d

    .line 570
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    goto :goto_f

    .line 574
    :cond_2d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 575
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 576
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4c

    .line 577
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 579
    :cond_4c
    goto :goto_33

    .line 580
    :cond_4d
    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_5e

    .line 581
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_5e
    goto :goto_f

    .line 584
    :cond_5f
    const/4 v1, 0x0

    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 585
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 587
    :cond_72
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1880
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 1882
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p2

    .line 1884
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_65

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 1885
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p2, :cond_65

    .line 1886
    :cond_19
    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 1887
    goto :goto_9

    .line 1890
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1891
    const-string v1, "domain-verification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1892
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1893
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1894
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1895
    if-eqz v2, :cond_42

    .line 1897
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_47

    .line 1903
    :cond_42
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    :goto_47
    goto :goto_64

    .line 1910
    :cond_48
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1910
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1913
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1915
    :goto_64
    goto :goto_9

    .line 1916
    :cond_65
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1484
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1486
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1487
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_54

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 1488
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_54

    .line 1489
    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    .line 1490
    goto :goto_9

    .line 1492
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1493
    const-string v3, "block-uninstall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1494
    const/4 v2, 0x0

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1495
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1496
    goto :goto_53

    .line 1497
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1499
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1500
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1502
    :goto_53
    goto :goto_9

    .line 1503
    :cond_54
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 1504
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_65

    .line 1506
    :cond_60
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1508
    :goto_65
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1460
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1462
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1463
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5a

    .line 1464
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1465
    goto :goto_4

    .line 1467
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1468
    const-string v2, "default-browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1469
    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1471
    :goto_33
    goto :goto_59

    :cond_34
    const-string v2, "default-dialer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_33

    .line 1474
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under default-apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1476
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1477
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1479
    :goto_59
    goto :goto_4

    .line 1480
    :cond_5a
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2140
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d8

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 2142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_d8

    .line 2143
    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1a

    .line 2145
    goto :goto_4

    .line 2147
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2148
    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "PackageManager"

    if-eqz v1, :cond_bb

    .line 2149
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2151
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 2152
    if-nez v5, :cond_50

    .line 2153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2155
    goto :goto_4

    .line 2158
    :cond_50
    const-string v6, "granted"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2159
    const/4 v7, 0x0

    if-eqz v6, :cond_62

    .line 2160
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    goto :goto_62

    :cond_60
    move v2, v7

    goto :goto_63

    :cond_62
    :goto_62
    nop

    .line 2162
    :goto_63
    const-string v6, "flags"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2163
    if-eqz v1, :cond_72

    .line 2164
    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_73

    :cond_72
    nop

    .line 2166
    :goto_73
    const-string v1, "Permission already added: "

    const v6, 0xfbff

    const/4 v8, -0x1

    if-eqz v2, :cond_9b

    .line 2167
    invoke-virtual {p2, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v2

    if-ne v2, v8, :cond_97

    .line 2169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ba

    .line 2172
    :cond_97
    invoke-virtual {p2, v5, v8, v6, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_ba

    .line 2176
    :cond_9b
    invoke-virtual {p2, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v2

    if-ne v2, v8, :cond_b7

    .line 2178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ba

    .line 2181
    :cond_b7
    invoke-virtual {p2, v5, v8, v6, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2185
    :goto_ba
    goto :goto_d6

    .line 2186
    :cond_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <permissions>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2186
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2190
    :goto_d6
    goto/16 :goto_4

    .line 2191
    :cond_d8
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

    .line 2910
    move-object/from16 v1, p0

    const-string v2, "No start tag found in package manager settings"

    .line 2911
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v5, "PackageManager"

    if-eqz v0, :cond_4c

    .line 2913
    :try_start_10
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_49

    .line 2914
    :try_start_17
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v7, "Reading from backup settings file\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    const-string v0, "Need to read from backup settings file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2917
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up settings file "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_46} :catch_47

    .line 2927
    :cond_46
    goto :goto_4d

    .line 2925
    :catch_47
    move-exception v0

    goto :goto_4d

    :catch_49
    move-exception v0

    move-object v6, v4

    goto :goto_4d

    .line 2911
    :cond_4c
    move-object v6, v4

    .line 2930
    :goto_4d
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2931
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2932
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2933
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2936
    const-string v7, "Error reading package manager settings"

    const-string v8, "Error reading settings: "

    const-string v9, "Error reading: "

    const-string/jumbo v10, "primary_physical"

    const/4 v11, 0x1

    const/4 v12, 0x6

    const/4 v13, 0x0

    if-nez v6, :cond_9b

    .line 2937
    :try_start_6f
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_94

    .line 2938
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No settings file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    const-string v0, "No settings file; creating initial state"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2943
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 2944
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 2945
    return v13

    .line 2947
    :cond_94
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2949
    :cond_9b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 2950
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2953
    :goto_a8
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v15, 0x2

    if-eq v0, v15, :cond_b2

    if-eq v0, v11, :cond_b2

    goto :goto_a8

    .line 2958
    :cond_b2
    if-eq v0, v15, :cond_c3

    .line 2959
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in settings file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const/4 v0, 0x5

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2962
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return v13

    .line 2967
    :cond_c3
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 2968
    :goto_c7
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v11, :cond_29d

    const/4 v15, 0x3

    if-ne v0, v15, :cond_d6

    .line 2969
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v2, :cond_29d

    .line 2970
    :cond_d6
    if-eq v0, v15, :cond_29a

    if-ne v0, v3, :cond_dc

    .line 2971
    const/4 v11, 0x1

    goto :goto_c7

    .line 2974
    :cond_dc
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2975
    const-string/jumbo v11, "package"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ee

    .line 2976
    invoke-direct {v1, v14}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_297

    .line 2977
    :cond_ee
    const-string/jumbo v11, "permissions"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fe

    .line 2978
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_297

    .line 2979
    :cond_fe
    const-string/jumbo v11, "permission-trees"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10e

    .line 2980
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_297

    .line 2981
    :cond_10e
    const-string/jumbo v11, "shared-user"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11c

    .line 2982
    invoke-direct {v1, v14}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_297

    .line 2983
    :cond_11c
    const-string/jumbo v11, "preferred-packages"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_127

    goto/16 :goto_297

    .line 2985
    :cond_127
    const-string/jumbo v11, "preferred-activities"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_135

    .line 2988
    invoke-virtual {v1, v14, v13}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_297

    .line 2989
    :cond_135
    const-string/jumbo v11, "persistent-preferred-activities"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_143

    .line 2992
    invoke-direct {v1, v14, v13}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_297

    .line 2993
    :cond_143
    const-string v11, "crossProfile-intent-filters"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_150

    .line 2996
    invoke-direct {v1, v14, v13}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_297

    .line 2997
    :cond_150
    const-string v11, "default-browser"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15d

    .line 2998
    invoke-virtual {v1, v14, v13}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_297

    .line 2999
    :cond_15d
    const-string/jumbo v11, "updated-package"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16b

    .line 3000
    invoke-direct {v1, v14}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_297

    .line 3001
    :cond_16b
    const-string/jumbo v11, "renamed-package"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18d

    .line 3002
    const-string/jumbo v0, "new"

    invoke-interface {v14, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3003
    const-string/jumbo v11, "old"

    invoke-interface {v14, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3004
    if-eqz v0, :cond_18b

    if-eqz v11, :cond_18b

    .line 3005
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v15, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    :cond_18b
    goto/16 :goto_297

    :cond_18d
    const-string/jumbo v11, "restored-ivi"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19b

    .line 3008
    invoke-direct {v1, v14}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_297

    .line 3009
    :cond_19b
    const-string v11, "last-platform-version"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c9

    .line 3011
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3013
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3016
    const-string v15, "internal"

    invoke-static {v14, v15, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3017
    const-string v15, "external"

    invoke-static {v14, v15, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3018
    const-string v15, "fingerprint"

    .line 3019
    invoke-static {v14, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v15, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3021
    goto/16 :goto_297

    :cond_1c9
    const-string v11, "database-version"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ed

    .line 3023
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3025
    invoke-virtual {v1, v10}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3028
    const-string v15, "internal"

    invoke-static {v14, v15, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    iput v15, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3029
    const-string v0, "external"

    invoke-static {v14, v0, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3031
    goto/16 :goto_297

    :cond_1ed
    const-string/jumbo v11, "verifier"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21e

    .line 3032
    const-string v0, "device"

    invoke-interface {v14, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_1fc} :catch_2d0
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_1fc} :catch_2a1

    .line 3034
    :try_start_1fc
    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_202
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fc .. :try_end_202} :catch_203
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fc .. :try_end_202} :catch_2d0
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_202} :catch_2a1

    .line 3038
    goto :goto_21c

    .line 3035
    :catch_203
    move-exception v0

    .line 3036
    :try_start_204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Discard invalid verifier device id: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3036
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :goto_21c
    goto/16 :goto_297

    :cond_21e
    const-string/jumbo v11, "read-external-storage"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23e

    .line 3040
    const-string v0, "enforcement"

    invoke-interface {v14, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3041
    nop

    .line 3042
    const-string v11, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_239

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_23b

    :cond_239
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_23b
    iput-object v0, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 3043
    goto :goto_297

    :cond_23e
    const-string v11, "keyset-settings"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24e

    .line 3044
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14, v11}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_297

    .line 3045
    :cond_24e
    const-string/jumbo v11, "version"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27c

    .line 3046
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3048
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3049
    const-string/jumbo v11, "sdkVersion"

    invoke-static {v14, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3050
    const-string v11, "databaseVersion"

    invoke-static {v14, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3051
    const-string v11, "fingerprint"

    invoke-static {v14, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3052
    goto :goto_297

    .line 3053
    :cond_27c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <packages>: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3053
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3057
    :goto_297
    const/4 v11, 0x1

    goto/16 :goto_c7

    .line 2970
    :cond_29a
    const/4 v11, 0x1

    goto/16 :goto_c7

    .line 3059
    :cond_29d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_204 .. :try_end_2a0} :catch_2d0
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_2a0} :catch_2a1

    goto :goto_2fe

    .line 3066
    :catch_2a1
    move-exception v0

    .line 3067
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3069
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ff

    .line 3061
    :catch_2d0
    move-exception v0

    .line 3062
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3064
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3070
    :goto_2fe
    nop

    .line 3083
    :goto_2ff
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3085
    move v2, v13

    :goto_306
    if-ge v2, v0, :cond_37a

    .line 3086
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 3087
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v4

    .line 3088
    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 3089
    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_328

    .line 3090
    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 3091
    iput-object v5, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3092
    iget v4, v5, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3093
    invoke-direct {v1, v3, v5}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 3094
    goto :goto_377

    :cond_328
    const-string v6, " has shared uid "

    const-string v7, "Bad package setting: package "

    if-eqz v5, :cond_353

    .line 3095
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that is not a shared uid\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3097
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    invoke-static {v12, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3099
    goto :goto_377

    .line 3100
    :cond_353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that is not defined\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3102
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    invoke-static {v12, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3085
    :goto_377
    add-int/lit8 v2, v2, 0x1

    goto :goto_306

    .line 3106
    :cond_37a
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3108
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3a6

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_390

    goto :goto_3a6

    .line 3117
    :cond_390
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_394
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3118
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3119
    goto :goto_394

    .line 3111
    :cond_3a6
    :goto_3a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3112
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3113
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3115
    invoke-virtual {v1, v13}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3122
    :cond_3b6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3123
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3124
    goto :goto_3ba

    .line 3130
    :cond_3ce
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3131
    :goto_3d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f5

    .line 3132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3133
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 3134
    if-eqz v3, :cond_3f4

    instance-of v4, v3, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_3f4

    .line 3135
    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    iput-object v3, v2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3137
    :cond_3f4
    goto :goto_3d8

    .line 3139
    :cond_3f5
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read completed successfully: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packages, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 3140
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shared uids\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3144
    const/4 v1, 0x1

    return v1
.end method

.method readPackageRestrictionsLPr(I)V
    .registers 50

    .line 1514
    move-object/from16 v1, p0

    move/from16 v3, p1

    const-string/jumbo v15, "pkg"

    .line 1515
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 1516
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v0

    .line 1517
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v14, "PackageManager"

    const/4 v13, 0x4

    const/4 v12, 0x0

    if-eqz v4, :cond_4d

    .line 1519
    :try_start_19
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_4a

    .line 1520
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1523
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_47} :catch_48

    .line 1533
    :cond_47
    goto :goto_4e

    .line 1531
    :catch_48
    move-exception v0

    goto :goto_4e

    :catch_4a
    move-exception v0

    move-object v4, v12

    goto :goto_4e

    .line 1517
    :cond_4d
    move-object v4, v12

    .line 1537
    :goto_4e
    const-string v11, "Error reading package manager stopped packages"

    const/4 v10, 0x6

    const-string v9, "Error reading: "

    if-nez v4, :cond_d6

    .line 1538
    :try_start_55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 1539
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1547
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_7d} :catch_ce
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_7d} :catch_c5

    .line 1548
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v15, v9

    move v9, v12

    move v13, v10

    move v10, v12

    move-object/from16 v26, v11

    move v11, v12

    const/16 v16, 0x0

    move-object/from16 v13, v16

    move-object/from16 v27, v14

    move-object/from16 v14, v16

    move-object/from16 v28, v15

    move-object/from16 v15, v16

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

    :try_start_aa
    invoke-virtual/range {v2 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    .line 1567
    move/from16 v3, p1

    move-object/from16 v11, v26

    move-object/from16 v14, v27

    move-object/from16 v9, v28

    const/4 v10, 0x6

    goto :goto_71

    .line 1568
    :cond_b7
    return-void

    .line 1570
    :cond_b8
    move-object/from16 v28, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v14

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    goto :goto_dd

    .line 1742
    :catch_c5
    move-exception v0

    move-object/from16 v28, v9

    move-object/from16 v26, v11

    move-object v4, v1

    move-object v6, v14

    goto/16 :goto_4b1

    .line 1735
    :catch_ce
    move-exception v0

    move-object v4, v1

    move-object v3, v9

    move v2, v10

    move-object v1, v11

    move-object v6, v14

    goto/16 :goto_4ef

    .line 1537
    :cond_d6
    move-object/from16 v28, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v14

    move-object v0, v4

    .line 1572
    :goto_dd
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14
    :try_end_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_e1} :catch_4e6
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_e1} :catch_4ad

    .line 1573
    :try_start_e1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1576
    :goto_ea
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e1 .. :try_end_ee} :catch_4a6
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ee} :catch_4ad

    const/4 v11, 0x2

    const/4 v10, 0x1

    if-eq v2, v11, :cond_f5

    if-eq v2, v10, :cond_f5

    goto :goto_ea

    .line 1581
    :cond_f5
    if-eq v2, v11, :cond_105

    .line 1582
    :try_start_f7
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No start tag found in package restrictions file\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    const/4 v0, 0x5

    const-string v2, "No start tag found in package manager stopped packages"

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_104
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f7 .. :try_end_104} :catch_4e6
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_104} :catch_4ad

    .line 1585
    return-void

    .line 1588
    :cond_105
    nop

    .line 1590
    :try_start_106
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 1591
    const/4 v8, 0x0

    move v2, v8

    .line 1592
    :goto_10c
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_110
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_106 .. :try_end_110} :catch_4a6
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_110} :catch_4ad

    if-eq v3, v10, :cond_48f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_125

    .line 1594
    :try_start_115
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5
    :try_end_119
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_115 .. :try_end_119} :catch_4e6
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_119} :catch_4ad

    if-le v5, v9, :cond_11c

    goto :goto_125

    :cond_11c
    move/from16 v5, p1

    move-object v4, v1

    move/from16 v44, v10

    move-object/from16 v6, v27

    goto/16 :goto_496

    .line 1595
    :cond_125
    :goto_125
    if-eq v3, v4, :cond_467

    if-ne v3, v13, :cond_13f

    .line 1597
    move/from16 v5, p1

    move-object v4, v1

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v11

    move-object/from16 v34, v12

    move/from16 v47, v13

    move-object v1, v14

    move-object/from16 v37, v15

    move-object/from16 v6, v27

    goto/16 :goto_47b

    .line 1600
    :cond_13f
    :try_start_13f
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1601
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_147
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13f .. :try_end_147} :catch_4a6
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_147} :catch_4ad

    if-eqz v5, :cond_3bb

    .line 1602
    :try_start_149
    const-string/jumbo v3, "name"

    invoke-interface {v14, v12, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1603
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;
    :try_end_158
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_149 .. :try_end_158} :catch_3af
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_158} :catch_3aa

    .line 1604
    if-nez v5, :cond_191

    .line 1605
    :try_start_15a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package known for stopped package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_16b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15a .. :try_end_16b} :catch_4e6
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_16b} :catch_4ad

    move-object/from16 v7, v27

    :try_start_16d
    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_173
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16d .. :try_end_173} :catch_18c
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_173} :catch_188

    .line 1608
    move/from16 v5, p1

    move-object v4, v1

    move-object v6, v7

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v11

    move-object/from16 v34, v12

    move/from16 v47, v13

    move-object v1, v14

    move-object/from16 v37, v15

    goto/16 :goto_47b

    .line 1742
    :catch_188
    move-exception v0

    move-object v4, v1

    goto/16 :goto_39f

    .line 1735
    :catch_18c
    move-exception v0

    move-object v4, v1

    move-object v6, v7

    goto/16 :goto_4aa

    .line 1611
    :cond_191
    move-object/from16 v7, v27

    :try_start_193
    const-string v6, "ceDataInode"

    move-object/from16 v17, v5

    const-wide/16 v4, 0x0

    invoke-static {v14, v6, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1613
    const-string v6, "inst"

    invoke-static {v14, v6, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 1615
    const-string/jumbo v6, "stopped"

    invoke-static {v14, v6, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v19

    .line 1617
    const-string/jumbo v6, "nl"

    invoke-static {v14, v6, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v20

    .line 1622
    const-string v6, "blocked"

    invoke-interface {v14, v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1623
    if-nez v6, :cond_1bb

    .line 1624
    move v6, v8

    goto :goto_1bf

    :cond_1bb
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1625
    :goto_1bf
    const-string v11, "hidden"

    invoke-interface {v14, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1626
    if-nez v11, :cond_1c8

    .line 1627
    goto :goto_1cc

    :cond_1c8
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_1cc
    move v11, v6

    .line 1629
    const-string v6, "distraction_flags"

    invoke-static {v14, v6, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    .line 1631
    const-string/jumbo v6, "suspended"

    invoke-static {v14, v6, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v23

    .line 1633
    const-string/jumbo v6, "suspending-package"

    invoke-interface {v14, v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1635
    const-string/jumbo v13, "suspend_dialog_message"

    invoke-interface {v14, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_193 .. :try_end_1e8} :catch_3a2
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1e8} :catch_39c

    .line 1637
    if-eqz v23, :cond_1f1

    if-nez v6, :cond_1f1

    .line 1638
    :try_start_1ec
    const-string v6, "android"
    :try_end_1ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ec .. :try_end_1ee} :catch_18c
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ee} :catch_188

    move-object/from16 v25, v6

    goto :goto_1f3

    .line 1641
    :cond_1f1
    move-object/from16 v25, v6

    :goto_1f3
    :try_start_1f3
    const-string v6, "blockUninstall"

    invoke-static {v14, v6, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    .line 1643
    const-string v10, "instant-app"

    invoke-static {v14, v10, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v29

    .line 1645
    const-string/jumbo v10, "virtual-preload"

    invoke-static {v14, v10, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v30

    .line 1647
    const-string v10, "enabled"

    invoke-static {v14, v10, v8}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1649
    const-string v8, "enabledCaller"

    invoke-interface {v14, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1651
    const-string v8, "harmful-app-warning"

    .line 1652
    invoke-interface {v14, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1653
    const-string v8, "domainVerificationStatus"

    const/4 v12, 0x0

    invoke-static {v14, v8, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v35

    .line 1656
    const-string v8, "app-link-generation"

    invoke-static {v14, v8, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1658
    if-le v8, v2, :cond_22a

    .line 1659
    move/from16 v36, v8

    goto :goto_22c

    .line 1658
    :cond_22a
    move/from16 v36, v2

    .line 1661
    :goto_22c
    const-string v2, "install-reason"

    const/4 v12, 0x0

    invoke-static {v14, v2, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v31

    .line 1664
    nop

    .line 1665
    nop

    .line 1666
    nop

    .line 1667
    nop

    .line 1668
    nop

    .line 1670
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 1671
    :goto_246
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_24a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f3 .. :try_end_24a} :catch_3a2
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_24a} :catch_39c

    move-object/from16 v43, v7

    const/4 v7, 0x1

    if-eq v12, v7, :cond_30c

    const/4 v7, 0x3

    if-ne v12, v7, :cond_258

    .line 1673
    :try_start_252
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_30c

    .line 1674
    :cond_258
    const/4 v7, 0x3

    if-eq v12, v7, :cond_303

    const/4 v7, 0x4

    if-ne v12, v7, :cond_262

    .line 1676
    move/from16 v44, v2

    goto/16 :goto_305

    .line 1678
    :cond_262
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v44

    sparse-switch v44, :sswitch_data_520

    :cond_26d
    goto :goto_2a3

    :sswitch_26e
    const-string/jumbo v12, "suspended-dialog-info"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26d

    const/4 v7, 0x4

    goto :goto_2a4

    :sswitch_279
    const-string/jumbo v12, "suspended-launcher-extras"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26d

    const/4 v7, 0x3

    goto :goto_2a4

    :sswitch_284
    const-string/jumbo v12, "suspended-app-extras"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26d

    const/4 v7, 0x2

    goto :goto_2a4

    :sswitch_28f
    const-string v12, "enabled-components"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26d

    const/4 v7, 0x0

    goto :goto_2a4

    :sswitch_299
    const-string v12, "disabled-components"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26d

    const/4 v7, 0x1

    goto :goto_2a4

    :goto_2a3
    const/4 v7, -0x1

    :goto_2a4
    if-eqz v7, :cond_2f5

    const/4 v12, 0x1

    if-eq v7, v12, :cond_2ee

    const/4 v12, 0x2

    if-eq v7, v12, :cond_2e7

    const/4 v12, 0x3

    if-eq v7, v12, :cond_2e0

    const/4 v12, 0x4

    if-eq v7, v12, :cond_2d7

    .line 1695
    const-string v7, "PackageSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v44, v2

    const-string v2, "Unknown tag "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " under tag "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2fc

    .line 1692
    :cond_2d7
    move/from16 v44, v2

    invoke-static {v14}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    .line 1693
    move-object/from16 v37, v2

    goto :goto_2fc

    .line 1689
    :cond_2e0
    move/from16 v44, v2

    invoke-static {v14}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v41

    .line 1690
    goto :goto_2fc

    .line 1686
    :cond_2e7
    move/from16 v44, v2

    invoke-static {v14}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v40

    .line 1687
    goto :goto_2fc

    .line 1683
    :cond_2ee
    move/from16 v44, v2

    invoke-direct {v1, v14}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v39

    .line 1684
    goto :goto_2fc

    .line 1680
    :cond_2f5
    move/from16 v44, v2

    invoke-direct {v1, v14}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v38

    .line 1681
    nop

    .line 1695
    :goto_2fc
    move-object/from16 v7, v43

    move/from16 v2, v44

    const/4 v12, 0x0

    goto/16 :goto_246

    .line 1674
    :cond_303
    move/from16 v44, v2

    .line 1671
    :goto_305
    move-object/from16 v7, v43

    move/from16 v2, v44

    const/4 v12, 0x0

    goto/16 :goto_246

    .line 1699
    :cond_30c
    if-nez v37, :cond_334

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_334

    .line 1700
    new-instance v2, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 1701
    invoke-virtual {v2, v13}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v2

    .line 1702
    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2

    move-object/from16 v37, v2

    goto :goto_334

    .line 1742
    :catch_324
    move-exception v0

    move-object v4, v1

    move-object/from16 v6, v43

    goto/16 :goto_4b1

    .line 1735
    :catch_32a
    move-exception v0

    move-object v4, v1

    move-object/from16 v1, v26

    move-object/from16 v3, v28

    move-object/from16 v6, v43

    goto/16 :goto_4ee

    .line 1705
    :cond_334
    :goto_334
    if-eqz v6, :cond_33d

    .line 1706
    move/from16 v13, p1

    const/4 v12, 0x1

    invoke-virtual {v1, v13, v3, v12}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_33c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_252 .. :try_end_33c} :catch_32a
    .catch Ljava/io/IOException; {:try_start_252 .. :try_end_33c} :catch_324

    goto :goto_340

    .line 1705
    :cond_33d
    move/from16 v13, p1

    const/4 v12, 0x1

    .line 1708
    :goto_340
    move-object/from16 v2, v17

    move/from16 v3, p1

    move v6, v10

    move-object/from16 v10, v43

    move/from16 v7, v18

    move/from16 v27, v8

    const/16 v42, 0x0

    move/from16 v8, v19

    move/from16 v43, v9

    move/from16 v9, v20

    move/from16 v44, v12

    move-object v12, v10

    move v10, v11

    const/16 v45, 0x2

    move/from16 v11, v22

    move-object/from16 v46, v12

    const/16 v16, 0x4

    const/16 v34, 0x0

    move/from16 v12, v23

    move v1, v13

    move/from16 v47, v16

    move-object/from16 v13, v25

    move-object v1, v14

    move-object/from16 v14, v37

    move-object/from16 v37, v15

    move-object/from16 v15, v40

    move-object/from16 v16, v41

    move/from16 v17, v29

    move/from16 v18, v30

    move-object/from16 v19, v32

    move-object/from16 v20, v38

    move-object/from16 v21, v39

    move/from16 v22, v35

    move/from16 v23, v27

    move/from16 v24, v31

    move-object/from16 v25, v33

    :try_start_383
    invoke-virtual/range {v2 .. v25}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_386
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_383 .. :try_end_386} :catch_390
    .catch Ljava/io/IOException; {:try_start_383 .. :try_end_386} :catch_45a

    .line 1714
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v2, v36

    move-object/from16 v6, v46

    goto/16 :goto_442

    .line 1735
    :catch_390
    move-exception v0

    const/4 v2, 0x6

    move-object/from16 v4, p0

    move-object/from16 v1, v26

    move-object/from16 v3, v28

    move-object/from16 v6, v46

    goto/16 :goto_4ef

    .line 1742
    :catch_39c
    move-exception v0

    move-object/from16 v4, p0

    :goto_39f
    move-object v6, v7

    goto/16 :goto_4b1

    .line 1735
    :catch_3a2
    move-exception v0

    const/4 v2, 0x6

    move-object/from16 v4, p0

    move-object v6, v7

    move-object/from16 v1, v26

    goto :goto_3b7

    .line 1742
    :catch_3aa
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_4af

    .line 1735
    :catch_3af
    move-exception v0

    const/4 v2, 0x6

    move-object/from16 v4, p0

    move-object/from16 v1, v26

    move-object/from16 v6, v27

    :goto_3b7
    move-object/from16 v3, v28

    goto/16 :goto_4ef

    .line 1714
    :cond_3bb
    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v11

    move-object/from16 v34, v12

    move/from16 v47, v13

    move-object v1, v14

    move-object/from16 v37, v15

    move-object/from16 v46, v27

    :try_start_3cc
    const-string/jumbo v4, "preferred-activities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3cc .. :try_end_3d3} :catch_461
    .catch Ljava/io/IOException; {:try_start_3cc .. :try_end_3d3} :catch_45a

    if-eqz v4, :cond_3e8

    .line 1715
    move-object/from16 v4, p0

    move/from16 v5, p1

    :try_start_3d9
    invoke-virtual {v4, v1, v5}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3dc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d9 .. :try_end_3dc} :catch_3df
    .catch Ljava/io/IOException; {:try_start_3d9 .. :try_end_3dc} :catch_456

    move-object/from16 v6, v46

    goto :goto_442

    .line 1735
    :catch_3df
    move-exception v0

    move-object/from16 v1, v26

    move-object/from16 v3, v28

    move-object/from16 v6, v46

    goto/16 :goto_4ee

    .line 1716
    :cond_3e8
    move-object/from16 v4, p0

    move/from16 v5, p1

    :try_start_3ec
    const-string/jumbo v6, "persistent-preferred-activities"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3ec .. :try_end_3f3} :catch_458
    .catch Ljava/io/IOException; {:try_start_3ec .. :try_end_3f3} :catch_456

    if-eqz v6, :cond_3fb

    .line 1717
    :try_start_3f5
    invoke-direct {v4, v1, v5}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3f8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f5 .. :try_end_3f8} :catch_3df
    .catch Ljava/io/IOException; {:try_start_3f5 .. :try_end_3f8} :catch_456

    move-object/from16 v6, v46

    goto :goto_442

    .line 1718
    :cond_3fb
    :try_start_3fb
    const-string v6, "crossProfile-intent-filters"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_401
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3fb .. :try_end_401} :catch_458
    .catch Ljava/io/IOException; {:try_start_3fb .. :try_end_401} :catch_456

    if-eqz v6, :cond_409

    .line 1719
    :try_start_403
    invoke-direct {v4, v1, v5}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_406
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_403 .. :try_end_406} :catch_3df
    .catch Ljava/io/IOException; {:try_start_403 .. :try_end_406} :catch_456

    move-object/from16 v6, v46

    goto :goto_442

    .line 1720
    :cond_409
    :try_start_409
    const-string v6, "default-apps"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_40f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_409 .. :try_end_40f} :catch_458
    .catch Ljava/io/IOException; {:try_start_409 .. :try_end_40f} :catch_456

    if-eqz v6, :cond_417

    .line 1721
    :try_start_411
    invoke-virtual {v4, v1, v5}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_414
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_411 .. :try_end_414} :catch_3df
    .catch Ljava/io/IOException; {:try_start_411 .. :try_end_414} :catch_456

    move-object/from16 v6, v46

    goto :goto_442

    .line 1722
    :cond_417
    :try_start_417
    const-string v6, "block-uninstall-packages"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_41d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_417 .. :try_end_41d} :catch_458
    .catch Ljava/io/IOException; {:try_start_417 .. :try_end_41d} :catch_456

    if-eqz v3, :cond_425

    .line 1723
    :try_start_41f
    invoke-virtual {v4, v1, v5}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_422
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41f .. :try_end_422} :catch_3df
    .catch Ljava/io/IOException; {:try_start_41f .. :try_end_422} :catch_456

    move-object/from16 v6, v46

    goto :goto_442

    .line 1725
    :cond_425
    :try_start_425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <stopped-packages>: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_43a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_425 .. :try_end_43a} :catch_458
    .catch Ljava/io/IOException; {:try_start_425 .. :try_end_43a} :catch_456

    .line 1725
    move-object/from16 v6, v46

    :try_start_43c
    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1729
    :goto_442
    move-object v14, v1

    move-object v1, v4

    move-object/from16 v27, v6

    move-object/from16 v12, v34

    move-object/from16 v15, v37

    move/from16 v8, v42

    move/from16 v9, v43

    move/from16 v10, v44

    move/from16 v11, v45

    move/from16 v13, v47

    goto/16 :goto_10c

    .line 1742
    :catch_456
    move-exception v0

    goto :goto_45d

    .line 1735
    :catch_458
    move-exception v0

    goto :goto_464

    .line 1742
    :catch_45a
    move-exception v0

    move-object/from16 v4, p0

    :goto_45d
    move-object/from16 v6, v46

    goto/16 :goto_4b1

    .line 1735
    :catch_461
    move-exception v0

    move-object/from16 v4, p0

    :goto_464
    move-object/from16 v6, v46

    goto :goto_4aa

    .line 1595
    :cond_467
    move/from16 v5, p1

    move-object v4, v1

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v11

    move-object/from16 v34, v12

    move/from16 v47, v13

    move-object v1, v14

    move-object/from16 v37, v15

    move-object/from16 v6, v27

    .line 1592
    :goto_47b
    move-object v14, v1

    move-object v1, v4

    move-object/from16 v27, v6

    move-object/from16 v12, v34

    move-object/from16 v15, v37

    move/from16 v8, v42

    move/from16 v9, v43

    move/from16 v10, v44

    move/from16 v11, v45

    move/from16 v13, v47

    goto/16 :goto_10c

    :cond_48f
    move/from16 v5, p1

    move-object v4, v1

    move/from16 v44, v10

    move-object/from16 v6, v27

    .line 1731
    :goto_496
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1733
    iget-object v0, v4, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43c .. :try_end_4a0} :catch_4a4
    .catch Ljava/io/IOException; {:try_start_43c .. :try_end_4a0} :catch_4a2

    goto/16 :goto_51e

    .line 1742
    :catch_4a2
    move-exception v0

    goto :goto_4b1

    .line 1735
    :catch_4a4
    move-exception v0

    goto :goto_4aa

    :catch_4a6
    move-exception v0

    move-object v4, v1

    move-object/from16 v6, v27

    :goto_4aa
    move-object/from16 v1, v26

    goto :goto_4ec

    .line 1742
    :catch_4ad
    move-exception v0

    move-object v4, v1

    :goto_4af
    move-object/from16 v6, v27

    .line 1743
    :goto_4b1
    iget-object v1, v4, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1745
    move-object/from16 v1, v26

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51f

    .line 1735
    :catch_4e6
    move-exception v0

    move-object v4, v1

    move-object/from16 v1, v26

    move-object/from16 v6, v27

    :goto_4ec
    move-object/from16 v3, v28

    :goto_4ee
    const/4 v2, 0x6

    .line 1736
    :goto_4ef
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1739
    invoke-static {v6, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    :goto_51e
    nop

    .line 1748
    :goto_51f
    return-void

    :sswitch_data_520
    .sparse-switch
        -0x78da70f9 -> :sswitch_299
        -0x75017ede -> :sswitch_28f
        -0x5ee8613f -> :sswitch_284
        -0x54ce12c2 -> :sswitch_279
        0x62ff4521 -> :sswitch_26e
    .end sparse-switch
.end method

.method readPermissionStateForUserSyncLPr(I)V
    .registers 3

    .line 3148
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3149
    return-void
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1354
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1356
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1357
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7f

    .line 1358
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1359
    goto :goto_4

    .line 1362
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1363
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_63

    .line 1364
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1365
    iget-object v3, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v3}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c

    .line 1366
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_62

    .line 1368
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1370
    invoke-virtual {v1}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1373
    :goto_62
    goto :goto_7e

    .line 1374
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <preferred-activities>: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1376
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1378
    :goto_7e
    goto :goto_4

    .line 1379
    :cond_7f
    return-void
.end method

.method readStoppedLPw()V
    .registers 15

    .line 2276
    nop

    .line 2277
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "PackageManager"

    if-eqz v0, :cond_49

    .line 2279
    :try_start_d
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_46

    .line 2280
    :try_start_14
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    const-string v4, "Need to read from backup stopped packages file"

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2283
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_43} :catch_44

    .line 2293
    :cond_43
    goto :goto_4a

    .line 2291
    :catch_44
    move-exception v4

    goto :goto_4a

    :catch_46
    move-exception v0

    move-object v0, v2

    goto :goto_4a

    .line 2277
    :cond_49
    move-object v0, v2

    .line 2297
    :goto_4a
    const-string v4, "Error reading package manager stopped packages"

    const/4 v5, 0x6

    const-string v6, "Error reading: "

    const/4 v7, 0x0

    if-nez v0, :cond_8b

    .line 2298
    :try_start_52
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_84

    .line 2299
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    const-string v0, "No stopped packages file file; assuming all started"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2305
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2306
    invoke-virtual {v1, v7, v7}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2307
    invoke-virtual {v1, v7, v7}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2308
    goto :goto_70

    .line 2309
    :cond_83
    return-void

    .line 2311
    :cond_84
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2313
    :cond_8b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2314
    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2317
    :goto_92
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v9, v10, :cond_9d

    if-eq v9, v11, :cond_9d

    goto :goto_92

    .line 2322
    :cond_9d
    if-eq v9, v10, :cond_ad

    .line 2323
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v1, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    const/4 v0, 0x5

    const-string v1, "No start tag found in package manager stopped packages"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2326
    return-void

    .line 2329
    :cond_ad
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 2330
    :cond_b1
    :goto_b1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v11, :cond_12d

    const/4 v12, 0x3

    if-ne v10, v12, :cond_c0

    .line 2332
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v9, :cond_12d

    .line 2333
    :cond_c0
    if-eq v10, v12, :cond_b1

    if-ne v10, v1, :cond_c5

    .line 2335
    goto :goto_b1

    .line 2338
    :cond_c5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2339
    const-string/jumbo v12, "pkg"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_111

    .line 2340
    const-string/jumbo v10, "name"

    invoke-interface {v8, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2341
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 2342
    if-eqz v12, :cond_f9

    .line 2343
    invoke-virtual {v12, v11, v7}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2344
    const-string v10, "1"

    const-string/jumbo v13, "nl"

    invoke-interface {v8, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 2345
    invoke-virtual {v12, v11, v7}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_10d

    .line 2348
    :cond_f9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package known for stopped package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_10d
    :goto_10d
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2352
    goto :goto_12c

    .line 2353
    :cond_111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <stopped-packages>: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2353
    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2357
    :goto_12c
    goto :goto_b1

    .line 2359
    :cond_12d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_130
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_130} :catch_162
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_130} :catch_131

    goto :goto_192

    .line 2368
    :catch_131
    move-exception v0

    .line 2369
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2371
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_193

    .line 2361
    :catch_162
    move-exception v0

    .line 2362
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading stopped packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2365
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2374
    :goto_192
    nop

    .line 2375
    :goto_193
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2228
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2230
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 2231
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_51

    .line 2232
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 2233
    goto :goto_4

    .line 2235
    :cond_1a
    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2236
    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2238
    const-wide/16 v3, -0x1

    .line 2240
    :try_start_2b
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_30

    .line 2243
    goto :goto_31

    .line 2241
    :catch_30
    move-exception v1

    .line 2245
    :goto_31
    if-eqz v2, :cond_4d

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4d

    .line 2246
    const-class v1, Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v1, v5, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2248
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v1, v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2252
    :cond_4d
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2253
    goto :goto_4

    .line 2254
    :cond_51
    return-void
.end method

.method registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 817
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_c

    .line 819
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->acquireAndRegisterNewAppIdLPw(Lcom/android/server/pm/SettingBase;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 820
    const/4 v0, 0x1

    goto :goto_14

    .line 823
    :cond_c
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->registerExistingAppIdLPw(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result v0

    .line 825
    :goto_14
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v1, :cond_19

    .line 831
    return v0

    .line 826
    :cond_19
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be assigned a valid UID"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 828
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method removeAppIdLPw(I)V
    .registers 5

    .line 1100
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_15

    .line 1101
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1102
    add-int/lit16 v1, p1, -0x2710

    .line 1103
    if-ge v1, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_14
    goto :goto_1a

    .line 1105
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherAppIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1107
    :goto_1a
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1108
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .registers 12

    .line 4102
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4104
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 4105
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4109
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4110
    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_5a

    .line 4111
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 4112
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4113
    nop

    .line 4114
    new-instance v6, Landroid/util/ArraySet;

    .line 4115
    invoke-virtual {v5}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4116
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4117
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_51

    .line 4118
    nop

    .line 4119
    invoke-virtual {v5, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    const/4 v7, 0x1

    .line 4121
    :cond_51
    goto :goto_3a

    .line 4122
    :cond_52
    if-eqz v7, :cond_57

    .line 4123
    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4110
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 4126
    :cond_5a
    monitor-exit v0

    .line 4127
    return-void

    .line 4126
    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .registers 3

    .line 1271
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_d
    return-object p1
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z
    .registers 5

    .line 1248
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1249
    if-nez p1, :cond_c

    .line 1253
    const/4 p1, 0x0

    return p1

    .line 1255
    :cond_c
    if-eqz p3, :cond_11

    .line 1256
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1258
    :cond_11
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1259
    const/4 p1, 0x1

    return p1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .registers 8

    .line 1263
    nop

    .line 1264
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v1, v0, :cond_11

    aget v3, p2, v1

    .line 1265
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;IZ)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1264
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1267
    :cond_11
    return v2
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 4

    .line 1014
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1015
    if-eqz v0, :cond_42

    .line 1016
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1018
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_3a

    .line 1019
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1020
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_42

    .line 1021
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1023
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return p1

    .line 1026
    :cond_3a
    iget p1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    .line 1027
    iget p1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return p1

    .line 1030
    :cond_42
    const/4 p1, -0x1

    return p1
.end method

.method removeUserLPw(I)V
    .registers 4

    .line 4081
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4082
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4083
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4084
    goto :goto_a

    .line 4085
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4086
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v0

    .line 4087
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4088
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v0

    .line 4089
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4090
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4092
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4094
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4098
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4099
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 5

    .line 1751
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1752
    if-eqz p3, :cond_1a

    .line 1753
    if-nez v0, :cond_16

    .line 1754
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1755
    iget-object p3, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1757
    :cond_16
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1758
    :cond_1a
    if-eqz v0, :cond_2a

    .line 1759
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1760
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 1761
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1764
    :cond_2a
    :goto_2a
    return-void
.end method

.method setDefaultRuntimePermissionsVersionLPr(II)V
    .registers 4

    .line 1322
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersionLPr(II)V

    .line 1323
    return-void
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 4315
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4316
    if-eqz v0, :cond_16

    .line 4319
    if-nez p2, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p3, p1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4320
    return-void

    .line 4317
    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 428
    if-eqz p1, :cond_14

    .line 429
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 430
    if-eqz p2, :cond_14

    .line 431
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_14
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .registers 9

    .line 4282
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4283
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4284
    if-eqz v1, :cond_63

    .line 4287
    if-nez p4, :cond_42

    iget p2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, p2, :cond_15

    goto :goto_42

    .line 4288
    :cond_15
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4290
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", package uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4300
    :cond_42
    :goto_42
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result p2

    const/4 p4, 0x0

    if-eq p2, p3, :cond_62

    .line 4301
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4303
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 4304
    iget-object p2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz p2, :cond_5d

    .line 4305
    iget-object p2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object p3, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4307
    :cond_5d
    invoke-virtual {v1, p4, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4309
    :cond_60
    const/4 p1, 0x1

    return p1

    .line 4311
    :cond_62
    return p4

    .line 4285
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown package: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V
    .registers 4

    .line 1314
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V

    .line 1315
    return-void
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .registers 7

    .line 1206
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1207
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 1211
    return v0

    .line 1215
    :cond_c
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_1d

    .line 1216
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 1217
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1e

    .line 1219
    :cond_1d
    nop

    .line 1222
    :goto_1e
    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1223
    return v2
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .registers 15

    .line 935
    const/16 v0, -0x2710

    if-eqz p1, :cond_b8

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_a

    goto/16 :goto_b8

    .line 942
    :cond_a
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_f

    .line 943
    return v0

    .line 946
    :cond_f
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 948
    nop

    .line 950
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 951
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 952
    if-nez v5, :cond_30

    .line 953
    goto :goto_1b

    .line 957
    :cond_30
    nop

    .line 958
    iget-object v6, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 959
    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_64

    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 960
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 961
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 962
    nop

    .line 963
    move v6, v9

    goto :goto_66

    .line 965
    :cond_64
    goto :goto_37

    .line 958
    :cond_65
    move v6, v8

    .line 966
    :goto_66
    if-eqz v6, :cond_69

    .line 967
    goto :goto_1b

    .line 970
    :cond_69
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 971
    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 975
    if-eqz v7, :cond_9a

    .line 976
    nop

    .line 977
    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_80
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 978
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 979
    nop

    .line 980
    move v4, v9

    goto :goto_97

    .line 982
    :cond_95
    goto :goto_80

    .line 977
    :cond_96
    move v4, v8

    .line 983
    :goto_97
    if-eqz v4, :cond_9a

    .line 984
    goto :goto_1b

    .line 990
    :cond_9a
    const v4, 0xfbff

    invoke-virtual {v6, v5, p2, v4, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 993
    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v9, :cond_a8

    .line 995
    move v3, v7

    .line 999
    :cond_a8
    invoke-virtual {v6, v5, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    if-ne v4, v9, :cond_b5

    .line 1001
    if-ne v3, v0, :cond_b2

    .line 1002
    move v3, p2

    goto :goto_b5

    .line 1003
    :cond_b2
    if-eq v3, p2, :cond_b5

    .line 1005
    move v3, v7

    .line 1008
    :cond_b5
    :goto_b5
    goto/16 :goto_1b

    .line 1010
    :cond_b7
    return v3

    .line 936
    :cond_b8
    :goto_b8
    const-string p1, "PackageManager"

    const-string p2, "Trying to update info for null package. Just ignoring"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .registers 5

    .line 4273
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4274
    if-eqz v0, :cond_11

    .line 4277
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 4275
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1865
    const-string p2, "all-intent-filter-verifications"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1866
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1867
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_23

    .line 1868
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1869
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    .line 1870
    if-eqz v3, :cond_20

    .line 1871
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1867
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1874
    :cond_23
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1875
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .registers 6

    .line 1303
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 1304
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1303
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1306
    :cond_16
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .registers 3

    .line 1294
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1295
    if-nez v0, :cond_b

    return-void

    .line 1297
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1298
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1299
    goto :goto_f

    .line 1300
    :cond_21
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1932
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 1933
    if-eqz p2, :cond_31

    .line 1934
    const-string v0, "block-uninstall-packages"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1935
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 1936
    const-string v3, "block-uninstall"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1937
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1938
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1935
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1940
    :cond_2e
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1942
    :cond_31
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 9
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

    .line 2214
    if-nez p2, :cond_3

    .line 2215
    return-void

    .line 2217
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2218
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    .line 2219
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2220
    const-string v3, "child-package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2221
    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2222
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2218
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2224
    :cond_22
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1836
    const-string v0, "crossProfile-intent-filters"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1837
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1838
    if-eqz p2, :cond_30

    .line 1839
    invoke-virtual {p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1840
    const-string v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1841
    invoke-virtual {v2, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1842
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1843
    goto :goto_18

    .line 1845
    :cond_30
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1846
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1920
    const-string v0, "default-apps"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1921
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1922
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1923
    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1924
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1925
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1927
    :cond_22
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1928
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2751
    const-string/jumbo v0, "updated-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2752
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2753
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 2754
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2756
    :cond_1b
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2757
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2758
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "it"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2759
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2760
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2761
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 2762
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2764
    :cond_62
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_6e

    .line 2765
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2767
    :cond_6e
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_7a

    .line 2768
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2770
    :cond_7a
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_86

    .line 2771
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2773
    :cond_86
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_91

    .line 2774
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2777
    :cond_91
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_a2

    .line 2778
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ae

    .line 2780
    :cond_a2
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2783
    :goto_ae
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_ba

    .line 2784
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    const-string/jumbo v3, "parentPackageName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2787
    :cond_ba
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2789
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2792
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_d5

    .line 2793
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p2

    .line 2794
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object p2

    .line 2793
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2797
    :cond_d5
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2798
    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1851
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1852
    const-string v0, "domain-verification"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1853
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1858
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1860
    :cond_14
    return-void
.end method

.method writeKernelMappingLPr()V
    .registers 7

    .line 2544
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2546
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2547
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2548
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_1c

    aget-object v5, v0, v4

    .line 2549
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2548
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2552
    :cond_1c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2554
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2555
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2556
    goto :goto_26

    .line 2559
    :cond_3b
    nop

    :goto_3c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_5a

    .line 2560
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2563
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2564
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2559
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 2566
    :cond_5a
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 4

    .line 2569
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_17

    .line 2571
    :cond_b
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    .line 2572
    return-void

    .line 2569
    :cond_17
    :goto_17
    return-void
.end method

.method writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .registers 10

    .line 2575
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2576
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    .line 2577
    :goto_f
    if-nez v3, :cond_1c

    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2578
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_1c

    :cond_1a
    move v1, v2

    goto :goto_1d

    :cond_1c
    :goto_1c
    nop

    .line 2581
    :goto_1d
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2583
    if-eqz v3, :cond_34

    .line 2584
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2586
    new-instance v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    .line 2587
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2591
    :cond_34
    iget p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq p1, p2, :cond_42

    .line 2592
    new-instance p1, Ljava/io/File;

    const-string v3, "appid"

    invoke-direct {p1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2593
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2597
    :cond_42
    if-eqz v1, :cond_8c

    .line 2599
    move p1, v2

    :goto_45
    array-length p2, p3

    if-ge p1, p2, :cond_65

    .line 2600
    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p2, :cond_56

    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v1, p3, p1

    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p2

    if-nez p2, :cond_62

    .line 2602
    :cond_56
    new-instance p2, Ljava/io/File;

    const-string v1, "excluded_userids"

    invoke-direct {p2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v1, p3, p1

    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2599
    :cond_62
    add-int/lit8 p1, p1, 0x1

    goto :goto_45

    .line 2608
    :cond_65
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p1, :cond_8a

    .line 2609
    nop

    :goto_6a
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length p1, p1

    if-ge v2, p1, :cond_8a

    .line 2610
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget p1, p1, v2

    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_87

    .line 2611
    new-instance p1, Ljava/io/File;

    const-string p2, "clear_userid"

    invoke-direct {p1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget p2, p2, v2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2609
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 2619
    :cond_8a
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2621
    :cond_8c
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2897
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2898
    const-string v1, "defined-keyset"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2899
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "alias"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2900
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "identifier"

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2901
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2902
    goto :goto_c

    .line 2903
    :cond_40
    return-void
.end method

.method writeLPr()V
    .registers 22

    .line 2380
    move-object/from16 v1, p0

    const-string/jumbo v0, "renamed-package"

    const-string/jumbo v2, "restored-ivi"

    const-string/jumbo v3, "shared-user"

    const-string/jumbo v4, "permissions"

    const-string/jumbo v5, "version"

    const-string/jumbo v6, "read-external-storage"

    const-string/jumbo v7, "permission-trees"

    const-string/jumbo v8, "verifier"

    const-string/jumbo v9, "packages"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2384
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    const-string v13, "PackageManager"

    if-eqz v12, :cond_4d

    .line 2389
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_43

    .line 2390
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_4d

    .line 2391
    const-string v0, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    return-void

    .line 2397
    :cond_43
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 2398
    const-string v12, "Preserving older settings backup"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_4d
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2405
    :try_start_52
    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2406
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2409
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2410
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_65} :catch_235

    move-object/from16 v17, v13

    :try_start_67
    invoke-virtual/range {v16 .. v16}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2411
    const/4 v13, 0x1

    move-wide/from16 v18, v10

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2412
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v15, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2414
    invoke-interface {v15, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2416
    const/4 v13, 0x0

    :goto_82
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v13, v10, :cond_c6

    .line 2417
    iget-object v10, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2418
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2420
    move-object/from16 v20, v12

    const/4 v12, 0x0

    invoke-interface {v15, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2421
    const-string/jumbo v12, "volumeUuid"

    invoke-static {v15, v12, v10}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2422
    const-string/jumbo v10, "sdkVersion"

    iget v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v15, v10, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2423
    const-string v10, "databaseVersion"

    iget v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v15, v10, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2424
    const-string v10, "fingerprint"

    iget-object v11, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v15, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2425
    const/4 v10, 0x0

    invoke-interface {v15, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2416
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, v20

    const/4 v11, 0x0

    goto :goto_82

    .line 2428
    :cond_c6
    move-object/from16 v20, v12

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v5, :cond_df

    .line 2429
    const/4 v5, 0x0

    invoke-interface {v15, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2430
    const-string v5, "device"

    iget-object v10, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v10}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v15, v11, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2431
    invoke-interface {v15, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2434
    :cond_df
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v5, :cond_fd

    .line 2435
    const/4 v5, 0x0

    invoke-interface {v15, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2436
    const-string v5, "enforcement"

    .line 2437
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f4

    const-string v8, "1"

    goto :goto_f6

    :cond_f4
    const-string v8, "0"

    .line 2436
    :goto_f6
    const/4 v10, 0x0

    invoke-interface {v15, v10, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2438
    invoke-interface {v15, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    :cond_fd
    const/4 v5, 0x0

    invoke-interface {v15, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2442
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2443
    const/4 v5, 0x0

    invoke-interface {v15, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2445
    invoke-interface {v15, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2446
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v15}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2447
    const/4 v5, 0x0

    invoke-interface {v15, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2449
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_120
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_130

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2450
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2451
    goto :goto_120

    .line 2453
    :cond_130
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2454
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2455
    goto :goto_13a

    .line 2457
    :cond_14a
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_154
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_193

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 2458
    const/4 v6, 0x0

    invoke-interface {v15, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2459
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v15, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2460
    const-string/jumbo v6, "userId"

    iget v7, v5, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 2461
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2460
    const/4 v8, 0x0

    invoke-interface {v15, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v7, "sigs"

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v15, v7, v8}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2463
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 2464
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 2463
    invoke-virtual {v1, v15, v5}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2465
    const/4 v5, 0x0

    invoke-interface {v15, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2466
    goto :goto_154

    .line 2468
    :cond_193
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_1d3

    .line 2469
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2470
    const/4 v5, 0x0

    invoke-interface {v15, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2471
    const-string/jumbo v5, "new"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v15, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    const-string/jumbo v5, "old"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v15, v6, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    invoke-interface {v15, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2474
    goto :goto_1a5

    .line 2477
    :cond_1d3
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2478
    if-lez v0, :cond_1f4

    .line 2482
    const/4 v3, 0x0

    invoke-interface {v15, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    const/4 v3, 0x0

    :goto_1e0
    if-ge v3, v0, :cond_1f0

    .line 2484
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2485
    invoke-virtual {v1, v15, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2483
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e0

    .line 2487
    :cond_1f0
    const/4 v0, 0x0

    invoke-interface {v15, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2494
    :cond_1f4
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2496
    const/4 v0, 0x0

    invoke-interface {v15, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2498
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2500
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2501
    invoke-static/range {v20 .. v20}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2502
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 2506
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2507
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2512
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2513
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2514
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2516
    const-string/jumbo v0, "package"

    .line 2517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v18

    .line 2516
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_232} :catch_233

    .line 2518
    return-void

    .line 2520
    :catch_233
    move-exception v0

    goto :goto_238

    :catch_235
    move-exception v0

    move-object/from16 v17, v13

    .line 2521
    :goto_238
    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v3, v17

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2525
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_265

    .line 2526
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_265

    .line 2527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    :cond_265
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2802
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2803
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2804
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 2805
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    const-string/jumbo v3, "realName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2807
    :cond_1b
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v3, "codePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2808
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 2809
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const-string/jumbo v3, "resourcePath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2812
    :cond_34
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 2813
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    const-string/jumbo v3, "nativeLibraryPath"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2815
    :cond_40
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 2816
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "primaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2818
    :cond_4c
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v2, :cond_58

    .line 2819
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v3, "secondaryCpuAbi"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2821
    :cond_58
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_63

    .line 2822
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    const-string v3, "cpuAbiOverride"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2825
    :cond_63
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "publicFlags"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2826
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "privateFlags"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2827
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2828
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "it"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2829
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ut"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2830
    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2831
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_ba

    .line 2832
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c6

    .line 2834
    :cond_ba
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sharedUserId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2836
    :goto_c6
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    const-string/jumbo v3, "true"

    if-eqz v2, :cond_d3

    .line 2837
    const-string/jumbo v2, "uidError"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2839
    :cond_d3
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_de

    .line 2840
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string v4, "installer"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2842
    :cond_de
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    if-eqz v2, :cond_e7

    .line 2843
    const-string v2, "isOrphaned"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2845
    :cond_e7
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v2, :cond_f3

    .line 2846
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v4, "volumeUuid"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2848
    :cond_f3
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_103

    .line 2849
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 2850
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2849
    const-string v4, "categoryHint"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2852
    :cond_103
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_10f

    .line 2853
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    const-string/jumbo v4, "parentPackageName"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2855
    :cond_10f
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v2, :cond_119

    .line 2856
    const-string/jumbo v2, "updateAvailable"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2859
    :cond_119
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2861
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2863
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    const-string/jumbo v4, "sigs"

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2865
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2866
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 2865
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2868
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2869
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2870
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2871
    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2873
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2874
    return-void
.end method

.method writePackageListLPr()V
    .registers 2

    .line 2633
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2634
    return-void
.end method

.method writePackageListLPr(I)V
    .registers 6

    .line 2637
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2638
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2639
    const-string v1, "PackageSettings"

    if-nez v0, :cond_28

    .line 2640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get SELinux context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 2641
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2640
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_28
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2645
    const-string v0, "Failed to set packages.list SELinux context"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :cond_33
    const/4 v0, 0x0

    :try_start_34
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3c

    .line 2650
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 2651
    nop

    .line 2652
    return-void

    .line 2650
    :catchall_3c
    move-exception p1

    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    throw p1
.end method

.method writePackageRestrictionsLPr(I)V
    .registers 27

    .line 1948
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

    .line 1952
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v13

    .line 1953
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 1954
    new-instance v0, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1955
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v15, "PackageManager"

    if-eqz v0, :cond_54

    .line 1960
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1961
    invoke-virtual {v13, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1962
    const-string v0, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    return-void

    .line 1968
    :cond_4c
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 1969
    const-string v0, "Preserving older stopped packages backup"

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_54
    move-object/from16 v16, v15

    :try_start_56
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1975
    move-wide/from16 v17, v11

    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1977
    new-instance v12, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v12}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1978
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_70} :catch_2b2

    .line 1979
    move-object/from16 v19, v13

    const/4 v13, 0x1

    :try_start_73
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v13, 0x0

    invoke-interface {v12, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1980
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1982
    const/4 v13, 0x0

    invoke-interface {v12, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1984
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_93} :catch_2b0

    if-eqz v0, :cond_25f

    :try_start_95
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v13

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 1985
    move-object/from16 v21, v14

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v14

    .line 1988
    move-object/from16 v22, v15

    const/4 v15, 0x0

    invoke-interface {v12, v15, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1989
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v12, v15, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1990
    iget-wide v0, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v23, 0x0

    cmp-long v0, v0, v23

    if-eqz v0, :cond_be

    .line 1991
    const-string v0, "ceDataInode"

    iget-wide v1, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v12, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1993
    :cond_be
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v0, :cond_ca

    .line 1994
    const-string v0, "inst"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1996
    :cond_ca
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->stopped:Z
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_cc} :catch_25b

    const-string/jumbo v1, "true"

    if-eqz v0, :cond_d8

    .line 1997
    :try_start_d1
    const-string/jumbo v0, "stopped"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    :cond_d8
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v0, :cond_e3

    .line 2000
    const-string/jumbo v0, "nl"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    :cond_e3
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_ed

    .line 2003
    const-string v0, "hidden"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2005
    :cond_ed
    iget v0, v14, Landroid/content/pm/PackageUserState;->distractionFlags:I

    if-eqz v0, :cond_fd

    .line 2006
    const-string v0, "distraction_flags"

    iget v2, v14, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 2007
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2006
    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2009
    :cond_fd
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_188

    .line 2010
    const-string/jumbo v0, "suspended"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2011
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    if-eqz v0, :cond_115

    .line 2012
    const-string/jumbo v0, "suspending-package"

    iget-object v2, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v12, v15, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2015
    :cond_115
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_126

    .line 2016
    const/4 v2, 0x0

    invoke-interface {v12, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0, v12}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2018
    const/4 v2, 0x0

    invoke-interface {v12, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2020
    :cond_126
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_128} :catch_25b

    const-string v2, "PackageSettings"

    if-eqz v0, :cond_159

    .line 2021
    const/4 v15, 0x0

    :try_start_12d
    invoke-interface {v12, v15, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_25b

    .line 2023
    :try_start_130
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_135
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_130 .. :try_end_135} :catch_138
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_135} :catch_25b

    .line 2027
    move-object/from16 v23, v7

    goto :goto_154

    .line 2024
    :catch_138
    move-exception v0

    .line 2025
    :try_start_139
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    const-string v7, "Exception while trying to write suspendedAppExtras for "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ". Will be lost on reboot"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2028
    :goto_154
    const/4 v7, 0x0

    invoke-interface {v12, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_15b

    .line 2020
    :cond_159
    move-object/from16 v23, v7

    .line 2030
    :goto_15b
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_18a

    .line 2031
    const/4 v7, 0x0

    invoke-interface {v12, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_163} :catch_25b

    .line 2033
    :try_start_163
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_168
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_163 .. :try_end_168} :catch_169
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_168} :catch_25b

    .line 2037
    goto :goto_183

    .line 2034
    :catch_169
    move-exception v0

    .line 2035
    :try_start_16a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedLauncherExtras for "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ". Will be lost on reboot"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2038
    :goto_183
    const/4 v2, 0x0

    invoke-interface {v12, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_18a

    .line 2009
    :cond_188
    move-object/from16 v23, v7

    .line 2041
    :cond_18a
    :goto_18a
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_194

    .line 2042
    const-string v0, "instant-app"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2044
    :cond_194
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_19f

    .line 2045
    const-string/jumbo v0, "virtual-preload"

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2047
    :cond_19f
    iget v0, v14, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v0, :cond_1bb

    .line 2048
    const-string v0, "enabled"

    iget v1, v14, Landroid/content/pm/PackageUserState;->enabled:I

    .line 2049
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2048
    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2050
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v0, :cond_1bb

    .line 2051
    const-string v0, "enabledCaller"

    iget-object v1, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2055
    :cond_1bb
    iget v0, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v0, :cond_1c6

    .line 2057
    const-string v0, "domainVerificationStatus"

    iget v1, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v12, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2060
    :cond_1c6
    iget v0, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v0, :cond_1d1

    .line 2061
    const-string v0, "app-link-generation"

    iget v1, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v12, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2064
    :cond_1d1
    iget v0, v14, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v0, :cond_1e1

    .line 2065
    const-string v0, "install-reason"

    iget v1, v14, Landroid/content/pm/PackageUserState;->installReason:I

    .line 2066
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2065
    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2068
    :cond_1e1
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v0, :cond_1ed

    .line 2069
    const-string v0, "harmful-app-warning"

    iget-object v1, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v12, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2072
    :cond_1ed
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_1f3} :catch_25b

    const-string v1, "item"

    if-nez v0, :cond_21c

    .line 2073
    const/4 v2, 0x0

    :try_start_1f8
    invoke-interface {v12, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2074
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_201
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_218

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2075
    const/4 v7, 0x0

    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2076
    invoke-interface {v12, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2077
    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2078
    goto :goto_201

    .line 2079
    :cond_218
    const/4 v2, 0x0

    invoke-interface {v12, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2081
    :cond_21c
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_249

    .line 2082
    const/4 v2, 0x0

    invoke-interface {v12, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2083
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_245

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2084
    const/4 v7, 0x0

    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2085
    invoke-interface {v12, v7, v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2086
    invoke-interface {v12, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2087
    goto :goto_22e

    .line 2088
    :cond_245
    const/4 v1, 0x0

    invoke-interface {v12, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2091
    :cond_249
    const/4 v1, 0x0

    invoke-interface {v12, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_24d
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_24d} :catch_25b

    .line 2092
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v7, v23

    goto/16 :goto_8f

    .line 2121
    :catch_25b
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2b5

    .line 2094
    :cond_25f
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    :try_start_268
    invoke-virtual {v1, v12, v2, v3}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2095
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2096
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2097
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2098
    invoke-virtual {v1, v12, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2100
    const/4 v3, 0x0

    invoke-interface {v12, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2102
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2104
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2105
    invoke-static/range {v22 .. v22}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2106
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 2110
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 2111
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    .line 2116
    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_2af} :catch_2b0

    .line 2120
    return-void

    .line 2121
    :catch_2b0
    move-exception v0

    goto :goto_2b5

    :catch_2b2
    move-exception v0

    move-object/from16 v19, v13

    .line 2122
    :goto_2b5
    const-string v2, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v3, v16

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2128
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2de

    .line 2129
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2de

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clean up mangled file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_2de
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2906
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2907
    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 9
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

    .line 2195
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2196
    return-void

    .line 2199
    :cond_7
    const-string/jumbo v0, "perms"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2201
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2202
    const-string v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2203
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2204
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "granted"

    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "flags"

    invoke-interface {p1, v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2206
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2207
    goto :goto_12

    .line 2209
    :cond_4b
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2210
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1822
    const-string/jumbo v0, "persistent-preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1823
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1824
    if-eqz p2, :cond_31

    .line 1825
    invoke-virtual {p2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1826
    const-string v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1827
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1828
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1829
    goto :goto_19

    .line 1831
    :cond_31
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1832
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    const-string/jumbo v0, "preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1809
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1810
    if-eqz p2, :cond_31

    .line 1811
    invoke-virtual {p2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredActivity;

    .line 1812
    const-string v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1813
    invoke-virtual {v2, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1814
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1815
    goto :goto_19

    .line 1817
    :cond_31
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1818
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .registers 3

    .line 5102
    if-eqz p2, :cond_8

    .line 5103
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_d

    .line 5105
    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5107
    :goto_d
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2878
    const-string/jumbo v0, "proper-signing-keyset"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2879
    nop

    .line 2880
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 2879
    const-string v2, "identifier"

    invoke-interface {p1, v1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2881
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2882
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2886
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2887
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_26

    aget-wide v2, p2, v1

    .line 2888
    const-string/jumbo v4, "upgrade-keyset"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2889
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifier"

    invoke-interface {p1, v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2890
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2887
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2893
    :cond_26
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 7

    .line 840
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_9

    .line 841
    return-void

    .line 844
    :cond_9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 845
    if-nez v0, :cond_14

    .line 846
    return-void

    .line 848
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 849
    if-nez p2, :cond_29

    .line 850
    sget-object v2, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_2f

    .line 851
    :cond_29
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 852
    :goto_2f
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 853
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 855
    :cond_40
    goto :goto_18

    .line 856
    :cond_41
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2258
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

    .line 2262
    :cond_11
    array-length v0, p2

    .line 2263
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_36

    .line 2264
    aget-object v2, p2, v1

    .line 2265
    aget-wide v3, p3, v1

    .line 2266
    const-string/jumbo v5, "uses-static-lib"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2267
    const-string/jumbo v7, "name"

    invoke-interface {p1, v6, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2268
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2269
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2263
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2271
    :cond_36
    return-void

    .line 2260
    :cond_37
    :goto_37
    return-void
.end method
