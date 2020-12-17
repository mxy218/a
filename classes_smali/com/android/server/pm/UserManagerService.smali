.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field static final MAX_MANAGED_PROFILES:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_USER_ID:I = 0x53e2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_USER_ID:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL:Ljava/lang/String; = "lastRequestQuietModeEnabledCall"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x7

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field public static volatile isFlymeParallelSpaceOpen:Z

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation
.end field

.field private final mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGuestRestrictions"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagesLock"
        }
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserRestrictionsListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserStates"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 248
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    .line 4265
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceOpen:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 516
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 517
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"  # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"  # Ljava/lang/Object;

    .line 526
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 527
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"  # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"  # Ljava/lang/Object;
    .param p5, "dataDir"  # Ljava/io/File;

    .line 530
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 238
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 293
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 307
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    .line 345
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 352
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 363
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 369
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 385
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 394
    const-string v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 397
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 446
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    .line 531
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 532
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 533
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 534
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 535
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 536
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_90
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 538
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 540
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 541
    .local v2, "userZeroDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 542
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 545
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v5, "userlist.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 546
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 547
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 548
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 549
    .end local v2  # "userZeroDir":Ljava/io/File;
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_90 .. :try_end_cd} :catchall_eb

    .line 550
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 551
    const-class v1, Landroid/os/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 552
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 553
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 554
    return-void

    .line 549
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # Landroid/content/IntentSender;
    .param p4, "x4"  # Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # Lcom/android/server/pm/UserManagerService$UserData;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/os/Bundle;
    .param p3, "x3"  # Z
    .param p4, "x4"  # I

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/os/Bundle;
    .param p3, "x3"  # Landroid/util/SparseArray;

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # Landroid/content/pm/UserInfo;
    .param p2, "x2"  # Landroid/graphics/Bitmap;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/pm/UserManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # [Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/IBinder;
    .registers 1

    .line 139
    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 7
    .param p1, "profileHandle"  # Landroid/os/UserHandle;
    .param p2, "parentHandle"  # Landroid/os/UserHandle;
    .param p3, "inQuietMode"  # Z

    .line 834
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 835
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_d

    .line 836
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    .line 838
    :cond_d
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    :goto_12
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 842
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 845
    return-void
.end method

.method private checkCreateFlymeParallelSpaceUerPerm()Z
    .registers 3

    .line 4321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 4322
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4321
    :goto_17
    return v0
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .registers 4
    .param p0, "creationFlags"  # I

    .line 1950
    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_22

    .line 1951
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    .line 1952
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1955
    :cond_22
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1959
    :goto_28
    return-void

    .line 1956
    :cond_29
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"  # Ljava/lang/String;

    .line 1937
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1941
    return-void

    .line 1938
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "name"  # Ljava/lang/String;

    .line 1192
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1193
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_38

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1194
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_38

    .line 1197
    :cond_13
    nop

    .line 1198
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1197
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1202
    return-void

    .line 1199
    :cond_21
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1195
    :cond_38
    :goto_38
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"  # Ljava/lang/String;

    .line 1888
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1890
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_33

    if-nez v0, :cond_b

    goto :goto_33

    .line 1895
    :cond_b
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1896
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1898
    return-void

    .line 1901
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1892
    :cond_33
    :goto_33
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"  # Ljava/lang/String;

    .line 1921
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1924
    return-void

    .line 1922
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"  # Ljava/lang/String;

    .line 2001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2002
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 2003
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2005
    :cond_26
    :goto_26
    return-void
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .registers 5
    .param p0, "pkg"  # Ljava/lang/String;
    .param p1, "userId"  # I

    .line 2644
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 2645
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2646
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2647
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2649
    :cond_16
    return-void
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 6
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1522
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1523
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1524
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;

    move-result-object v1

    .line 1525
    .local v1, "global":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1527
    .local v2, "local":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1529
    return-object v0

    .line 1531
    :cond_27
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1532
    .local v3, "effective":Landroid/os/Bundle;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1533
    invoke-static {v3, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1535
    return-object v3
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "parentId"  # I

    .line 2678
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "parentId"  # I
    .param p4, "disallowedPackages"  # [Ljava/lang/String;

    .line 2683
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    .line 2684
    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_b

    .line 2685
    :cond_8
    const-string/jumbo v0, "no_add_user"

    :goto_b
    nop

    .line 2686
    .local v0, "restriction":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add user. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const/4 v1, 0x0

    return-object v1

    .line 2690
    :cond_33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 32
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "parentId"  # I
    .param p4, "disallowedPackages"  # [Ljava/lang/String;

    .line 2695
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2696
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2697
    .local v4, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface {v4}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1e

    .line 2698
    const-string v0, "UserManagerService"

    const-string v6, "Cannot add user. Not enough space on disk."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    return-object v5

    .line 2701
    :cond_1e
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    move v8, v0

    .line 2702
    .local v8, "isGuest":Z
    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    move v9, v0

    .line 2703
    .local v9, "isManagedProfile":Z
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    move v10, v0

    .line 2704
    .local v10, "isRestricted":Z
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    move v11, v0

    .line 2705
    .local v11, "isDemo":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2710
    .local v12, "ident":J
    const/4 v0, 0x0

    .line 2711
    .local v0, "isFlymeParallelSpaceUser":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceUserName(Ljava/lang/String;)Z

    move-result v14

    .line 2712
    .local v14, "userNameCheck":Z
    if-eqz v14, :cond_5c

    .line 2713
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->checkCreateFlymeParallelSpaceUerPerm()Z

    move-result v15

    .line 2715
    .local v15, "callerCheck":Z
    if-eqz v9, :cond_56

    if-nez v8, :cond_56

    if-nez v10, :cond_56

    const/16 v16, 0x1

    goto :goto_58

    :cond_56
    const/16 v16, 0x0

    :goto_58
    move/from16 v0, v16

    move v15, v0

    goto :goto_5d

    .line 2712
    .end local v15  # "callerCheck":Z
    :cond_5c
    move v15, v0

    .line 2719
    .end local v0  # "isFlymeParallelSpaceUser":Z
    .local v15, "isFlymeParallelSpaceUser":Z
    :goto_5d
    :try_start_5d
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_360

    .line 2720
    const/16 v16, 0x0

    .line 2721
    .local v16, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v0, -0x2710

    if-eq v3, v0, :cond_8c

    .line 2722
    :try_start_66
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_7d

    .line 2723
    :try_start_69
    invoke-direct {v1, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v17

    move-object/from16 v16, v17

    .line 2724
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_7a

    .line 2725
    if-nez v16, :cond_77

    :try_start_72
    monitor-exit v7
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_7d

    .line 2852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2725
    return-object v5

    :cond_77
    move-object/from16 v6, v16

    goto :goto_8e

    .line 2724
    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    .end local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v8  # "isGuest":Z
    .end local v9  # "isManagedProfile":Z
    .end local v10  # "isRestricted":Z
    .end local v11  # "isDemo":Z
    .end local v12  # "ident":J
    .end local v14  # "userNameCheck":Z
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "flags":I
    .end local p3  # "parentId":I
    .end local p4  # "disallowedPackages":[Ljava/lang/String;
    :try_start_7c
    throw v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    .line 2824
    .end local v16  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v8  # "isGuest":Z
    .restart local v9  # "isManagedProfile":Z
    .restart local v10  # "isRestricted":Z
    .restart local v11  # "isDemo":Z
    .restart local v12  # "ident":J
    .restart local v14  # "userNameCheck":Z
    .restart local v15  # "isFlymeParallelSpaceUser":Z
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "flags":I
    .restart local p3  # "parentId":I
    .restart local p4  # "disallowedPackages":[Ljava/lang/String;
    :catchall_7d
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v18, v4

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move/from16 v17, v15

    move-object/from16 v12, p4

    goto/16 :goto_358

    .line 2721
    .restart local v16  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_8c
    move-object/from16 v6, v16

    .line 2727
    .end local v16  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v6, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_8e
    if-eqz v9, :cond_c4

    const/4 v0, 0x0

    :try_start_91
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v17

    if-nez v17, :cond_c4

    .line 2728
    const-string v0, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_b5

    move-object/from16 v18, v4

    .end local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v18, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :try_start_a0
    const-string v4, "Cannot add more managed profiles for user "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    monitor-exit v7
    :try_end_b0
    .catchall {:try_start_a0 .. :try_end_b0} :catchall_f4

    .line 2852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2729
    const/4 v0, 0x0

    return-object v0

    .line 2824
    .end local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :catchall_b5
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v5, p1

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move/from16 v17, v15

    move-object/from16 v12, p4

    .end local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    goto/16 :goto_358

    .line 2727
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_c4
    move-object/from16 v18, v4

    .line 2731
    .end local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-nez v8, :cond_df

    if-nez v9, :cond_df

    if-nez v11, :cond_df

    :try_start_cc
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 2734
    const-string v0, "UserManagerService"

    const-string v4, "Cannot add user. Maximum user limit is reached."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    monitor-exit v7
    :try_end_da
    .catchall {:try_start_cc .. :try_end_da} :catchall_f4

    .line 2852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2735
    const/4 v0, 0x0

    return-object v0

    .line 2738
    :cond_df
    if-eqz v8, :cond_101

    :try_start_e1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_101

    .line 2739
    const-string v0, "UserManagerService"

    const-string v4, "Cannot add guest user. Guest user already exists."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    monitor-exit v7
    :try_end_ef
    .catchall {:try_start_e1 .. :try_end_ef} :catchall_f4

    .line 2852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    const/4 v0, 0x0

    return-object v0

    .line 2824
    .end local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_f4
    move-exception v0

    move-object/from16 v5, p1

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move/from16 v17, v15

    move-object/from16 v12, p4

    goto/16 :goto_358

    .line 2743
    .restart local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_101
    if-eqz v10, :cond_118

    :try_start_103
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-nez v0, :cond_118

    if-eqz v3, :cond_118

    .line 2745
    const-string v0, "UserManagerService"

    const-string v4, "Cannot add restricted profile - parent user must be owner"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    monitor-exit v7
    :try_end_113
    .catchall {:try_start_103 .. :try_end_113} :catchall_f4

    .line 2852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2746
    const/4 v0, 0x0

    return-object v0

    .line 2748
    :cond_118
    if-eqz v10, :cond_153

    :try_start_11a
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_153

    .line 2749
    if-nez v6, :cond_12f

    .line 2750
    const-string v0, "UserManagerService"

    const-string v4, "Cannot add restricted profile - parent user must be specified"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    monitor-exit v7
    :try_end_12a
    .catchall {:try_start_11a .. :try_end_12a} :catchall_f4

    .line 2852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2752
    const/4 v0, 0x0

    return-object v0

    .line 2754
    :cond_12f
    :try_start_12f
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-nez v0, :cond_153

    .line 2755
    const-string v0, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    monitor-exit v7
    :try_end_14e
    .catchall {:try_start_12f .. :try_end_14e} :catchall_f4

    .line 2852
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2757
    const/4 v0, 0x0

    return-object v0

    .line 2762
    :cond_153
    :try_start_153
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0
    :try_end_157
    .catchall {:try_start_153 .. :try_end_157} :catchall_34d

    if-eqz v0, :cond_181

    if-nez v8, :cond_181

    if-nez v9, :cond_181

    .line 2763
    :try_start_15d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_161
    .catchall {:try_start_15d .. :try_end_161} :catchall_f4

    if-nez v0, :cond_181

    .line 2764
    or-int/lit8 v2, v2, 0x1

    .line 2765
    .end local p2  # "flags":I
    .local v2, "flags":I
    :try_start_165
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_168
    .catchall {:try_start_165 .. :try_end_168} :catchall_174

    .line 2766
    :try_start_168
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v0, :cond_16f

    .line 2767
    or-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 2769
    :cond_16f
    monitor-exit v4

    goto :goto_181

    :catchall_171
    move-exception v0

    monitor-exit v4
    :try_end_173
    .catchall {:try_start_168 .. :try_end_173} :catchall_171

    .end local v2  # "flags":I
    .end local v8  # "isGuest":Z
    .end local v9  # "isManagedProfile":Z
    .end local v10  # "isRestricted":Z
    .end local v11  # "isDemo":Z
    .end local v12  # "ident":J
    .end local v14  # "userNameCheck":Z
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p3  # "parentId":I
    .end local p4  # "disallowedPackages":[Ljava/lang/String;
    :try_start_173
    throw v0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_174

    .line 2824
    .end local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2  # "flags":I
    .restart local v8  # "isGuest":Z
    .restart local v9  # "isManagedProfile":Z
    .restart local v10  # "isRestricted":Z
    .restart local v11  # "isDemo":Z
    .restart local v12  # "ident":J
    .restart local v14  # "userNameCheck":Z
    .restart local v15  # "isFlymeParallelSpaceUser":Z
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p3  # "parentId":I
    .restart local p4  # "disallowedPackages":[Ljava/lang/String;
    :catchall_174
    move-exception v0

    move-object/from16 v5, p1

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move/from16 v17, v15

    move-object/from16 v12, p4

    goto/16 :goto_358

    .line 2773
    .restart local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_181
    :goto_181
    if-eqz v15, :cond_187

    .line 2775
    const/16 v0, 0x3e7

    move v4, v0

    .local v0, "userId":I
    goto :goto_18c

    .line 2779
    .end local v0  # "userId":I
    :cond_187
    :try_start_187
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v0

    move v4, v0

    .line 2783
    .local v4, "userId":I
    :goto_18c
    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2784
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110086

    .line 2785
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_19e
    .catchall {:try_start_187 .. :try_end_19e} :catchall_341

    move v5, v0

    .line 2787
    .local v5, "ephemeralGuests":Z
    move/from16 v19, v14

    .end local v14  # "userNameCheck":Z
    .local v19, "userNameCheck":Z
    :try_start_1a1
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_337

    .line 2789
    if-eqz v8, :cond_1a8

    if-nez v5, :cond_1c6

    :cond_1a8
    :try_start_1a8
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z
    :try_end_1aa
    .catchall {:try_start_1a8 .. :try_end_1aa} :catchall_322

    if-nez v0, :cond_1c6

    if-eqz v6, :cond_1c9

    :try_start_1ae
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2790
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_1b4
    .catchall {:try_start_1ae .. :try_end_1b4} :catchall_1b7

    if-eqz v0, :cond_1c9

    goto :goto_1c6

    .line 2806
    :catchall_1b7
    move-exception v0

    move/from16 v20, v2

    move/from16 p2, v5

    move-wide/from16 v25, v12

    move/from16 v17, v15

    move-object/from16 v5, p1

    move-object/from16 v12, p4

    goto/16 :goto_32f

    .line 2791
    :cond_1c6
    :goto_1c6
    or-int/lit16 v0, v2, 0x100

    .end local v2  # "flags":I
    .local v0, "flags":I
    move v2, v0

    .line 2794
    .end local v0  # "flags":I
    .restart local v2  # "flags":I
    :cond_1c9
    :try_start_1c9
    new-instance v0, Landroid/content/pm/UserInfo;
    :try_end_1cb
    .catchall {:try_start_1c9 .. :try_end_1cb} :catchall_314

    move/from16 p2, v5

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v5, p1

    .end local v5  # "ephemeralGuests":Z
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .local v17, "isFlymeParallelSpaceUser":Z
    .local p2, "ephemeralGuests":Z
    :try_start_1d2
    invoke-direct {v0, v4, v5, v15, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v15, v0

    .line 2795
    .local v15, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_1d8
    .catchall {:try_start_1d2 .. :try_end_1d8} :catchall_30c

    move/from16 v20, v2

    .end local v2  # "flags":I
    .local v20, "flags":I
    add-int/lit8 v2, v0, 0x1

    :try_start_1dc
    iput v2, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v0, v15, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21
    :try_end_1e4
    .catchall {:try_start_1dc .. :try_end_1e4} :catchall_306

    .line 2797
    .local v21, "now":J
    const-wide v23, 0xdc46c32800L

    cmp-long v0, v21, v23

    if-lez v0, :cond_1f2

    move-wide/from16 v25, v12

    move-wide/from16 v12, v21

    goto :goto_1f8

    :cond_1f2
    const-wide/16 v23, 0x0

    move-wide/from16 v25, v12

    move-wide/from16 v12, v23

    .end local v12  # "ident":J
    .local v25, "ident":J
    :goto_1f8
    :try_start_1f8
    iput-wide v12, v15, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2798
    const/4 v0, 0x1

    iput-boolean v0, v15, Landroid/content/pm/UserInfo;->partial:Z

    .line 2799
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v2, v15, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2800
    if-eqz v9, :cond_20d

    const/16 v2, -0x2710

    if-eq v3, v2, :cond_20d

    .line 2801
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(I)I

    move-result v2

    iput v2, v15, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2803
    :cond_20d
    new-instance v2, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v2}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2804
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v15, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2805
    iget-object v12, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v12, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2806
    .end local v21  # "now":J
    monitor-exit v14
    :try_end_21a
    .catchall {:try_start_1f8 .. :try_end_21a} :catchall_302

    .line 2807
    :try_start_21a
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2808
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2809
    if-eqz v6, :cond_259

    .line 2810
    if-eqz v9, :cond_23e

    .line 2811
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v13, -0x2710

    if-ne v12, v13, :cond_237

    .line 2812
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v13, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    iput v13, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2813
    invoke-direct {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2815
    :cond_237
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v12, v15, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_259

    .line 2816
    :cond_23e
    if-eqz v10, :cond_259

    .line 2817
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v13, -0x2710

    if-ne v12, v13, :cond_253

    .line 2818
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v13, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    iput v13, v12, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2819
    invoke-direct {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2821
    :cond_253
    iget-object v12, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v12, v15, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2824
    .end local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p2  # "ephemeralGuests":Z
    :cond_259
    :goto_259
    monitor-exit v7
    :try_end_25a
    .catchall {:try_start_21a .. :try_end_25a} :catchall_2fe

    .line 2825
    :try_start_25a
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 2826
    .local v6, "storage":Landroid/os/storage/StorageManager;
    iget v7, v15, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v12

    invoke-virtual {v6, v4, v7, v12}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 2827
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v12, v15, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v13, 0x3

    invoke-virtual {v7, v4, v12, v13}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 2829
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_277
    .catchall {:try_start_25a .. :try_end_277} :catchall_2f9

    move-object/from16 v12, p4

    :try_start_279
    invoke-virtual {v7, v4, v12}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I[Ljava/lang/String;)V

    .line 2830
    const/4 v7, 0x0

    iput-boolean v7, v15, Landroid/content/pm/UserInfo;->partial:Z

    .line 2831
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_282
    .catchall {:try_start_279 .. :try_end_282} :catchall_2f6

    .line 2832
    :try_start_282
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2833
    monitor-exit v7
    :try_end_286
    .catchall {:try_start_282 .. :try_end_286} :catchall_2ef

    .line 2834
    :try_start_286
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2835
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2836
    .local v7, "restrictions":Landroid/os/Bundle;
    if-eqz v8, :cond_29d

    .line 2837
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_293
    .catchall {:try_start_286 .. :try_end_293} :catchall_2f6

    .line 2838
    :try_start_293
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2839
    monitor-exit v13

    goto :goto_29d

    :catchall_29a
    move-exception v0

    monitor-exit v13
    :try_end_29c
    .catchall {:try_start_293 .. :try_end_29c} :catchall_29a

    .end local v8  # "isGuest":Z
    .end local v9  # "isManagedProfile":Z
    .end local v10  # "isRestricted":Z
    .end local v11  # "isDemo":Z
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19  # "userNameCheck":Z
    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p3  # "parentId":I
    .end local p4  # "disallowedPackages":[Ljava/lang/String;
    :try_start_29c
    throw v0

    .line 2841
    .restart local v8  # "isGuest":Z
    .restart local v9  # "isManagedProfile":Z
    .restart local v10  # "isRestricted":Z
    .restart local v11  # "isDemo":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19  # "userNameCheck":Z
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p3  # "parentId":I
    .restart local p4  # "disallowedPackages":[Ljava/lang/String;
    :cond_29d
    :goto_29d
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2a0
    .catchall {:try_start_29c .. :try_end_2a0} :catchall_2f6

    .line 2842
    :try_start_2a0
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v14, v4, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2843
    monitor-exit v13
    :try_end_2a6
    .catchall {:try_start_2a0 .. :try_end_2a6} :catchall_2e8

    .line 2844
    :try_start_2a6
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13, v4}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 2845
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.USER_ADDED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2846
    .local v13, "addedIntent":Landroid/content/Intent;
    const-string v14, "android.intent.extra.user_handle"

    invoke-virtual {v13, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2847
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v16, v2

    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v16, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v14, v13, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2849
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_2ca

    const-string/jumbo v2, "users_guest_created"

    goto :goto_2d3

    .line 2850
    :cond_2ca
    if-eqz v11, :cond_2d0

    const-string/jumbo v2, "users_demo_created"

    goto :goto_2d3

    :cond_2d0
    const-string/jumbo v2, "users_user_created"

    :goto_2d3
    nop

    .line 2849
    const/4 v14, 0x1

    invoke-static {v0, v2, v14}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2d8
    .catchall {:try_start_2a6 .. :try_end_2d8} :catchall_2f6

    .line 2852
    .end local v6  # "storage":Landroid/os/storage/StorageManager;
    .end local v7  # "restrictions":Landroid/os/Bundle;
    .end local v13  # "addedIntent":Landroid/content/Intent;
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2853
    nop

    .line 2855
    if-eqz v17, :cond_2e7

    invoke-static {v4}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v2

    if-eqz v2, :cond_2e7

    .line 2856
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceOpen:Z

    .line 2859
    :cond_2e7
    return-object v15

    .line 2843
    .end local v16  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v6  # "storage":Landroid/os/storage/StorageManager;
    .restart local v7  # "restrictions":Landroid/os/Bundle;
    :catchall_2e8
    move-exception v0

    move-object/from16 v16, v2

    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v16  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_2eb
    :try_start_2eb
    monitor-exit v13
    :try_end_2ec
    .catchall {:try_start_2eb .. :try_end_2ec} :catchall_2ed

    .end local v8  # "isGuest":Z
    .end local v9  # "isManagedProfile":Z
    .end local v10  # "isRestricted":Z
    .end local v11  # "isDemo":Z
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19  # "userNameCheck":Z
    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p3  # "parentId":I
    .end local p4  # "disallowedPackages":[Ljava/lang/String;
    :try_start_2ec
    throw v0
    :try_end_2ed
    .catchall {:try_start_2ec .. :try_end_2ed} :catchall_2f6

    .restart local v8  # "isGuest":Z
    .restart local v9  # "isManagedProfile":Z
    .restart local v10  # "isRestricted":Z
    .restart local v11  # "isDemo":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19  # "userNameCheck":Z
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p3  # "parentId":I
    .restart local p4  # "disallowedPackages":[Ljava/lang/String;
    :catchall_2ed
    move-exception v0

    goto :goto_2eb

    .line 2833
    .end local v7  # "restrictions":Landroid/os/Bundle;
    .end local v16  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_2ef
    move-exception v0

    move-object/from16 v16, v2

    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v16  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_2f2
    :try_start_2f2
    monitor-exit v7
    :try_end_2f3
    .catchall {:try_start_2f2 .. :try_end_2f3} :catchall_2f4

    .end local v8  # "isGuest":Z
    .end local v9  # "isManagedProfile":Z
    .end local v10  # "isRestricted":Z
    .end local v11  # "isDemo":Z
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19  # "userNameCheck":Z
    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p3  # "parentId":I
    .end local p4  # "disallowedPackages":[Ljava/lang/String;
    :try_start_2f3
    throw v0
    :try_end_2f4
    .catchall {:try_start_2f3 .. :try_end_2f4} :catchall_2f6

    .restart local v8  # "isGuest":Z
    .restart local v9  # "isManagedProfile":Z
    .restart local v10  # "isRestricted":Z
    .restart local v11  # "isDemo":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19  # "userNameCheck":Z
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p3  # "parentId":I
    .restart local p4  # "disallowedPackages":[Ljava/lang/String;
    :catchall_2f4
    move-exception v0

    goto :goto_2f2

    .line 2852
    .end local v4  # "userId":I
    .end local v6  # "storage":Landroid/os/storage/StorageManager;
    .end local v15  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_2f6
    move-exception v0

    goto/16 :goto_36f

    :catchall_2f9
    move-exception v0

    move-object/from16 v12, p4

    goto/16 :goto_36f

    .line 2824
    :catchall_2fe
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_332

    .line 2806
    .restart local v4  # "userId":I
    .local v6, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p2  # "ephemeralGuests":Z
    :catchall_302
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_32f

    .end local v25  # "ident":J
    .restart local v12  # "ident":J
    :catchall_306
    move-exception v0

    move-wide/from16 v25, v12

    move-object/from16 v12, p4

    .end local v12  # "ident":J
    .restart local v25  # "ident":J
    goto :goto_32f

    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .local v2, "flags":I
    .restart local v12  # "ident":J
    :catchall_30c
    move-exception v0

    move/from16 v20, v2

    move-wide/from16 v25, v12

    move-object/from16 v12, p4

    .end local v2  # "flags":I
    .end local v12  # "ident":J
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    goto :goto_32f

    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .end local p2  # "ephemeralGuests":Z
    .restart local v2  # "flags":I
    .restart local v5  # "ephemeralGuests":Z
    .restart local v12  # "ident":J
    .local v15, "isFlymeParallelSpaceUser":Z
    :catchall_314
    move-exception v0

    move/from16 v20, v2

    move/from16 p2, v5

    move-wide/from16 v25, v12

    move/from16 v17, v15

    move-object/from16 v5, p1

    move-object/from16 v12, p4

    .end local v2  # "flags":I
    .end local v5  # "ephemeralGuests":Z
    .end local v12  # "ident":J
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    .restart local p2  # "ephemeralGuests":Z
    goto :goto_32f

    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .end local p2  # "ephemeralGuests":Z
    .restart local v2  # "flags":I
    .restart local v5  # "ephemeralGuests":Z
    .restart local v12  # "ident":J
    .restart local v15  # "isFlymeParallelSpaceUser":Z
    :catchall_322
    move-exception v0

    move/from16 p2, v5

    move-wide/from16 v25, v12

    move/from16 v17, v15

    move-object/from16 v5, p1

    move-object/from16 v12, p4

    move/from16 v20, v2

    .end local v2  # "flags":I
    .end local v5  # "ephemeralGuests":Z
    .end local v12  # "ident":J
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    .restart local p2  # "ephemeralGuests":Z
    :goto_32f
    :try_start_32f
    monitor-exit v14
    :try_end_330
    .catchall {:try_start_32f .. :try_end_330} :catchall_335

    .end local v8  # "isGuest":Z
    .end local v9  # "isManagedProfile":Z
    .end local v10  # "isRestricted":Z
    .end local v11  # "isDemo":Z
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19  # "userNameCheck":Z
    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p3  # "parentId":I
    .end local p4  # "disallowedPackages":[Ljava/lang/String;
    :try_start_330
    throw v0
    :try_end_331
    .catchall {:try_start_330 .. :try_end_331} :catchall_331

    .line 2824
    .end local v4  # "userId":I
    .end local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p2  # "ephemeralGuests":Z
    .restart local v8  # "isGuest":Z
    .restart local v9  # "isManagedProfile":Z
    .restart local v10  # "isRestricted":Z
    .restart local v11  # "isDemo":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19  # "userNameCheck":Z
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p3  # "parentId":I
    .restart local p4  # "disallowedPackages":[Ljava/lang/String;
    :catchall_331
    move-exception v0

    :goto_332
    move/from16 v2, v20

    goto :goto_358

    .line 2806
    .restart local v4  # "userId":I
    .restart local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p2  # "ephemeralGuests":Z
    :catchall_335
    move-exception v0

    goto :goto_32f

    .line 2824
    .end local v4  # "userId":I
    .end local v6  # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v20  # "flags":I
    .end local v25  # "ident":J
    .end local p2  # "ephemeralGuests":Z
    .restart local v2  # "flags":I
    .restart local v12  # "ident":J
    .restart local v15  # "isFlymeParallelSpaceUser":Z
    :catchall_337
    move-exception v0

    move-object/from16 v5, p1

    move-wide/from16 v25, v12

    move/from16 v17, v15

    move-object/from16 v12, p4

    .end local v12  # "ident":J
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v25  # "ident":J
    goto :goto_358

    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v19  # "userNameCheck":Z
    .end local v25  # "ident":J
    .restart local v12  # "ident":J
    .restart local v14  # "userNameCheck":Z
    .restart local v15  # "isFlymeParallelSpaceUser":Z
    :catchall_341
    move-exception v0

    move-object/from16 v5, p1

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move/from16 v17, v15

    move-object/from16 v12, p4

    .end local v12  # "ident":J
    .end local v14  # "userNameCheck":Z
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v19  # "userNameCheck":Z
    .restart local v25  # "ident":J
    goto :goto_358

    .end local v2  # "flags":I
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v19  # "userNameCheck":Z
    .end local v25  # "ident":J
    .restart local v12  # "ident":J
    .restart local v14  # "userNameCheck":Z
    .restart local v15  # "isFlymeParallelSpaceUser":Z
    .local p2, "flags":I
    :catchall_34d
    move-exception v0

    move-object/from16 v5, p1

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move/from16 v17, v15

    move-object/from16 v12, p4

    .end local v12  # "ident":J
    .end local v14  # "userNameCheck":Z
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .end local p2  # "flags":I
    .restart local v2  # "flags":I
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v19  # "userNameCheck":Z
    .restart local v25  # "ident":J
    :goto_358
    :try_start_358
    monitor-exit v7
    :try_end_359
    .catchall {:try_start_358 .. :try_end_359} :catchall_35e

    .end local v2  # "flags":I
    .end local v8  # "isGuest":Z
    .end local v9  # "isManagedProfile":Z
    .end local v10  # "isRestricted":Z
    .end local v11  # "isDemo":Z
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19  # "userNameCheck":Z
    .end local v25  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p3  # "parentId":I
    .end local p4  # "disallowedPackages":[Ljava/lang/String;
    :try_start_359
    throw v0
    :try_end_35a
    .catchall {:try_start_359 .. :try_end_35a} :catchall_35a

    .line 2852
    .restart local v2  # "flags":I
    .restart local v8  # "isGuest":Z
    .restart local v9  # "isManagedProfile":Z
    .restart local v10  # "isRestricted":Z
    .restart local v11  # "isDemo":Z
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19  # "userNameCheck":Z
    .restart local v25  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p3  # "parentId":I
    .restart local p4  # "disallowedPackages":[Ljava/lang/String;
    :catchall_35a
    move-exception v0

    move/from16 v20, v2

    goto :goto_36f

    .line 2824
    :catchall_35e
    move-exception v0

    goto :goto_358

    .line 2852
    .end local v2  # "flags":I
    .end local v17  # "isFlymeParallelSpaceUser":Z
    .end local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v19  # "userNameCheck":Z
    .end local v25  # "ident":J
    .local v4, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v12  # "ident":J
    .restart local v14  # "userNameCheck":Z
    .restart local v15  # "isFlymeParallelSpaceUser":Z
    .restart local p2  # "flags":I
    :catchall_360
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v18, v4

    move-wide/from16 v25, v12

    move/from16 v19, v14

    move/from16 v17, v15

    move-object/from16 v12, p4

    move/from16 v20, v2

    .end local v4  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v12  # "ident":J
    .end local v14  # "userNameCheck":Z
    .end local v15  # "isFlymeParallelSpaceUser":Z
    .end local p2  # "flags":I
    .restart local v17  # "isFlymeParallelSpaceUser":Z
    .restart local v18  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19  # "userNameCheck":Z
    .restart local v20  # "flags":I
    .restart local v25  # "ident":J
    :goto_36f
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"  # Ljava/lang/String;

    .line 4193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    return-void
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "sb"  # Ljava/lang/StringBuilder;
    .param p2, "nowTime"  # J
    .param p4, "time"  # J

    .line 3841
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    .line 3842
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 3844
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3845
    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3846
    const-string v0, " ago"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3847
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3849
    :goto_1d
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "startIntent"  # Z

    .line 896
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 897
    return-void

    .line 899
    :cond_7
    if-nez p3, :cond_2f

    .line 903
    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    .line 905
    .local v0, "hasModifyQuietModePermission":Z
    if-eqz v0, :cond_12

    .line 906
    return-void

    .line 909
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 910
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 911
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 912
    .local v1, "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    if-eqz v1, :cond_27

    .line 913
    nop

    .line 914
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v2

    .line 915
    .local v2, "isForegroundLauncher":Z
    if-eqz v2, :cond_27

    .line 916
    return-void

    .line 919
    .end local v2  # "isForegroundLauncher":Z
    :cond_27
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 900
    .end local v0  # "hasModifyQuietModePermission":Z
    .end local v1  # "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    :cond_2f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLP()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagesLock",
            "mRestrictionsLock"
        }
    .end annotation

    .line 2233
    const/16 v0, 0x10

    .line 2236
    .local v0, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2237
    or-int/lit8 v0, v0, 0x3

    .line 2240
    :cond_a
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2241
    .local v1, "system":Landroid/content/pm/UserInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2242
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2243
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2245
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2247
    .local v4, "restrictions":Landroid/os/Bundle;
    :try_start_21
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2249
    .local v5, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v6, v5

    move v7, v3

    :goto_30
    if-ge v7, v6, :cond_41

    aget-object v8, v5, v7

    .line 2250
    .local v8, "userRestriction":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 2251
    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_3e} :catch_42

    .line 2249
    .end local v8  # "userRestriction":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 2256
    .end local v5  # "defaultFirstUserRestrictions":[Ljava/lang/String;
    :cond_41
    goto :goto_4a

    .line 2254
    :catch_42
    move-exception v5

    .line 2255
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UserManagerService"

    const-string v7, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2258
    .end local v5  # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4a
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 2259
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2260
    :try_start_53
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2261
    monitor-exit v5

    goto :goto_5d

    :catchall_5a
    move-exception v3

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5a

    throw v3

    .line 2264
    :cond_5d
    :goto_5d
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2265
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2267
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2268
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2269
    return-void
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 2910
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2911
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2912
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2f

    .line 2913
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2914
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 2915
    monitor-exit v0

    return-object v3

    .line 2912
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2918
    .end local v1  # "size":I
    .end local v2  # "i":I
    :cond_2f
    monitor-exit v0

    .line 2919
    const/4 v0, 0x0

    return-object v0

    .line 2918
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private findMliltiUser()Z
    .registers 6

    .line 4326
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4327
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4328
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_24

    .line 4329
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4330
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4331
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4328
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4334
    .end local v1  # "size":I
    .end local v2  # "i":I
    :cond_24
    monitor-exit v0

    .line 4335
    const/4 v0, 0x0

    return v0

    .line 4334
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, "aliveUserCount":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1869
    .local v1, "totalUserCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_29

    .line 1870
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1871
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_26

    .line 1872
    add-int/lit8 v0, v0, 0x1

    .line 1869
    .end local v3  # "user":Landroid/content/pm/UserInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1875
    .end local v2  # "i":I
    :cond_29
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"  # I

    .line 1547
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1548
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1549
    .local v1, "restrictions":Landroid/os/Bundle;
    if-nez v1, :cond_17

    .line 1550
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 1551
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1553
    :cond_17
    monitor-exit v0

    return-object v1

    .line 1554
    .end local v1  # "restrictions":Landroid/os/Bundle;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1647
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    .line 1648
    :cond_6
    const/4 v0, 0x4

    :goto_7
    nop

    .line 1649
    .local v0, "source":I
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 452
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 453
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    .line 454
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static getMaxManagedProfiles()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4201
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 4202
    return v1

    .line 4204
    :cond_6
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 3

    .line 2272
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104049c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .registers 10
    .param p1, "userId"  # I
    .param p2, "enabledOnly"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 731
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 732
    .local v0, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 733
    .local v1, "result":Landroid/util/IntArray;
    if-nez v0, :cond_12

    .line 735
    return-object v1

    .line 737
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 738
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_53

    .line 739
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 740
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 741
    goto :goto_50

    .line 743
    :cond_2c
    if-eqz p2, :cond_35

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_35

    .line 744
    goto :goto_50

    .line 746
    :cond_35
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 748
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 751
    goto :goto_50

    .line 753
    :cond_46
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_4b

    .line 754
    goto :goto_50

    .line 756
    :cond_4b
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 738
    .end local v4  # "profile":Landroid/content/pm/UserInfo;
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 758
    .end local v3  # "i":I
    :cond_53
    return-object v1
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userHandle"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 814
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 815
    .local v0, "profile":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 816
    return-object v1

    .line 818
    :cond_8
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 819
    .local v2, "parentUserId":I
    if-eq v2, p1, :cond_16

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_11

    goto :goto_16

    .line 822
    :cond_11
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 820
    :cond_16
    :goto_16
    return-object v1
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .registers 10
    .param p1, "userId"  # I
    .param p2, "enabledOnly"  # Z
    .param p3, "fullInfo"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v0

    .line 709
    .local v0, "profileIds":Landroid/util/IntArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 710
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 711
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 712
    .local v3, "profileId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 714
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p3, :cond_30

    .line 715
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v4, v5

    .line 716
    const/4 v5, 0x0

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 717
    iput-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_34

    .line 719
    :cond_30
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 721
    :goto_34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v3  # "profileId":I
    .end local v4  # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 723
    .end local v2  # "i":I
    :cond_3a
    return-object v1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3236
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 3241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3236
    return v2

    .line 3241
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3238
    :catch_1b
    move-exception v2

    .line 3239
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 3241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3239
    return v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1273
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1275
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1276
    const/4 v1, 0x0

    return-object v1

    .line 1278
    :cond_1a
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"  # I

    .line 1297
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object v1

    .line 1299
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1262
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1264
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-object v1

    .line 1268
    :cond_30
    if-eqz v0, :cond_34

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_34
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"  # I

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1288
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return-object v2

    .line 1289
    .end local v1  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .registers 1

    .line 1990
    const-string v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .registers 3
    .param p0, "alternativePermission"  # Ljava/lang/String;

    .line 1977
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1978
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 1980
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1981
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    .line 1978
    :goto_20
    return v1
.end method

.method private static final hasManageUsersPermission()Z
    .registers 2

    .line 1966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1967
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v0, :cond_19

    .line 1969
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    .line 1967
    :goto_1a
    return v1
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "permission"  # Ljava/lang/String;
    .param p1, "uid"  # I

    .line 1906
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private initDefaultGuestRestrictions()V
    .registers 5

    .line 1415
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1416
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1417
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1418
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1419
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1420
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1422
    :cond_2c
    monitor-exit v0

    .line 1423
    return-void

    .line 1422
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1544
    return-void
.end method

.method public static isFlymeParallelSpaceUser(Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p0, "userInfo"  # Landroid/content/pm/UserInfo;

    .line 4307
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4308
    return v0

    .line 4310
    :cond_4
    iget-object v1, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceUserName(Ljava/lang/String;)Z

    move-result v1

    .line 4311
    .local v1, "isNameMatch":Z
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v2

    .line 4312
    .local v2, "isUserIdMatch":Z
    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    .line 4313
    .local v0, "isFlymeParallelSpaceUser":Z
    :cond_15
    return v0
.end method

.method private static isFlymeParallelSpaceUserName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 4317
    const-string v0, "FlymeParallelSpace"

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p0, "user"  # Landroid/content/pm/UserInfo;
    .param p1, "profile"  # Landroid/content/pm/UserInfo;

    .line 827
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .registers 9
    .param p1, "userId"  # I
    .param p2, "otherUserId"  # I

    .line 784
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 786
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_11

    goto :goto_27

    .line 789
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 790
    .local v3, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_25

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v4, :cond_1c

    goto :goto_25

    .line 794
    :cond_1c
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_23

    const/4 v2, 0x1

    :cond_23
    monitor-exit v0

    return v2

    .line 792
    :cond_25
    :goto_25
    monitor-exit v0

    return v2

    .line 787
    .end local v3  # "otherUserInfo":Landroid/content/pm/UserInfo;
    :cond_27
    :goto_27
    monitor-exit v0

    return v2

    .line 795
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private isUserLimitReached()Z
    .registers 3

    .line 1829
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1830
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 1831
    .local v1, "count":I
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 1832
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1831
    .end local v1  # "count":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private logQuietModeEnabled(IZLjava/lang/String;)V
    .registers 12
    .param p1, "userHandle"  # I
    .param p2, "enableQuietMode"  # Z
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 968
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 969
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 970
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_46

    .line 971
    if-nez v1, :cond_b

    .line 972
    return-void

    .line 974
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 975
    .local v2, "now":J
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_20

    .line 976
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    goto :goto_26

    .line 977
    :cond_20
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v4, v2, v4

    :goto_26
    nop

    .line 978
    .local v4, "period":J
    const/16 v0, 0x37

    .line 979
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    .line 980
    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 981
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 982
    invoke-virtual {v0, v4, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 984
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 985
    return-void

    .line 970
    .end local v1  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v2  # "now":J
    .end local v4  # "period":J
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "packageName"  # Ljava/lang/String;

    .line 3600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "newRestrictions"  # Landroid/os/Bundle;
    .param p3, "prevRestrictions"  # Landroid/os/Bundle;

    .line 1752
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1753
    return-void

    .line 1756
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1757
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1759
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1780
    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8
    .param p0, "restrictionsFile"  # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3256
    const-string v0, "UserManagerService"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3257
    .local v1, "restrictions":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3258
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    .line 3259
    return-object v1

    .line 3262
    :cond_17
    const/4 v3, 0x0

    .line 3264
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_18
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v3, v4

    .line 3265
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3266
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3267
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3268
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_51

    .line 3269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read restrictions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3269
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4c} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_4c} :catch_63
    .catchall {:try_start_18 .. :try_end_4c} :catchall_61

    .line 3271
    nop

    .line 3279
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3271
    return-object v1

    .line 3273
    :cond_51
    :goto_51
    :try_start_51
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5c

    .line 3274
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5b} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_5b} :catch_63
    .catchall {:try_start_51 .. :try_end_5b} :catchall_61

    goto :goto_51

    .line 3279
    .end local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5c
    nop

    :goto_5d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3280
    goto :goto_7e

    .line 3279
    :catchall_61
    move-exception v0

    goto :goto_7f

    .line 3276
    :catch_63
    move-exception v4

    .line 3277
    .local v4, "e":Ljava/lang/Exception;
    :try_start_64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_61

    .line 3279
    nop

    .end local v4  # "e":Ljava/lang/Exception;
    goto :goto_5d

    .line 3281
    :goto_7e
    return-object v1

    .line 3279
    :goto_7f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 3247
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3248
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3249
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3250
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3330
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3331
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3332
    .local v1, "outerDepth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3333
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 3335
    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p0, "restrictions"  # Landroid/os/Bundle;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3286
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 3287
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 3288
    const/4 v2, 0x0

    const-string/jumbo v3, "key"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3289
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p2, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3290
    .local v4, "valType":Ljava/lang/String;
    const-string/jumbo v5, "m"

    invoke-interface {p2, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3291
    .local v2, "multiple":Ljava/lang/String;
    if-eqz v2, :cond_66

    .line 3292
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3293
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3294
    .local v5, "count":I
    :cond_32
    :goto_32
    if-lez v5, :cond_59

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_59

    .line 3295
    if-ne v0, v1, :cond_32

    .line 3296
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 3297
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3298
    add-int/lit8 v5, v5, -0x1

    goto :goto_32

    .line 3301
    :cond_59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3302
    .local v1, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3303
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3304
    .end local v1  # "valueStrings":[Ljava/lang/String;
    .end local v5  # "count":I
    goto :goto_d1

    :cond_66
    const-string v1, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 3305
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_d1

    .line 3306
    :cond_76
    const-string v1, "BA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 3307
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3308
    .local v1, "outerDepth":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3309
    .local v5, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_87
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 3310
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    .line 3311
    .local v6, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3312
    .end local v6  # "childBundle":Landroid/os/Bundle;
    goto :goto_87

    .line 3313
    :cond_95
    nop

    .line 3314
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    .line 3313
    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3315
    .end local v1  # "outerDepth":I
    .end local v5  # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto :goto_d1

    .line 3316
    :cond_a6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3317
    .local v1, "value":Ljava/lang/String;
    const-string v5, "b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 3318
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d1

    .line 3319
    :cond_be
    const-string v5, "i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 3320
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d1

    .line 3322
    :cond_ce
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    .end local v1  # "value":Ljava/lang/String;
    .end local v2  # "multiple":Ljava/lang/String;
    .end local v3  # "key":Ljava/lang/String;
    .end local v4  # "valType":Ljava/lang/String;
    :cond_d1
    :goto_d1
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"  # Ljava/lang/String;
    .param p3, "defaultValue"  # I

    .line 2621
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2622
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_8

    return p3

    .line 2624
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 2625
    :catch_d
    move-exception v1

    .line 2626
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"  # Ljava/lang/String;
    .param p3, "defaultValue"  # J

    .line 2631
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2632
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_8

    return-wide p3

    .line 2634
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    .line 2635
    :catch_d
    move-exception v1

    .line 2636
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 10
    .param p1, "id"  # I

    .line 2462
    const-string v0, "Error reading user list"

    const-string v1, "UserManagerService"

    const/4 v2, 0x0

    .line 2464
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2465
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2466
    .local v3, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v2, v4

    .line 2467
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2f} :catch_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_2f} :catch_35
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    .line 2473
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2467
    return-object v0

    .line 2473
    .end local v3  # "userFile":Landroid/util/AtomicFile;
    :catchall_33
    move-exception v0

    goto :goto_46

    .line 2470
    :catch_35
    move-exception v3

    .line 2471
    .local v3, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_36
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    nop

    .end local v3  # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_40

    .line 2468
    :catch_3b
    move-exception v3

    .line 2469
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_33

    .line 2473
    nop

    .end local v3  # "ioe":Ljava/io/IOException;
    :goto_40
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2474
    nop

    .line 2475
    const/4 v0, 0x0

    return-object v0

    .line 2473
    :goto_46
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private readUserListLP()V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2049
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 2050
    return-void

    .line 2052
    :cond_c
    const/4 v0, 0x0

    .line 2053
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2055
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_14
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 2056
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2057
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2059
    :goto_26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v5, :cond_32

    if-eq v4, v6, :cond_32

    goto :goto_26

    .line 2064
    :cond_32
    if-eq v4, v5, :cond_42

    .line 2065
    const-string v3, "UserManagerService"

    const-string v5, "Unable to read user list"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_133
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_3e} :catch_133
    .catchall {:try_start_14 .. :try_end_3e} :catchall_131

    .line 2142
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2067
    return-void

    .line 2070
    :cond_42
    const/4 v3, -0x1

    :try_start_43
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2071
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "users"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_71

    .line 2072
    const-string/jumbo v3, "nextSerialNumber"

    invoke-interface {v2, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2073
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_62

    .line 2074
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2076
    :cond_62
    const-string/jumbo v8, "version"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2077
    .local v8, "versionNumber":Ljava/lang/String;
    if-eqz v8, :cond_71

    .line 2078
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2084
    .end local v3  # "lastSerialNumber":Ljava/lang/String;
    .end local v8  # "versionNumber":Ljava/lang/String;
    :cond_71
    move-object v3, v7

    .line 2086
    .local v3, "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_72
    :goto_72
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-eq v8, v6, :cond_12a

    .line 2087
    if-ne v4, v5, :cond_72

    .line 2088
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2089
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 2090
    const-string/jumbo v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2092
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v10

    .line 2094
    .local v10, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v10, :cond_c9

    .line 2095
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_9c} :catch_133
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_9c} :catch_133
    .catchall {:try_start_43 .. :try_end_9c} :catchall_131

    .line 2096
    :try_start_9c
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2098
    iget-object v12, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v12

    if-eqz v12, :cond_b1

    .line 2100
    sput-boolean v6, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceOpen:Z

    .line 2103
    :cond_b1
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_bd

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v13, :cond_c4

    .line 2105
    :cond_bd
    iget-object v12, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v12, v6

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2107
    :cond_c4
    monitor-exit v11

    goto :goto_c9

    :catchall_c6
    move-exception v5

    monitor-exit v11
    :try_end_c8
    .catchall {:try_start_9c .. :try_end_c8} :catchall_c6

    .end local v0  # "fis":Ljava/io/FileInputStream;
    .end local v1  # "userListFile":Landroid/util/AtomicFile;
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_c8
    throw v5

    .line 2109
    .end local v9  # "id":Ljava/lang/String;
    .end local v10  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v0  # "fis":Ljava/io/FileInputStream;
    .restart local v1  # "userListFile":Landroid/util/AtomicFile;
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :cond_c9
    :goto_c9
    goto :goto_128

    :cond_ca
    const-string v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 2110
    :cond_d2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v6, :cond_128

    const/4 v9, 0x3

    if-eq v4, v9, :cond_128

    .line 2112
    if-ne v4, v5, :cond_d2

    .line 2113
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "restrictions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_128

    .line 2114
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v9
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_ee} :catch_133
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c8 .. :try_end_ee} :catch_133
    .catchall {:try_start_c8 .. :try_end_ee} :catchall_131

    .line 2115
    :try_start_ee
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 2116
    invoke-static {v2, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 2117
    monitor-exit v9

    goto :goto_128

    :catchall_f5
    move-exception v5

    monitor-exit v9
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_f5

    .end local v0  # "fis":Ljava/io/FileInputStream;
    .end local v1  # "userListFile":Landroid/util/AtomicFile;
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_f7
    throw v5

    .line 2122
    .restart local v0  # "fis":Ljava/io/FileInputStream;
    .restart local v1  # "userListFile":Landroid/util/AtomicFile;
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :cond_f8
    const-string v9, "deviceOwnerUserId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_118

    const-string v9, "globalRestrictionOwnerUserId"

    .line 2124
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_109

    goto :goto_118

    .line 2129
    :cond_109
    const-string v9, "device_policy_restrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_127

    .line 2131
    nop

    .line 2132
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v9

    move-object v3, v9

    goto :goto_128

    .line 2125
    :cond_118
    :goto_118
    const-string/jumbo v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2126
    .local v9, "ownerUserId":Ljava/lang/String;
    if-eqz v9, :cond_127

    .line 2127
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2129
    .end local v9  # "ownerUserId":Ljava/lang/String;
    :cond_127
    nop

    .line 2134
    .end local v8  # "name":Ljava/lang/String;
    :cond_128
    :goto_128
    goto/16 :goto_72

    .line 2137
    :cond_12a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2138
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_130} :catch_133
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f7 .. :try_end_130} :catch_133
    .catchall {:try_start_f7 .. :try_end_130} :catchall_131

    .end local v2  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3  # "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v4  # "type":I
    goto :goto_137

    .line 2142
    :catchall_131
    move-exception v2

    goto :goto_13c

    .line 2139
    :catch_133
    move-exception v2

    .line 2140
    .local v2, "e":Ljava/lang/Exception;
    :try_start_134
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_131

    .line 2142
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_137
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2143
    nop

    .line 2144
    return-void

    .line 2142
    :goto_13c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private removeNonSystemUsers()V
    .registers 7

    .line 4159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4160
    .local v0, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4161
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4162
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 4163
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4164
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    .line 4165
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4162
    .end local v4  # "ui":Landroid/content/pm/UserInfo;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4168
    .end local v2  # "userSize":I
    .end local v3  # "i":I
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 4169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4170
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 4171
    .end local v2  # "ui":Landroid/content/pm/UserInfo;
    goto :goto_2a

    .line 4172
    :cond_3c
    return-void

    .line 4168
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private removeUserState(I)V
    .registers 7
    .param p1, "userHandle"  # I

    .line 3127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3132
    goto :goto_2a

    .line 3128
    :catch_e
    move-exception v0

    .line 3130
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying key for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed, continuing anyway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3136
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_2a
    :try_start_2a
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 3137
    .local v0, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v0, :cond_33

    .line 3138
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34

    .line 3142
    .end local v0  # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_33
    goto :goto_3d

    .line 3140
    :catch_34
    move-exception v0

    .line 3141
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "unable to clear GK secure user id"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_3d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 3148
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 3152
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3153
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3154
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3155
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_bb

    .line 3156
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 3157
    :try_start_59
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3158
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_b8

    .line 3159
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3160
    :try_start_62
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3161
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3162
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3163
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3164
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 3165
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3166
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 3168
    :cond_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_b5

    .line 3170
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3171
    :try_start_8a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3172
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_b2

    .line 3174
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3175
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 3176
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3182
    return-void

    .line 3172
    .end local v0  # "userFile":Landroid/util/AtomicFile;
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 3168
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1

    .line 3158
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 3155
    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v1
.end method

.method private removeUserUnchecked(I)Z
    .registers 13
    .param p1, "userHandle"  # I

    .line 2992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2995
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 2996
    .local v2, "currentUser":I
    const/4 v3, 0x0

    if-ne v2, p1, :cond_17

    .line 2997
    const-string v4, "UserManagerService"

    const-string v5, "Current user cannot be removed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_d6

    .line 2998
    nop

    .line 3070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2998
    return v3

    .line 3000
    :cond_17
    :try_start_17
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_d6

    .line 3001
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_d3

    .line 3002
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3003
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez p1, :cond_34

    .line 3004
    const-string v7, "UserManagerService"

    const-string v8, "System user cannot be removed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_d0

    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_d3

    .line 3070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3005
    return v3

    .line 3008
    :cond_34
    const/4 v7, 0x1

    if-nez v6, :cond_50

    .line 3009
    :try_start_37
    const-string v8, "UserManagerService"

    const-string v9, "Cannot remove user %d, invalid user id provided."

    new-array v7, v7, [Ljava/lang/Object;

    .line 3010
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 3009
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_d0

    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_d3

    .line 3070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3011
    return v3

    .line 3014
    :cond_50
    :try_start_50
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 3015
    const-string v8, "UserManagerService"

    const-string v9, "User %d is already scheduled for removal."

    new-array v7, v7, [Ljava/lang/Object;

    .line 3016
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 3015
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_d0

    :try_start_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_d3

    .line 3070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3017
    return v3

    .line 3020
    :cond_71
    :try_start_71
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 3021
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_d0

    .line 3026
    :try_start_75
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v7, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 3029
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 3030
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3031
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_d3

    .line 3033
    :try_start_85
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8a} :catch_8b
    .catchall {:try_start_85 .. :try_end_8a} :catchall_d6

    .line 3036
    goto :goto_93

    .line 3034
    :catch_8b
    move-exception v4

    .line 3035
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_8c
    const-string v5, "UserManagerService"

    const-string v8, "Unable to notify AppOpsService of removing user."

    invoke-static {v5, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3038
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_93
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_ae

    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3039
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 3042
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_ae
    .catchall {:try_start_8c .. :try_end_ae} :catchall_d6

    .line 3048
    :cond_ae
    :try_start_ae
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v5, p0, p1}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-interface {v4, p1, v7, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v4
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_bb} :catch_c3
    .catchall {:try_start_ae .. :try_end_bb} :catchall_d6

    .line 3067
    .local v4, "res":I
    nop

    .line 3068
    if-nez v4, :cond_bf

    move v3, v7

    .line 3070
    :cond_bf
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3068
    return v3

    .line 3064
    .end local v4  # "res":I
    :catch_c3
    move-exception v4

    .line 3065
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_c4
    const-string v5, "UserManagerService"

    const-string v7, "Failed to stop user during removal."

    invoke-static {v5, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_d6

    .line 3066
    nop

    .line 3070
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3066
    return v3

    .line 3021
    .end local v4  # "e":Landroid/os/RemoteException;
    .end local v6  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_d0
    move-exception v3

    :try_start_d1
    monitor-exit v5
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    .end local v0  # "ident":J
    .end local v2  # "currentUser":I
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userHandle":I
    :try_start_d2
    throw v3

    .line 3031
    .restart local v0  # "ident":J
    .restart local v2  # "currentUser":I
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userHandle":I
    :catchall_d3
    move-exception v3

    monitor-exit v4
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d3

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userHandle":I
    :try_start_d5
    throw v3
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d6

    .line 3070
    .end local v2  # "currentUser":I
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userHandle":I
    :catchall_d6
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3715
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3716
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3717
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_12

    .line 3718
    const-string v1, "Error: couldn\'t get users"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    const/4 v1, 0x1

    return v1

    .line 3721
    :cond_12
    const-string v3, "Users:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 3723
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, " running"

    goto :goto_31

    :cond_2f
    const-string v4, ""

    .line 3724
    .local v4, "running":Ljava/lang/String;
    :goto_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    .end local v4  # "running":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3726
    .end local v3  # "i":I
    :cond_55
    return v1
.end method

.method private scanNextAvailableIdLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 3586
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_21

    .line 3588
    invoke-static {v0}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3589
    goto :goto_1e

    .line 3592
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3593
    return v0

    .line 3586
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3596
    .end local v0  # "i":I
    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 6
    .param p1, "UserData"  # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2281
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2282
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2283
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2285
    .end local v0  # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7
    .param p1, "parentUserId"  # I
    .param p2, "removedUserId"  # I

    .line 3185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3186
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3188
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3189
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3190
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3191
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1348
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1349
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1350
    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V
    .registers 11
    .param p1, "userId"  # I
    .param p2, "restrictions"  # Landroid/os/Bundle;
    .param p3, "isDeviceOwner"  # Z
    .param p4, "cameraRestrictionScope"  # I

    .line 1450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1451
    .local v0, "global":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1454
    .local v1, "local":Landroid/os/Bundle;
    invoke-static {p2, p3, p4, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1458
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1460
    :try_start_10
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v3

    .line 1462
    .local v3, "globalChanged":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v4

    .line 1465
    .local v4, "localChanged":Z
    if-eqz p3, :cond_21

    .line 1468
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_29

    .line 1470
    :cond_21
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v5, p1, :cond_29

    .line 1475
    const/16 v5, -0x2710

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 1478
    :cond_29
    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_50

    .line 1486
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1487
    if-nez v4, :cond_31

    if-eqz v3, :cond_38

    .line 1488
    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1490
    :cond_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_4d

    .line 1492
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1493
    if-eqz v3, :cond_44

    .line 1494
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_49

    .line 1498
    :catchall_42
    move-exception v5

    goto :goto_4b

    .line 1495
    :cond_44
    if-eqz v4, :cond_49

    .line 1496
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1498
    :cond_49
    :goto_49
    monitor-exit v2

    .line 1499
    return-void

    .line 1498
    :goto_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_42

    throw v5

    .line 1490
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2

    .line 1478
    .end local v3  # "globalChanged":Z
    .end local v4  # "localChanged":Z
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 11
    .param p1, "userHandle"  # I
    .param p2, "enableQuietMode"  # Z
    .param p3, "target"  # Landroid/content/IntentSender;
    .param p4, "callingPackage"  # Ljava/lang/String;

    .line 927
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 929
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 931
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_85

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 934
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_31

    .line 935
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quiet mode is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    monitor-exit v0

    return-void

    .line 938
    :cond_31
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 939
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 940
    .local v3, "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_a1

    .line 941
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 942
    :try_start_41
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 943
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_82

    .line 945
    const/4 v0, 0x0

    if-eqz p2, :cond_5e

    .line 946
    :try_start_48
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 947
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 948
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_6f

    .line 957
    :catch_5c
    move-exception v0

    goto :goto_73

    .line 950
    :cond_5e
    if-eqz p3, :cond_66

    .line 951
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_67

    .line 952
    :cond_66
    nop

    :goto_67
    nop

    .line 953
    .local v0, "callback":Landroid/os/IProgressListener;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 956
    .end local v0  # "callback":Landroid/os/IProgressListener;
    :goto_6f
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_72} :catch_5c

    .line 960
    goto :goto_76

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    :goto_73
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 961
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_76
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 963
    return-void

    .line 943
    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0

    .line 932
    .end local v3  # "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_85
    :try_start_85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not a profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userHandle":I
    .end local p2  # "enableQuietMode":Z
    .end local p3  # "target":Landroid/content/IntentSender;
    .end local p4  # "callingPackage":Ljava/lang/String;
    throw v3

    .line 940
    .end local v1  # "profile":Landroid/content/pm/UserInfo;
    .end local v2  # "parent":Landroid/content/pm/UserInfo;
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userHandle":I
    .restart local p2  # "enableQuietMode":Z
    .restart local p3  # "target":Landroid/content/IntentSender;
    .restart local p4  # "callingPackage":Ljava/lang/String;
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_85 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .registers 10
    .param p1, "userHandle"  # I
    .param p2, "target"  # Landroid/content/IntentSender;

    .line 1007
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1012
    .local v0, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 1014
    .local v1, "unlockIntent":Landroid/content/Intent;
    if-nez v1, :cond_13

    .line 1015
    return-void

    .line 1017
    :cond_13
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v2, "callBackIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.INTENT"

    if-eqz p2, :cond_21

    .line 1020
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1022
    :cond_21
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1025
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x54000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1034
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1035
    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1036
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1037
    return-void
.end method

.method private updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 6
    .param p1, "userId"  # I
    .param p2, "restrictions"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1508
    .local p3, "restrictionsArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    nop

    .line 1509
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1510
    .local v0, "changed":Z
    if-eqz v0, :cond_1c

    .line 1511
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1512
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    .line 1514
    :cond_19
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1517
    :cond_1c
    :goto_1c
    return v0
.end method

.method private updateUserIds()V
    .registers 9

    .line 3470
    const/4 v0, 0x0

    .line 3471
    .local v0, "num":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3472
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3473
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_20

    .line 3474
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_1d

    .line 3475
    add-int/lit8 v0, v0, 0x1

    .line 3473
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3478
    .end local v3  # "i":I
    :cond_20
    new-array v3, v0, [I

    .line 3479
    .local v3, "newUsers":[I
    const/4 v4, 0x0

    .line 3480
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v2, :cond_42

    .line 3481
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_3f

    .line 3482
    add-int/lit8 v6, v4, 0x1

    .end local v4  # "n":I
    .local v6, "n":I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v3, v4

    move v4, v6

    .line 3480
    .end local v6  # "n":I
    .restart local v4  # "n":I
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 3485
    .end local v5  # "i":I
    :cond_42
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 3486
    .end local v2  # "userSize":I
    .end local v3  # "newUsers":[I
    .end local v4  # "n":I
    monitor-exit v1

    .line 3487
    return-void

    .line 3486
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_46

    throw v2
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "newBaseRestrictions"  # Landroid/os/Bundle;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1701
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 1702
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1701
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1705
    .local v0, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_3c

    .line 1707
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1709
    .local v1, "prevBaseRestrictions":Landroid/os/Bundle;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v3

    :goto_1d
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1710
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1713
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1714
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1718
    .end local v1  # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1720
    .local v1, "effective":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1728
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_53

    .line 1729
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1741
    :cond_53
    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1743
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1744
    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "oldGlobalUserRestrictions"  # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2152
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2153
    .local v0, "originalVersion":I
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2154
    .local v1, "userVersion":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2d

    .line 2156
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2157
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v5, "Primary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2158
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2159
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104049c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2160
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2162
    :cond_2c
    const/4 v1, 0x1

    .line 2165
    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2d
    const/4 v2, 0x2

    if-ge v1, v2, :cond_48

    .line 2167
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2168
    .restart local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_47

    .line 2169
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2170
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2172
    :cond_47
    const/4 v1, 0x2

    .line 2176
    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_48
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4c

    .line 2177
    const/4 v1, 0x4

    .line 2180
    :cond_4c
    const/4 v2, 0x5

    if-ge v1, v2, :cond_53

    .line 2181
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2182
    const/4 v1, 0x5

    .line 2185
    :cond_53
    const/4 v2, 0x6

    const/16 v4, -0x2710

    if-ge v1, v2, :cond_90

    .line 2186
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    .line 2187
    .local v2, "splitSystemUser":Z
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2188
    move v6, v3

    .local v6, "i":I
    :goto_60
    :try_start_60
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8a

    .line 2189
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2191
    .local v7, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v8, v4, :cond_87

    .line 2194
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v3, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2195
    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2188
    .end local v7  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2198
    .end local v6  # "i":I
    :cond_8a
    monitor-exit v5

    .line 2199
    const/4 v1, 0x6

    goto :goto_90

    .line 2198
    :catchall_8d
    move-exception v3

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_60 .. :try_end_8f} :catchall_8d

    throw v3

    .line 2202
    .end local v2  # "splitSystemUser":Z
    :cond_90
    :goto_90
    const/4 v2, 0x7

    if-ge v1, v2, :cond_b6

    .line 2204
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2205
    :try_start_96
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_a7

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v5, v4, :cond_a7

    .line 2207
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2212
    :cond_a7
    const-string v4, "ensure_verify_apps"

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 2215
    monitor-exit v3

    .line 2216
    const/4 v1, 0x7

    goto :goto_b6

    .line 2215
    :catchall_b3
    move-exception v2

    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_96 .. :try_end_b5} :catchall_b3

    throw v2

    .line 2219
    :cond_b6
    :goto_b6
    if-ge v1, v2, :cond_d9

    .line 2220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 2223
    :cond_d9
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2225
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v0, v2, :cond_e2

    .line 2226
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2229
    :cond_e2
    :goto_e2
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "orig"  # Landroid/content/pm/UserInfo;

    .line 1110
    if-eqz p1, :cond_16

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_16

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_16

    .line 1111
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1112
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1113
    return-object v0

    .line 1115
    .end local v0  # "withName":Landroid/content/pm/UserInfo;
    :cond_16
    return-object p1
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callingUid"  # I

    .line 4257
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 4258
    .local v0, "packageUid":I
    if-ne v0, p2, :cond_e

    .line 4262
    return-void

    .line 4259
    :cond_e
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 9
    .param p0, "restrictions"  # Landroid/os/Bundle;
    .param p1, "restrictionsFile"  # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3350
    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    .line 3352
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 3353
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3355
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3356
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3357
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3358
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3360
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3361
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3362
    invoke-interface {v3, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3364
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3365
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    .line 3369
    .end local v2  # "bos":Ljava/io/BufferedOutputStream;
    .end local v3  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_45

    .line 3366
    :catch_3a
    move-exception v0

    .line 3367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3368
    const-string v2, "UserManagerService"

    const-string v3, "Error writing application restrictions list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3370
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "restrictions"  # Landroid/os/Bundle;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 3341
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3342
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3343
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3344
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 3345
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "info"  # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"  # Landroid/graphics/Bitmap;

    .line 2009
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2010
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2011
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2012
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    .line 2013
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2014
    nop

    .line 2015
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 2014
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2020
    :cond_31
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    .local v6, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2021
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2022
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_53} :catch_5d

    .line 2025
    :cond_53
    :try_start_53
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_56} :catch_5d

    .line 2028
    goto :goto_58

    .line 2026
    :catch_57
    move-exception v3

    .line 2029
    :goto_58
    :try_start_58
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_5d

    .line 2032
    nop

    .end local v0  # "dir":Ljava/io/File;
    .end local v1  # "file":Ljava/io/File;
    .end local v2  # "tmp":Ljava/io/File;
    .end local v6  # "os":Ljava/io/FileOutputStream;
    goto :goto_65

    .line 2030
    :catch_5d
    move-exception v0

    .line 2031
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UserManagerService"

    const-string v2, "Error setting photo for user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2033
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    :goto_65
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 14
    .param p0, "restrictions"  # Landroid/os/Bundle;
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3374
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3375
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3376
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "entry"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3377
    const-string/jumbo v5, "key"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3379
    instance-of v5, v2, Ljava/lang/Boolean;

    const-string/jumbo v6, "type"

    if-eqz v5, :cond_39

    .line 3380
    const-string v5, "b"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3381
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_d1

    .line 3382
    :cond_39
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_4b

    .line 3383
    const-string v5, "i"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3384
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_d1

    .line 3385
    :cond_4b
    const-string v5, ""

    if-eqz v2, :cond_c3

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_55

    goto/16 :goto_c3

    .line 3388
    :cond_55
    instance-of v7, v2, Landroid/os/Bundle;

    const-string v8, "B"

    if-eqz v7, :cond_65

    .line 3389
    invoke-interface {p1, v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3390
    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_d1

    .line 3391
    :cond_65
    instance-of v7, v2, [Landroid/os/Parcelable;

    const/4 v9, 0x0

    if-eqz v7, :cond_96

    .line 3392
    const-string v5, "BA"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3393
    move-object v5, v2

    check-cast v5, [Landroid/os/Parcelable;

    .line 3394
    .local v5, "array":[Landroid/os/Parcelable;
    array-length v7, v5

    :goto_73
    if-ge v9, v7, :cond_95

    aget-object v10, v5, v9

    .line 3395
    .local v10, "parcelable":Landroid/os/Parcelable;
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_8d

    .line 3398
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3399
    invoke-interface {p1, v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3400
    move-object v11, v10

    check-cast v11, Landroid/os/Bundle;

    invoke-static {v11, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3401
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3394
    .end local v10  # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    .line 3396
    .restart local v10  # "parcelable":Landroid/os/Parcelable;
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "bundle-array can only hold Bundles"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3403
    .end local v5  # "array":[Landroid/os/Parcelable;
    .end local v10  # "parcelable":Landroid/os/Parcelable;
    :cond_95
    goto :goto_d1

    .line 3404
    :cond_96
    const-string/jumbo v7, "sa"

    invoke-interface {p1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3405
    move-object v6, v2

    check-cast v6, [Ljava/lang/String;

    .line 3406
    .local v6, "values":[Ljava/lang/String;
    array-length v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "m"

    invoke-interface {p1, v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3407
    array-length v7, v6

    :goto_ab
    if-ge v9, v7, :cond_d1

    aget-object v8, v6, v9

    .line 3408
    .local v8, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3409
    if-eqz v8, :cond_b9

    move-object v11, v8

    goto :goto_ba

    :cond_b9
    move-object v11, v5

    :goto_ba
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3410
    invoke-interface {p1, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3407
    .end local v8  # "choice":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_ab

    .line 3386
    .end local v6  # "values":[Ljava/lang/String;
    :cond_c3
    :goto_c3
    const-string/jumbo v7, "s"

    invoke-interface {p1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3387
    if-eqz v2, :cond_ce

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    :cond_ce
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3413
    :cond_d1
    :goto_d1
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3414
    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "value":Ljava/lang/Object;
    goto/16 :goto_8

    .line 3415
    :cond_d6
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 8
    .param p1, "userData"  # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2291
    const/4 v0, 0x0

    .line 2292
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2294
    .local v1, "userFile":Landroid/util/AtomicFile;
    :try_start_22
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2295
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2296
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 2297
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    .line 2301
    .end local v2  # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_51

    .line 2298
    :catch_33
    move-exception v2

    .line 2299
    .local v2, "ioe":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2300
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2302
    .end local v2  # "ioe":Ljava/lang/Exception;
    :goto_51
    return-void
.end method

.method private writeUserListLP()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2412
    const/4 v0, 0x0

    .line 2413
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2415
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_8
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2416
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2419
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2420
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2421
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2422
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2424
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2425
    const-string/jumbo v4, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2426
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2428
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2429
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_54} :catch_cc

    .line 2430
    :try_start_54
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v7, "restrictions"

    .line 2431
    invoke-static {v3, v5, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2432
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_c9

    .line 2433
    :try_start_5d
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2434
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2435
    const-string/jumbo v4, "id"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2436
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2438
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7b} :catch_cc

    .line 2439
    :try_start_7b
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2440
    .local v5, "userIdsToWrite":[I
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_85
    array-length v9, v5

    if-ge v8, v9, :cond_99

    .line 2441
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2442
    .local v9, "user":Landroid/content/pm/UserInfo;
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    aput v10, v5, v8

    .line 2440
    .end local v9  # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_85

    .line 2444
    .end local v8  # "i":I
    :cond_99
    monitor-exit v4
    :try_end_9a
    .catchall {:try_start_7b .. :try_end_9a} :catchall_c6

    .line 2445
    :try_start_9a
    array-length v4, v5

    :goto_9b
    if-ge v7, v4, :cond_b9

    aget v8, v5, v7

    .line 2446
    .local v8, "id":I
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2447
    const-string/jumbo v9, "id"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2448
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2445
    nop

    .end local v8  # "id":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    .line 2451
    :cond_b9
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2453
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2454
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c5} :catch_cc

    .line 2458
    .end local v2  # "bos":Ljava/io/BufferedOutputStream;
    .end local v3  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5  # "userIdsToWrite":[I
    goto :goto_d7

    .line 2444
    .restart local v2  # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_c6
    move-exception v5

    :try_start_c7
    monitor-exit v4
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    .end local v0  # "fos":Ljava/io/FileOutputStream;
    .end local v1  # "userListFile":Landroid/util/AtomicFile;
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_c8
    throw v5
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_c9} :catch_cc

    .line 2432
    .restart local v0  # "fos":Ljava/io/FileOutputStream;
    .restart local v1  # "userListFile":Landroid/util/AtomicFile;
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :catchall_c9
    move-exception v5

    :try_start_ca
    monitor-exit v4
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    .end local v0  # "fos":Ljava/io/FileOutputStream;
    .end local v1  # "userListFile":Landroid/util/AtomicFile;
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_cb
    throw v5
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_cc} :catch_cc

    .line 2455
    .end local v2  # "bos":Ljava/io/BufferedOutputStream;
    .end local v3  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0  # "fos":Ljava/io/FileOutputStream;
    .restart local v1  # "userListFile":Landroid/util/AtomicFile;
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :catch_cc
    move-exception v2

    .line 2456
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2457
    const-string v3, "UserManagerService"

    const-string v4, "Error writing user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_d7
    return-void
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3080
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3081
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3083
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    .line 3084
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3086
    :cond_1e
    return-void
.end method

.method applyUserRestrictionsForAllUsersLR()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1795
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1799
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1821
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1822
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1785
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1786
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 11
    .param p1, "userId"  # I
    .param p2, "allowedToRemoveOne"  # Z

    .line 1837
    const-string v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1838
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1839
    return v1

    .line 1841
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1843
    return v1

    .line 1846
    :cond_1c
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1847
    .local v0, "managedProfilesCount":I
    if-lez v0, :cond_2c

    if-eqz p2, :cond_2c

    move v3, v2

    goto :goto_2d

    :cond_2c
    move v3, v1

    .line 1848
    .local v3, "profilesRemovedCount":I
    :goto_2d
    sub-int v4, v0, v3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v5

    if-lt v4, v5, :cond_36

    .line 1849
    return v1

    .line 1851
    :cond_36
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1852
    :try_start_39
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1853
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_56

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v6

    if-nez v6, :cond_46

    goto :goto_56

    .line 1856
    :cond_46
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v6

    sub-int/2addr v6, v3

    .line 1859
    .local v6, "usersCountAfterRemoving":I
    if-eq v6, v2, :cond_53

    .line 1860
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v7

    if-ge v6, v7, :cond_54

    :cond_53
    move v1, v2

    :cond_54
    monitor-exit v4

    .line 1859
    return v1

    .line 1854
    .end local v6  # "usersCountAfterRemoving":I
    :cond_56
    :goto_56
    monitor-exit v4

    return v1

    .line 1861
    .end local v5  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_58
    move-exception v1

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 1226
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1229
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_2d

    .line 1232
    :cond_16
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1233
    monitor-exit v0

    return v2

    .line 1236
    :cond_1e
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    .line 1230
    :cond_2d
    :goto_2d
    monitor-exit v0

    return v2

    .line 1237
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method cleanupPartialUsers()V
    .registers 7

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 588
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_39

    .line 589
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 590
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_29

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_29

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_29
    if-eqz v3, :cond_36

    .line 591
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 593
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 588
    .end local v4  # "ui":Landroid/content/pm/UserInfo;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 596
    .end local v2  # "userSize":I
    .end local v3  # "i":I
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_77

    .line 597
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 598
    .local v1, "partialsSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    if-ge v2, v1, :cond_76

    .line 599
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 600
    .local v3, "ui":Landroid/content/pm/UserInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing partially created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 598
    .end local v3  # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 604
    .end local v2  # "i":I
    :cond_76
    return-void

    .line 596
    .end local v1  # "partialsSize":I
    :catchall_77
    move-exception v2

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v2
.end method

.method public clearSeedAccountData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3655
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3656
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3658
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 3659
    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3660
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_18

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_24

    return-void

    .line 3661
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 3662
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_21

    .line 3663
    :try_start_1c
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3664
    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    .line 3665
    return-void

    .line 3662
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :try_start_23
    throw v2

    .line 3664
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public createFlymeParallelSpace()Landroid/content/pm/UserInfo;
    .registers 6

    .line 4270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4271
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4272
    .local v1, "callerUserId":I
    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 4273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mo2-ums : caller have no perm! code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    return-object v2

    .line 4276
    :cond_23
    return-object v2
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "userId"  # I
    .param p4, "disallowedPackages"  # [Ljava/lang/String;

    .line 2654
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2655
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "userId"  # I
    .param p4, "disallowedPackages"  # [Ljava/lang/String;

    .line 2661
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2662
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 11
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "parentUserId"  # I

    .line 2884
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2885
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2887
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_10

    .line 2888
    return-object v0

    .line 2890
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2892
    .local v2, "identity":J
    :try_start_14
    const-string/jumbo v0, "no_modify_accounts"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2895
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "location_mode"

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2898
    const-string/jumbo v0, "no_share_location"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_39

    .line 2900
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2901
    nop

    .line 2902
    return-object v1

    .line 2900
    :catchall_39
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flags"  # I

    .line 2673
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2674
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public destroyFlymeParallelSpace()V
    .registers 1

    .line 4282
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3732
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v2, "UserManagerService"

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3734
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3735
    .local v11, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 3736
    .local v13, "nowRealtime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3737
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3738
    :try_start_1f
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2c8

    .line 3739
    :try_start_22
    const-string v0, "Users:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_29
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_1d7

    .line 3741
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v6, v0

    .line 3742
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v6, :cond_44

    .line 3743
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    goto/16 :goto_1ae

    .line 3745
    :cond_44
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object v7, v0

    .line 3746
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    move v4, v0

    .line 3747
    .local v4, "userId":I
    const-string v0, "  "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3748
    const-string v0, " serialNo="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3749
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0
    :try_end_62
    .catchall {:try_start_22 .. :try_end_62} :catchall_2bf

    if-eqz v0, :cond_71

    .line 3750
    :try_start_64
    const-string v0, " <removing> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    goto :goto_71

    .line 3812
    .end local v4  # "userId":I
    .end local v6  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9  # "i":I
    :catchall_6a
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    goto/16 :goto_2c4

    .line 3752
    .restart local v4  # "userId":I
    .restart local v6  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7  # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9  # "i":I
    :cond_71
    :goto_71
    :try_start_71
    iget-boolean v0, v7, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_2bf

    if-eqz v0, :cond_7a

    .line 3753
    :try_start_75
    const-string v0, " <partial>"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_6a

    .line 3755
    :cond_7a
    :try_start_7a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3756
    const-string v0, "    State: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3758
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_85
    .catchall {:try_start_7a .. :try_end_85} :catchall_2bf

    .line 3759
    :try_start_85
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    move/from16 v16, v0

    .line 3760
    .local v16, "state":I
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_1ca

    .line 3761
    :try_start_8f
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    const-string v0, "    Created: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_2bf

    .line 3763
    :try_start_9b
    iget-wide v0, v7, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_1c5

    move-object/from16 v2, p2

    move/from16 v17, v4

    .end local v4  # "userId":I
    .local v17, "userId":I
    move-wide v4, v11

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    .end local v6  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7  # "userInfo":Landroid/content/pm/UserInfo;
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    .local v18, "nowRealtime":J
    move-wide v6, v0

    :try_start_a7
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3765
    const-string v0, "    Last logged in: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3766
    iget-wide v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInTime:J
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_1be

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide v6, v11

    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v9  # "i":I
    .local v21, "i":I
    move-wide v8, v0

    :try_start_ba
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3768
    const-string v0, "    Last logged in fingerprint: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3769
    iget-object v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    const-string v0, "    Start time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3772
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3774
    const-string v0, "    Unlock time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3775
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object/from16 v4, p2

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3777
    const-string v0, "    Has profile owner: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_ba .. :try_end_ea} :catchall_1b9

    .line 3778
    move-object/from16 v1, p0

    :try_start_ec
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    move/from16 v4, v17

    .end local v17  # "userId":I
    .restart local v4  # "userId":I
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3779
    const-string v0, "    Restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3780
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_ff
    .catchall {:try_start_ec .. :try_end_ff} :catchall_2c6

    .line 3781
    :try_start_ff
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3782
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3781
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3783
    const-string v0, "    Device policy global restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3785
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3784
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3786
    const-string v0, "    Device policy local restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3787
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3788
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3787
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3789
    const-string v0, "    Effective restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3791
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3790
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3792
    monitor-exit v2
    :try_end_14b
    .catchall {:try_start_ff .. :try_end_14b} :catchall_1b6

    .line 3794
    :try_start_14b
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_168

    .line 3795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3796
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3799
    :cond_168
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_1ae

    .line 3800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3801
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3802
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1a2

    .line 3803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3804
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3806
    :cond_1a2
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1ae

    .line 3807
    const-string v0, "         account options exist"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3808
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1ae
    .catchall {:try_start_14b .. :try_end_1ae} :catchall_2c6

    .line 3740
    .end local v4  # "userId":I
    .end local v13  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16  # "state":I
    :cond_1ae
    :goto_1ae
    add-int/lit8 v9, v21, 0x1

    move-wide/from16 v13, v18

    move-object/from16 v8, v20

    .end local v21  # "i":I
    .restart local v9  # "i":I
    goto/16 :goto_29

    .line 3792
    .end local v9  # "i":I
    .restart local v4  # "userId":I
    .restart local v13  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14  # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v16  # "state":I
    .restart local v21  # "i":I
    :catchall_1b6
    move-exception v0

    :try_start_1b7
    monitor-exit v2
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b6

    .end local v3  # "sb":Ljava/lang/StringBuilder;
    .end local v11  # "now":J
    .end local v18  # "nowRealtime":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_1b8
    throw v0
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_2c6

    .line 3812
    .end local v4  # "userId":I
    .end local v13  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v16  # "state":I
    .end local v21  # "i":I
    .restart local v3  # "sb":Ljava/lang/StringBuilder;
    .restart local v11  # "now":J
    .restart local v18  # "nowRealtime":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_1b9
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_2c4

    :catchall_1be
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v20, v8

    goto/16 :goto_2c4

    .end local v18  # "nowRealtime":J
    .local v13, "nowRealtime":J
    :catchall_1c5
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_2c0

    .line 3760
    .restart local v4  # "userId":I
    .restart local v6  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7  # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9  # "i":I
    :catchall_1ca
    move-exception v0

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    .end local v6  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9  # "i":I
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14  # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v18  # "nowRealtime":J
    .restart local v21  # "i":I
    :goto_1d3
    :try_start_1d3
    monitor-exit v2
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_1d5

    .end local v3  # "sb":Ljava/lang/StringBuilder;
    .end local v11  # "now":J
    .end local v18  # "nowRealtime":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_1d4
    throw v0

    .restart local v3  # "sb":Ljava/lang/StringBuilder;
    .restart local v11  # "now":J
    .restart local v18  # "nowRealtime":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_1d5
    move-exception v0

    goto :goto_1d3

    .line 3740
    .end local v4  # "userId":I
    .end local v14  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v18  # "nowRealtime":J
    .end local v21  # "i":I
    .restart local v9  # "i":I
    .local v13, "nowRealtime":J
    :cond_1d7
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    .line 3812
    .end local v9  # "i":I
    .end local v13  # "nowRealtime":J
    .restart local v18  # "nowRealtime":J
    monitor-exit v20
    :try_end_1de
    .catchall {:try_start_1d4 .. :try_end_1de} :catchall_2c6

    .line 3813
    :try_start_1de
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Device owner id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3815
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3816
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3817
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2
    :try_end_202
    .catchall {:try_start_1de .. :try_end_202} :catchall_2cd

    .line 3818
    :try_start_202
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v10, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3819
    monitor-exit v2
    :try_end_20a
    .catchall {:try_start_202 .. :try_end_20a} :catchall_2bc

    .line 3820
    :try_start_20a
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20d
    .catchall {:try_start_20a .. :try_end_20d} :catchall_2cd

    .line 3821
    :try_start_20d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Device managed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3823
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_247

    .line 3824
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Recently removed userIds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3827
    :cond_247
    monitor-exit v2
    :try_end_248
    .catchall {:try_start_20d .. :try_end_248} :catchall_2b9

    .line 3828
    :try_start_248
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_24b
    .catchall {:try_start_248 .. :try_end_24b} :catchall_2cd

    .line 3829
    :try_start_24b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Started users state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3830
    monitor-exit v2
    :try_end_262
    .catchall {:try_start_24b .. :try_end_262} :catchall_2b6

    .line 3832
    :try_start_262
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110086

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    monitor-exit v15
    :try_end_2b5
    .catchall {:try_start_262 .. :try_end_2b5} :catchall_2cd

    .line 3838
    return-void

    .line 3830
    :catchall_2b6
    move-exception v0

    :try_start_2b7
    monitor-exit v2
    :try_end_2b8
    .catchall {:try_start_2b7 .. :try_end_2b8} :catchall_2b6

    .end local v3  # "sb":Ljava/lang/StringBuilder;
    .end local v11  # "now":J
    .end local v18  # "nowRealtime":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_2b8
    throw v0
    :try_end_2b9
    .catchall {:try_start_2b8 .. :try_end_2b9} :catchall_2cd

    .line 3827
    .restart local v3  # "sb":Ljava/lang/StringBuilder;
    .restart local v11  # "now":J
    .restart local v18  # "nowRealtime":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_2b9
    move-exception v0

    :try_start_2ba
    monitor-exit v2
    :try_end_2bb
    .catchall {:try_start_2ba .. :try_end_2bb} :catchall_2b9

    .end local v3  # "sb":Ljava/lang/StringBuilder;
    .end local v11  # "now":J
    .end local v18  # "nowRealtime":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_2bb
    throw v0
    :try_end_2bc
    .catchall {:try_start_2bb .. :try_end_2bc} :catchall_2cd

    .line 3819
    .restart local v3  # "sb":Ljava/lang/StringBuilder;
    .restart local v11  # "now":J
    .restart local v18  # "nowRealtime":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_2bc
    move-exception v0

    :try_start_2bd
    monitor-exit v2
    :try_end_2be
    .catchall {:try_start_2bd .. :try_end_2be} :catchall_2bc

    .end local v3  # "sb":Ljava/lang/StringBuilder;
    .end local v11  # "now":J
    .end local v18  # "nowRealtime":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_2be
    throw v0
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_2cd

    .line 3812
    .restart local v3  # "sb":Ljava/lang/StringBuilder;
    .restart local v11  # "now":J
    .restart local v13  # "nowRealtime":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_2bf
    move-exception v0

    :goto_2c0
    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    .end local v13  # "nowRealtime":J
    .restart local v18  # "nowRealtime":J
    :goto_2c4
    :try_start_2c4
    monitor-exit v20
    :try_end_2c5
    .catchall {:try_start_2c4 .. :try_end_2c5} :catchall_2c6

    .end local v3  # "sb":Ljava/lang/StringBuilder;
    .end local v11  # "now":J
    .end local v18  # "nowRealtime":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_2c5
    throw v0

    .restart local v3  # "sb":Ljava/lang/StringBuilder;
    .restart local v11  # "now":J
    .restart local v18  # "nowRealtime":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_2c6
    move-exception v0

    goto :goto_2c4

    .line 3837
    .end local v18  # "nowRealtime":J
    .restart local v13  # "nowRealtime":J
    :catchall_2c8
    move-exception v0

    move-wide/from16 v18, v13

    .end local v13  # "nowRealtime":J
    .restart local v18  # "nowRealtime":J
    :goto_2cb
    monitor-exit v15
    :try_end_2cc
    .catchall {:try_start_2c5 .. :try_end_2cc} :catchall_2cd

    throw v0

    :catchall_2cd
    move-exception v0

    goto :goto_2cb
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 1085
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1086
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1087
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1089
    .local v1, "identity":J
    :try_start_d
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_17
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 1093
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    nop

    .line 1095
    return-void

    .line 1093
    :catchall_15
    move-exception v3

    goto :goto_1d

    .line 1090
    :catch_17
    move-exception v3

    .line 1091
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_18
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0  # "am":Landroid/app/IActivityManager;
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userId":I
    throw v4
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    .line 1093
    .end local v3  # "re":Landroid/os/RemoteException;
    .restart local v0  # "am":Landroid/app/IActivityManager;
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userId":I
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public exists(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1304
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishRemoveUser(I)V
    .registers 15
    .param p1, "userHandle"  # I

    .line 3092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3094
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3095
    .local v2, "addedIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3096
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    .line 3121
    .end local v2  # "addedIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3122
    nop

    .line 3123
    return-void

    .line 3121
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3195
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3200
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 3201
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 3202
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3204
    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3206
    :try_start_2b
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3207
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5
    .param p1, "userHandle"  # I

    .line 763
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 765
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 767
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1a

    .line 768
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 770
    .end local v1  # "profileParent":Landroid/content/pm/UserInfo;
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw v1

    .line 773
    :cond_1f
    :goto_1f
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .line 1427
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1429
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    .line 1430
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getFlymeParallelSpaceUserIds()[I
    .registers 4

    .line 4286
    sget-boolean v0, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 4287
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x3e7

    aput v2, v0, v1

    return-object v0

    .line 4289
    :cond_d
    new-array v0, v1, [I

    return-object v0
.end method

.method getFreeProfileBadgeLU(I)I
    .registers 9
    .param p1, "parentUserId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4212
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v0

    .line 4213
    .local v0, "maxManagedProfiles":I
    new-array v1, v0, [Z

    .line 4214
    .local v1, "usedBadges":[Z
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4215
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_39

    .line 4216
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4218
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_36

    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_36

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 4220
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_36

    iget v5, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    if-ge v5, v0, :cond_36

    .line 4222
    iget v5, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 4215
    .end local v4  # "ui":Landroid/content/pm/UserInfo;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4225
    .end local v3  # "i":I
    :cond_39
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_3a
    if-ge v3, v0, :cond_44

    .line 4226
    aget-boolean v4, v1, v3

    if-nez v4, :cond_41

    .line 4227
    return v3

    .line 4225
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 4230
    .end local v3  # "i":I
    :cond_44
    const/4 v3, 0x0

    return v3
.end method

.method public getManagedProfileBadge(I)I
    .registers 5
    .param p1, "userId"  # I

    .line 1121
    const-string v0, "getManagedProfileBadge"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1124
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_11

    iget v2, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0

    return v2

    .line 1125
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method getNextAvailableId()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3562
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3563
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 3564
    .local v1, "nextId":I
    if-ltz v1, :cond_b

    .line 3565
    monitor-exit v0

    return v1

    .line 3569
    :cond_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 3570
    const-string v2, "UserManagerService"

    const-string v3, "All available IDs are used. Recycling LRU ids."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3572
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3573
    .local v3, "recentlyRemovedId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3574
    .end local v3  # "recentlyRemovedId":Ljava/lang/Integer;
    goto :goto_25

    .line 3575
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v2

    move v1, v2

    .line 3577
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_4d

    .line 3578
    if-ltz v1, :cond_45

    .line 3581
    return v1

    .line 3579
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No user id available!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3577
    .end local v1  # "nextId":I
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 640
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 643
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_31

    .line 644
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 645
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 646
    monitor-exit v0

    return-object v3

    .line 643
    .end local v3  # "ui":Landroid/content/pm/UserInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 649
    .end local v1  # "userSize":I
    .end local v2  # "i":I
    :cond_31
    monitor-exit v0

    .line 650
    const/4 v0, 0x0

    return-object v0

    .line 649
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .registers 7
    .param p1, "userId"  # I
    .param p2, "enabledOnly"  # Z

    .line 692
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1a

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 695
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 697
    .local v0, "ident":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_31

    .line 698
    :try_start_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 701
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    return-object v3

    .line 699
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userId":I
    .end local p2  # "enabledOnly":Z
    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 701
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userId":I
    .restart local p2  # "enabledOnly":Z
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userHandle"  # I

    .line 800
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 803
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getProfileParentId(I)I
    .registers 3
    .param p1, "userHandle"  # I

    .line 808
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8
    .param p1, "userId"  # I
    .param p2, "enabledOnly"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 674
    const/4 v0, 0x1

    .line 675
    .local v0, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p1, v1, :cond_1c

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting profiles related to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    goto :goto_20

    .line 678
    :cond_1c
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 680
    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 682
    .local v1, "ident":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_33

    .line 683
    :try_start_27
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_30

    .line 686
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    return-object v4

    .line 684
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0  # "returnFullInfo":Z
    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userId":I
    .end local p2  # "enabledOnly":Z
    :try_start_32
    throw v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 686
    .restart local v0  # "returnFullInfo":Z
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userId":I
    .restart local p2  # "enabledOnly":Z
    :catchall_33
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3628
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3629
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3630
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3631
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3632
    .end local v1  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3646
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3647
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3648
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3649
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-object v2

    .line 3650
    .end local v1  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3637
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3638
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3639
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3640
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3641
    .end local v1  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"  # I

    .line 608
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 611
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserCreationTime(I)J
    .registers 7
    .param p1, "userHandle"  # I

    .line 3447
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3448
    .local v0, "callingUserId":I
    const/4 v1, 0x0

    .line 3449
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3450
    if-ne v0, p1, :cond_10

    .line 3451
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    move-object v1, v3

    goto :goto_1f

    .line 3453
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3454
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1f

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_1f

    .line 3455
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v1, v4

    .line 3458
    .end local v3  # "parent":Landroid/content/pm/UserInfo;
    :cond_1f
    :goto_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_2e

    .line 3459
    if-eqz v1, :cond_25

    .line 3463
    iget-wide v2, v1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v2

    .line 3460
    :cond_25
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3458
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public getUserHandle(I)I
    .registers 9
    .param p1, "userSerialNumber"  # I

    .line 3435
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3436
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    .line 3437
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3438
    .local v5, "info":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_17

    iget v6, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v6, p1, :cond_17

    monitor-exit v0

    return v4

    .line 3436
    .end local v4  # "userId":I
    .end local v5  # "info":Landroid/content/pm/UserInfo;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3441
    :cond_1a
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 3442
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "targetUserId"  # I

    .line 1354
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1359
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1361
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_54

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_54

    .line 1366
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1367
    .local v3, "callingUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1368
    .local v4, "callingGroupId":I
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1369
    .local v5, "targetGroupId":I
    const/16 v6, -0x2710

    if-eq v4, v6, :cond_2b

    if-ne v4, v5, :cond_2b

    const/4 v6, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x0

    .line 1371
    .local v6, "sameGroup":Z
    :goto_2c
    if-eq v3, p1, :cond_35

    if-nez v6, :cond_35

    .line 1372
    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1375
    :cond_35
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_3b

    .line 1376
    monitor-exit v0

    return-object v2

    .line 1378
    :cond_3b
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v1, v7

    .line 1379
    .end local v3  # "callingUserId":I
    .end local v4  # "callingGroupId":I
    .end local v5  # "targetGroupId":I
    .end local v6  # "sameGroup":Z
    .local v1, "iconPath":Ljava/lang/String;
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_6c

    .line 1382
    :try_start_3f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_4a} :catch_4b

    return-object v0

    .line 1384
    :catch_4b
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "UserManagerService"

    const-string v4, "Couldn\'t find icon file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    return-object v2

    .line 1362
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_54
    :goto_54
    :try_start_54
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    monitor-exit v0

    return-object v2

    .line 1379
    .end local v1  # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_6c

    throw v1

    .line 1355
    :cond_6f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserIds()[I
    .registers 3

    .line 2041
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2042
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    .line 2043
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"  # I

    .line 1099
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1102
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .registers 5

    .line 1157
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1162
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1163
    :try_start_13
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1164
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_20

    const-string v3, ""

    goto :goto_22

    :cond_20
    iget-object v3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_22
    monitor-exit v1

    return-object v3

    .line 1165
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    throw v2

    .line 1158
    .end local v0  # "userId":I
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 7
    .param p1, "restrictionKey"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1601
    .local v0, "enforcingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v1, 0x0

    .line 1602
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_1b

    .line 1603
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v1, v3

    .line 1602
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1605
    .end local v2  # "i":I
    :cond_1b
    return v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p1, "restrictionKey"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 1611
    const-string v0, "getUserRestrictionSource"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1618
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 1622
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v3, -0x2710

    invoke-direct {v1, v3, v2}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    :cond_26
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1628
    :try_start_29
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1629
    .local v3, "profileOwnerRestrictions":Landroid/os/Bundle;
    invoke-static {v3, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1630
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    :cond_3e
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_45
    if-ltz v4, :cond_65

    .line 1635
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1636
    .local v2, "globalRestrictions":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1637
    .local v5, "profileUserId":I
    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1638
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    .end local v2  # "globalRestrictions":Landroid/os/Bundle;
    .end local v5  # "profileUserId":I
    :cond_62
    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    .line 1641
    .end local v3  # "profileOwnerRestrictions":Landroid/os/Bundle;
    .end local v4  # "i":I
    :cond_65
    monitor-exit v1

    .line 1642
    return-object v0

    .line 1641
    :catchall_67
    move-exception v2

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_29 .. :try_end_69} :catchall_67

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "userId"  # I

    .line 1658
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .registers 5
    .param p1, "userHandle"  # I

    .line 3419
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3420
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3421
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_c

    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_d

    :cond_c
    const/4 v2, -0x1

    :goto_d
    monitor-exit v0

    return v2

    .line 3422
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getUserStartRealtime()J
    .registers 6

    .line 1170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1171
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1172
    :try_start_b
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1173
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_15

    .line 1174
    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v3

    .line 1176
    :cond_15
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    .line 1177
    .end local v2  # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public getUserUnlockRealtime()J
    .registers 5

    .line 1182
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1183
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1184
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 1185
    iget-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v2

    .line 1187
    :cond_15
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 1188
    .end local v1  # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 9
    .param p1, "excludeDying"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 655
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 659
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_42

    .line 660
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 661
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_2c

    .line 662
    goto :goto_3f

    .line 664
    :cond_2c
    if-eqz p1, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 665
    :cond_38
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v4  # "ui":Landroid/content/pm/UserInfo;
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 668
    .end local v3  # "i":I
    :cond_42
    monitor-exit v0

    return-object v1

    .line 669
    .end local v1  # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v2  # "userSize":I
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "restrictionKey"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1663
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1664
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1665
    return v1

    .line 1667
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1668
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1669
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_21

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    monitor-exit v0

    return v1

    .line 1670
    .end local v2  # "bundle":Landroid/os/Bundle;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v1
.end method

.method hasManagedProfile(I)Z
    .registers 8
    .param p1, "userId"  # I

    .line 4239
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4240
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4241
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4242
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_2a

    .line 4243
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4244
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_27

    invoke-static {v1, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4245
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4242
    .end local v4  # "profile":Landroid/content/pm/UserInfo;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4248
    .end local v3  # "i":I
    :cond_2a
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 4249
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2  # "userSize":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public hasRestrictedProfiles()Z
    .registers 7

    .line 1242
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1244
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1245
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1246
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_2d

    .line 1247
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1248
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v5, :cond_2a

    iget v5, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v5, v0, :cond_2a

    .line 1250
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 1246
    .end local v4  # "profile":Landroid/content/pm/UserInfo;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1253
    .end local v3  # "i":I
    :cond_2d
    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 1254
    .end local v2  # "userSize":I
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restrictionKey"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1560
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1561
    return v1

    .line 1563
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1564
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 9
    .param p1, "restrictionKey"  # Ljava/lang/String;

    .line 1570
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1571
    return v1

    .line 1573
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 1574
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 1575
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1576
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 1577
    .local v5, "restrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_29

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1578
    return v0

    .line 1574
    .end local v4  # "userId":I
    .end local v5  # "restrictions":Landroid/os/Bundle;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1581
    .end local v3  # "i":I
    :cond_2c
    return v1
.end method

.method public isDemoUser(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 1206
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1207
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_29

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_29

    .line 1208
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is a demo user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1211
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1212
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1213
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    monitor-exit v1

    return v3

    .line 1214
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method isFlymeParallelSpaceUser(I)Z
    .registers 5
    .param p1, "userHandle"  # I

    .line 4295
    const/4 v0, 0x0

    .line 4296
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4298
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_12
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    move-object v0, v2

    .line 4300
    goto :goto_13

    .line 4301
    :catchall_10
    move-exception v2

    goto :goto_19

    .line 4299
    :catch_12
    move-exception v2

    .line 4301
    :goto_13
    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_10

    .line 4303
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    return v1

    .line 4301
    :goto_19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_10

    throw v2
.end method

.method public isManagedProfile(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 1130
    const-string/jumbo v0, "isManagedProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1132
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1133
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    monitor-exit v0

    return v2

    .line 1134
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public isQuietModeEnabled(I)Z
    .registers 5
    .param p1, "userHandle"  # I

    .line 989
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 992
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 993
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1d

    .line 994
    if-eqz v2, :cond_1a

    :try_start_d
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 997
    :cond_14
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 995
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    return v1

    .line 993
    .end local v2  # "info":Landroid/content/pm/UserInfo;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userHandle":I
    :try_start_1f
    throw v2

    .line 998
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userHandle":I
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isRestricted()Z
    .registers 3

    .line 1219
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1220
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1221
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .registers 4
    .param p1, "userId"  # I
    .param p2, "otherUserId"  # I

    .line 778
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    .line 779
    :cond_4
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method isUserInitialized(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 3874
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .registers 5
    .param p1, "userHandle"  # I

    .line 3427
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3428
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3429
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_f

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    monitor-exit v0

    return v2

    .line 3430
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public isUserRunning(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1151
    const-string/jumbo v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1145
    const-string/jumbo v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 1139
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 1391
    const-string/jumbo v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1392
    const/4 v0, 0x0

    .line 1394
    .local v0, "scheduleWriteUser":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1395
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1396
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_33

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1b

    goto :goto_33

    .line 1400
    :cond_1b
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_2c

    .line 1401
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 1402
    const/4 v0, 0x1

    .line 1404
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_4c

    .line 1405
    if-eqz v0, :cond_32

    .line 1406
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1408
    :cond_32
    return-void

    .line 1397
    :cond_33
    :goto_33
    :try_start_33
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    monitor-exit v1

    return-void

    .line 1404
    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .registers 9
    .param p1, "userHandle"  # I

    .line 2930
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2931
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "no_remove_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2933
    const-string v0, "UserManagerService"

    const-string v2, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    return v1

    .line 2937
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2940
    .local v2, "ident":J
    :try_start_23
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6e

    .line 2941
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_6b

    .line 2942
    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2943
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_62

    if-eqz v5, :cond_62

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_62

    .line 2946
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_68

    .line 2947
    :try_start_3f
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2948
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_6b

    .line 2962
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2948
    return v1

    .line 2955
    :cond_4c
    :try_start_4c
    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2958
    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 2959
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2960
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_6b

    .line 2962
    .end local v5  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2963
    nop

    .line 2964
    return v4

    .line 2944
    .restart local v5  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_68

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_6b

    .line 2962
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2944
    return v1

    .line 2946
    .end local v5  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userHandle":I
    :try_start_6a
    throw v1

    .line 2960
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userHandle":I
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6b

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userHandle":I
    :try_start_6d
    throw v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 2962
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userHandle":I
    :catchall_6e
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onBeforeStartUser(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 3494
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3495
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 3496
    return-void

    .line 3498
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3500
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3501
    .local v2, "migrateAppsData":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3502
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3504
    if-eqz p1, :cond_2a

    .line 3505
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3506
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 3507
    monitor-exit v3

    goto :goto_2a

    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v4

    .line 3509
    :cond_2a
    :goto_2a
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 3516
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3517
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 3518
    return-void

    .line 3520
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3522
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3523
    .local v2, "migrateAppsData":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3524
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3525
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .registers 8
    .param p1, "shell"  # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"  # Ljava/lang/String;

    .line 3696
    if-nez p2, :cond_7

    .line 3697
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3700
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3702
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_16

    :cond_15
    goto :goto_21

    :cond_16
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    goto :goto_22

    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_29

    .line 3706
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3704
    :cond_29
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I

    move-result v1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2d} :catch_2e

    return v1

    .line 3708
    :catch_2e
    move-exception v2

    .line 3709
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3711
    .end local v2  # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 3692
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3693
    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 3542
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3543
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 3548
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3549
    .local v1, "now":J
    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 3550
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3552
    :cond_1e
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3553
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3554
    return-void

    .line 3544
    .end local v1  # "now":J
    :cond_28
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userForeground: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    return-void
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 6
    .param p1, "userInfo"  # Landroid/content/pm/UserInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2864
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2865
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2866
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2867
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2868
    monitor-exit v1

    .line 2869
    return-object v0

    .line 2868
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v2
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 50
    .param p1, "id"  # I
    .param p2, "is"  # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2481
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 2482
    .local v0, "flags":I
    move/from16 v3, p1

    .line 2483
    .local v3, "serialNumber":I
    const/4 v4, 0x0

    .line 2484
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2485
    .local v5, "account":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2486
    .local v6, "iconPath":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 2487
    .local v7, "creationTime":J
    const-wide/16 v9, 0x0

    .line 2488
    .local v9, "lastLoggedInTime":J
    const-wide/16 v11, 0x0

    .line 2489
    .local v11, "lastRequestQuietModeEnabledTimestamp":J
    const/4 v13, 0x0

    .line 2490
    .local v13, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v14, -0x2710

    .line 2491
    .local v14, "profileGroupId":I
    const/4 v15, 0x0

    .line 2492
    .local v15, "profileBadge":I
    const/16 v16, -0x2710

    .line 2493
    .local v16, "restrictedProfileParentId":I
    const/16 v17, 0x0

    .line 2494
    .local v17, "partial":Z
    const/16 v18, 0x0

    .line 2495
    .local v18, "guestToRemove":Z
    const/16 v19, 0x0

    .line 2496
    .local v19, "persistSeedData":Z
    const/16 v20, 0x0

    .line 2497
    .local v20, "seedAccountName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2498
    .local v21, "seedAccountType":Ljava/lang/String;
    const/16 v22, 0x0

    .line 2499
    .local v22, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v23, 0x0

    .line 2500
    .local v23, "baseRestrictions":Landroid/os/Bundle;
    const/16 v24, 0x0

    .line 2501
    .local v24, "localRestrictions":Landroid/os/Bundle;
    const/16 v25, 0x0

    .line 2503
    .local v25, "globalRestrictions":Landroid/os/Bundle;
    move/from16 v26, v3

    .end local v3  # "serialNumber":I
    .local v26, "serialNumber":I
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2504
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v27, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v28, v0

    .end local v0  # "flags":I
    .local v28, "flags":I
    invoke-virtual/range {v27 .. v27}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v4

    move-object/from16 v4, p2

    .end local v4  # "name":Ljava/lang/String;
    .local v27, "name":Ljava/lang/String;
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2506
    :goto_3d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v29, v0

    .local v29, "type":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_4e

    move/from16 v0, v29

    const/4 v4, 0x1

    .end local v29  # "type":I
    .local v0, "type":I
    if-eq v0, v4, :cond_50

    move-object/from16 v4, p2

    goto :goto_3d

    .end local v0  # "type":I
    .restart local v29  # "type":I
    :cond_4e
    move/from16 v0, v29

    .line 2511
    .end local v29  # "type":I
    .restart local v0  # "type":I
    :cond_50
    const/4 v4, 0x2

    if-eq v0, v4, :cond_6d

    .line 2512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v5

    .end local v5  # "account":Ljava/lang/String;
    .local v32, "account":Ljava/lang/String;
    const-string v5, "Unable to read user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    const/4 v4, 0x0

    return-object v4

    .line 2516
    .end local v32  # "account":Ljava/lang/String;
    .restart local v5  # "account":Ljava/lang/String;
    :cond_6d
    move-object/from16 v32, v5

    .end local v5  # "account":Ljava/lang/String;
    .restart local v32  # "account":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v0, v4, :cond_240

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_240

    .line 2517
    const/4 v4, -0x1

    const-string/jumbo v5, "id"

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 2518
    .local v4, "storedId":I
    if-eq v4, v2, :cond_94

    .line 2519
    const-string v5, "UserManagerService"

    move/from16 v29, v0

    .end local v0  # "type":I
    .restart local v29  # "type":I
    const-string v0, "User id does not match the file name"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/4 v0, 0x0

    return-object v0

    .line 2522
    .end local v29  # "type":I
    .restart local v0  # "type":I
    :cond_94
    move/from16 v29, v0

    const/4 v0, 0x0

    .end local v0  # "type":I
    .restart local v29  # "type":I
    const-string/jumbo v5, "serialNumber"

    invoke-direct {v1, v3, v5, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 2523
    .end local v26  # "serialNumber":I
    .local v5, "serialNumber":I
    const/4 v0, 0x0

    move/from16 v33, v4

    .end local v4  # "storedId":I
    .local v33, "storedId":I
    const-string v4, "flags"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 2524
    .end local v28  # "flags":I
    .local v4, "flags":I
    const-string v0, "icon"

    move/from16 v28, v4

    const/4 v4, 0x0

    .end local v4  # "flags":I
    .restart local v28  # "flags":I
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2525
    move v0, v5

    .end local v5  # "serialNumber":I
    .local v0, "serialNumber":I
    const-wide/16 v4, 0x0

    move/from16 v34, v0

    .end local v0  # "serialNumber":I
    .local v34, "serialNumber":I
    const-string v0, "created"

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 2526
    const-string/jumbo v0, "lastLoggedIn"

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 2527
    const-string/jumbo v0, "lastLoggedInFingerprint"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2529
    const/16 v0, -0x2710

    const-string/jumbo v4, "profileGroupId"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 2531
    const-string/jumbo v4, "profileBadge"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 2532
    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    .line 2534
    const-string/jumbo v0, "partial"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2535
    .local v0, "valueString":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 2536
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 2538
    :cond_f6
    const-string v4, "guestToRemove"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2539
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 2540
    const/4 v4, 0x1

    move/from16 v18, v4

    .line 2543
    :cond_109
    const-string/jumbo v4, "seedAccountName"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2544
    const-string/jumbo v4, "seedAccountType"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2545
    if-nez v20, :cond_11c

    if-eqz v21, :cond_11e

    .line 2546
    :cond_11c
    const/16 v19, 0x1

    .line 2549
    :cond_11e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move-object/from16 v5, v32

    .line 2550
    .end local v32  # "account":Ljava/lang/String;
    .local v4, "outerDepth":I
    .local v5, "account":Ljava/lang/String;
    :goto_124
    move-object/from16 v26, v0

    .end local v0  # "valueString":Ljava/lang/String;
    .local v26, "valueString":Ljava/lang/String;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v31, v0

    move-object/from16 v29, v5

    const/4 v5, 0x1

    .end local v5  # "account":Ljava/lang/String;
    .local v29, "account":Ljava/lang/String;
    .local v31, "type":I
    if-eq v0, v5, :cond_215

    const/4 v0, 0x3

    move/from16 v5, v31

    .end local v31  # "type":I
    .local v5, "type":I
    if-ne v5, v0, :cond_13c

    .line 2551
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v4, :cond_219

    .line 2552
    :cond_13c
    const/4 v0, 0x3

    if-eq v5, v0, :cond_207

    const/4 v0, 0x4

    if-ne v5, v0, :cond_146

    .line 2553
    move/from16 v35, v4

    goto/16 :goto_209

    .line 2555
    :cond_146
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2556
    .local v0, "tag":Ljava/lang/String;
    move/from16 v35, v4

    .end local v4  # "outerDepth":I
    .local v35, "outerDepth":I
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16c

    .line 2557
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2558
    .end local v5  # "type":I
    .local v4, "type":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_166

    .line 2559
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v5, v29

    move/from16 v29, v4

    goto/16 :goto_201

    .line 2558
    :cond_166
    move-object/from16 v5, v29

    move/from16 v29, v4

    goto/16 :goto_201

    .line 2561
    .end local v4  # "type":I
    .restart local v5  # "type":I
    :cond_16c
    const-string/jumbo v4, "restrictions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    .line 2562
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v23

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto/16 :goto_201

    .line 2563
    :cond_181
    const-string v4, "device_policy_restrictions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_195

    .line 2564
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto/16 :goto_201

    .line 2565
    :cond_195
    const-string v4, "device_policy_global_restrictions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a8

    .line 2566
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v25

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto :goto_201

    .line 2567
    :cond_1a8
    const-string v4, "account"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 2568
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2569
    .end local v5  # "type":I
    .restart local v4  # "type":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1be

    .line 2570
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    move/from16 v29, v4

    .end local v29  # "account":Ljava/lang/String;
    .local v5, "account":Ljava/lang/String;
    goto :goto_201

    .line 2569
    .end local v5  # "account":Ljava/lang/String;
    .restart local v29  # "account":Ljava/lang/String;
    :cond_1be
    move-object/from16 v5, v29

    move/from16 v29, v4

    goto :goto_201

    .line 2572
    .end local v4  # "type":I
    .local v5, "type":I
    :cond_1c3
    const-string/jumbo v4, "seedAccountOptions"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 2573
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v22

    .line 2574
    const/16 v19, 0x1

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto :goto_201

    .line 2575
    :cond_1d9
    const-string/jumbo v4, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fb

    .line 2576
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2577
    .end local v5  # "type":I
    .restart local v4  # "type":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1f6

    .line 2578
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v5, v29

    move/from16 v29, v4

    goto :goto_201

    .line 2577
    :cond_1f6
    move-object/from16 v5, v29

    move/from16 v29, v4

    goto :goto_201

    .line 2575
    .end local v4  # "type":I
    .restart local v5  # "type":I
    :cond_1fb
    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    .line 2581
    .end local v0  # "tag":Ljava/lang/String;
    .local v5, "account":Ljava/lang/String;
    .local v29, "type":I
    :goto_201
    move-object/from16 v0, v26

    move/from16 v4, v35

    goto/16 :goto_124

    .line 2552
    .end local v35  # "outerDepth":I
    .local v4, "outerDepth":I
    .local v5, "type":I
    .local v29, "account":Ljava/lang/String;
    :cond_207
    move/from16 v35, v4

    .line 2550
    .end local v4  # "outerDepth":I
    .restart local v35  # "outerDepth":I
    :goto_209
    move-object/from16 v0, v26

    move/from16 v4, v35

    move-object/from16 v46, v29

    move/from16 v29, v5

    move-object/from16 v5, v46

    goto/16 :goto_124

    .end local v5  # "type":I
    .end local v35  # "outerDepth":I
    .restart local v4  # "outerDepth":I
    .restart local v31  # "type":I
    :cond_215
    move/from16 v35, v4

    move/from16 v5, v31

    .line 2585
    .end local v4  # "outerDepth":I
    .end local v26  # "valueString":Ljava/lang/String;
    .end local v31  # "type":I
    .end local v33  # "storedId":I
    .restart local v5  # "type":I
    :cond_219
    move-wide/from16 v41, v11

    move/from16 v1, v16

    move/from16 v12, v17

    move/from16 v39, v19

    move-object/from16 v37, v20

    move-object/from16 v38, v21

    move-object/from16 v40, v22

    move-object/from16 v43, v23

    move-object/from16 v44, v24

    move-object/from16 v45, v25

    move-object/from16 v4, v27

    move-object/from16 v36, v29

    move-object/from16 v16, v3

    move/from16 v29, v5

    move-wide v10, v9

    move v3, v15

    move/from16 v5, v28

    move-wide v8, v7

    move v15, v14

    move/from16 v14, v18

    move/from16 v7, v34

    goto :goto_266

    .line 2516
    .end local v5  # "type":I
    .end local v29  # "account":Ljava/lang/String;
    .end local v34  # "serialNumber":I
    .local v0, "type":I
    .local v26, "serialNumber":I
    .restart local v32  # "account":Ljava/lang/String;
    :cond_240
    move/from16 v29, v0

    .line 2585
    .end local v0  # "type":I
    .local v29, "type":I
    move-wide/from16 v41, v11

    move/from16 v1, v16

    move/from16 v12, v17

    move/from16 v39, v19

    move-object/from16 v37, v20

    move-object/from16 v38, v21

    move-object/from16 v40, v22

    move-object/from16 v43, v23

    move-object/from16 v44, v24

    move-object/from16 v45, v25

    move-object/from16 v4, v27

    move/from16 v5, v28

    move-object/from16 v36, v32

    move-object/from16 v16, v3

    move-wide v10, v9

    move v3, v15

    move-wide v8, v7

    move v15, v14

    move/from16 v14, v18

    move/from16 v7, v26

    .end local v9  # "lastLoggedInTime":J
    .end local v11  # "lastRequestQuietModeEnabledTimestamp":J
    .end local v17  # "partial":Z
    .end local v18  # "guestToRemove":Z
    .end local v19  # "persistSeedData":Z
    .end local v20  # "seedAccountName":Ljava/lang/String;
    .end local v21  # "seedAccountType":Ljava/lang/String;
    .end local v22  # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v23  # "baseRestrictions":Landroid/os/Bundle;
    .end local v24  # "localRestrictions":Landroid/os/Bundle;
    .end local v25  # "globalRestrictions":Landroid/os/Bundle;
    .end local v26  # "serialNumber":I
    .end local v27  # "name":Ljava/lang/String;
    .end local v28  # "flags":I
    .end local v32  # "account":Ljava/lang/String;
    .local v1, "restrictedProfileParentId":I
    .local v3, "profileBadge":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "flags":I
    .local v7, "serialNumber":I
    .local v8, "creationTime":J
    .local v10, "lastLoggedInTime":J
    .local v12, "partial":Z
    .local v14, "guestToRemove":Z
    .local v15, "profileGroupId":I
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v36, "account":Ljava/lang/String;
    .local v37, "seedAccountName":Ljava/lang/String;
    .local v38, "seedAccountType":Ljava/lang/String;
    .local v39, "persistSeedData":Z
    .local v40, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v41, "lastRequestQuietModeEnabledTimestamp":J
    .local v43, "baseRestrictions":Landroid/os/Bundle;
    .local v44, "localRestrictions":Landroid/os/Bundle;
    .local v45, "globalRestrictions":Landroid/os/Bundle;
    :goto_266
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, v2, v4, v6, v5}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v17, v0

    .line 2586
    .local v17, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v18, v4

    move-object/from16 v4, v17

    .end local v17  # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    .local v18, "name":Ljava/lang/String;
    iput v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2587
    iput-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2588
    iput-wide v10, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2589
    iput-object v13, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2590
    iput-boolean v12, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 2591
    iput-boolean v14, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2592
    iput v15, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2593
    iput v3, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2594
    iput v1, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2597
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v17, v0

    .line 2598
    .local v17, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move/from16 v19, v1

    move-object/from16 v1, v17

    .end local v17  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v19, "restrictedProfileParentId":I
    iput-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2599
    move/from16 v17, v3

    move-object/from16 v3, v36

    .end local v36  # "account":Ljava/lang/String;
    .local v3, "account":Ljava/lang/String;
    .local v17, "profileBadge":I
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 2600
    move-object/from16 v20, v3

    move-object/from16 v3, v37

    .end local v37  # "seedAccountName":Ljava/lang/String;
    .local v3, "seedAccountName":Ljava/lang/String;
    .local v20, "account":Ljava/lang/String;
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 2601
    move-object/from16 v21, v3

    move-object/from16 v3, v38

    .end local v38  # "seedAccountType":Ljava/lang/String;
    .local v3, "seedAccountType":Ljava/lang/String;
    .local v21, "seedAccountName":Ljava/lang/String;
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 2602
    move-object/from16 v22, v3

    move/from16 v3, v39

    .end local v39  # "persistSeedData":Z
    .local v3, "persistSeedData":Z
    .local v22, "seedAccountType":Ljava/lang/String;
    iput-boolean v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 2603
    move/from16 v23, v3

    move-object/from16 v3, v40

    .end local v40  # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v3, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v23, "persistSeedData":Z
    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 2604
    move-object/from16 v25, v3

    move-object/from16 v24, v4

    move-wide/from16 v3, v41

    .end local v4  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v41  # "lastRequestQuietModeEnabledTimestamp":J
    .local v3, "lastRequestQuietModeEnabledTimestamp":J
    .local v24, "userInfo":Landroid/content/pm/UserInfo;
    .local v25, "seedAccountOptions":Landroid/os/PersistableBundle;
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 2606
    move-wide/from16 v26, v3

    move-object/from16 v3, p0

    .end local v3  # "lastRequestQuietModeEnabledTimestamp":J
    .local v26, "lastRequestQuietModeEnabledTimestamp":J
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2607
    move/from16 v28, v5

    move-object/from16 v5, v43

    .end local v43  # "baseRestrictions":Landroid/os/Bundle;
    .local v5, "baseRestrictions":Landroid/os/Bundle;
    .restart local v28  # "flags":I
    if-eqz v5, :cond_2d2

    .line 2608
    :try_start_2c4
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2c9
    .catchall {:try_start_2c4 .. :try_end_2c9} :catchall_2ca

    goto :goto_2d2

    .line 2616
    :catchall_2ca
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v31, v44

    move-object/from16 v5, v45

    goto :goto_2f2

    .line 2610
    :cond_2d2
    :goto_2d2
    move-object/from16 v30, v5

    move-object/from16 v5, v44

    .end local v44  # "localRestrictions":Landroid/os/Bundle;
    .local v5, "localRestrictions":Landroid/os/Bundle;
    .local v30, "baseRestrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_2e4

    .line 2611
    :try_start_2d8
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2dd
    .catchall {:try_start_2d8 .. :try_end_2dd} :catchall_2de

    goto :goto_2e4

    .line 2616
    :catchall_2de
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v5, v45

    goto :goto_2f2

    .line 2613
    :cond_2e4
    :goto_2e4
    move-object/from16 v31, v5

    move-object/from16 v5, v45

    .end local v45  # "globalRestrictions":Landroid/os/Bundle;
    .local v5, "globalRestrictions":Landroid/os/Bundle;
    .local v31, "localRestrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_2ef

    .line 2614
    :try_start_2ea
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2616
    :cond_2ef
    monitor-exit v4

    .line 2617
    return-object v1

    .line 2616
    :catchall_2f1
    move-exception v0

    :goto_2f2
    monitor-exit v4
    :try_end_2f3
    .catchall {:try_start_2ea .. :try_end_2f3} :catchall_2f1

    throw v0
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .registers 4
    .param p1, "volumeUuid"  # Ljava/lang/String;

    .line 3533
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    .line 3534
    return-void
.end method

.method public removeUser(I)Z
    .registers 7
    .param p1, "userHandle"  # I

    .line 2974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUser u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2978
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2979
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2980
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    move v3, v2

    :goto_2f
    move v1, v3

    .line 2981
    .local v1, "isManagedProfile":Z
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_69

    .line 2982
    if-eqz v1, :cond_37

    .line 2983
    const-string/jumbo v0, "no_remove_managed_profile"

    goto :goto_3a

    :cond_37
    const-string/jumbo v0, "no_remove_user"

    .line 2984
    .local v0, "restriction":Ljava/lang/String;
    :goto_3a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove user. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    return v2

    .line 2988
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v2

    return v2

    .line 2981
    .end local v0  # "restriction":Ljava/lang/String;
    .end local v1  # "isManagedProfile":Z
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3
    .param p1, "userHandle"  # I

    .line 2667
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2668
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .registers 4
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2874
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2875
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2876
    monitor-exit v0

    .line 2877
    return-void

    .line 2876
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;)Z
    .registers 11
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "enableQuietMode"  # Z
    .param p3, "userHandle"  # I
    .param p4, "target"  # Landroid/content/IntentSender;

    .line 850
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    goto :goto_11

    .line 853
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IZ)V

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 860
    .local v3, "identity":J
    const/4 v0, 0x0

    .line 861
    .local v0, "result":Z
    if-eqz p2, :cond_2b

    .line 862
    :try_start_26
    invoke-direct {p0, p3, v1, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x1

    goto :goto_45

    .line 866
    :cond_2b
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 867
    invoke-virtual {v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 868
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 869
    .local v1, "needToShowConfirmCredential":Z
    :goto_3b
    if-eqz v1, :cond_41

    .line 870
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V

    goto :goto_45

    .line 872
    :cond_41
    invoke-direct {p0, p3, v2, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_4a

    .line 874
    const/4 v0, 0x1

    .line 877
    .end local v1  # "needToShowConfirmCredential":Z
    :goto_45
    nop

    .line 879
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    return v0

    .line 879
    .end local v0  # "result":Z
    :catchall_4a
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "restrictions"  # Landroid/os/Bundle;
    .param p3, "userId"  # I

    .line 3213
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3214
    if-eqz p2, :cond_c

    .line 3215
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 3217
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3218
    if-eqz p2, :cond_1c

    :try_start_11
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1c

    .line 3222
    :cond_18
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1f

    .line 3219
    :cond_1c
    :goto_1c
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V

    .line 3224
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_39

    .line 3227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3228
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3229
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3230
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3231
    return-void

    .line 3224
    .end local v0  # "changeIntent":Landroid/content/Intent;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"  # Landroid/os/Bundle;

    .line 1435
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1437
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1438
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1439
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1f

    .line 1440
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1441
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1442
    monitor-exit v1

    .line 1443
    return-void

    .line 1442
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v0

    .line 1439
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 12
    .param p1, "userId"  # I
    .param p2, "accountName"  # Ljava/lang/String;
    .param p3, "accountType"  # Ljava/lang/String;
    .param p4, "accountOptions"  # Landroid/os/PersistableBundle;
    .param p5, "persist"  # Z

    .line 3606
    const-string v0, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3607
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3609
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3d

    .line 3610
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3611
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_2a

    .line 3612
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_3a

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3d

    return-void

    .line 3615
    :cond_2a
    :try_start_2a
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3616
    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3617
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3618
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 3619
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3a

    .line 3620
    if-eqz p5, :cond_38

    .line 3621
    :try_start_35
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3623
    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    .line 3624
    return-void

    .line 3619
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userId":I
    .end local p2  # "accountName":Ljava/lang/String;
    .end local p3  # "accountType":Ljava/lang/String;
    .end local p4  # "accountOptions":Landroid/os/PersistableBundle;
    .end local p5  # "persist":Z
    :try_start_3c
    throw v2

    .line 3623
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userId":I
    .restart local p2  # "accountName":Ljava/lang/String;
    .restart local p3  # "accountType":Ljava/lang/String;
    .restart local p4  # "accountOptions":Landroid/os/PersistableBundle;
    .restart local p5  # "persist":Z
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"  # I
    .param p2, "accountName"  # Ljava/lang/String;

    .line 616
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 619
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_46

    .line 620
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 621
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v3, :cond_30

    .line 622
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User not found for setting user account: u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_43

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_46

    return-void

    .line 625
    :cond_30
    :try_start_30
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 626
    .local v4, "currentAccount":Ljava/lang/String;
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 627
    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 628
    move-object v0, v3

    .line 630
    .end local v3  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4  # "currentAccount":Ljava/lang/String;
    :cond_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_43

    .line 632
    if-eqz v0, :cond_41

    .line 633
    :try_start_3e
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 635
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_46

    .line 636
    return-void

    .line 630
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    .end local v0  # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userId":I
    .end local p2  # "accountName":Ljava/lang/String;
    :try_start_45
    throw v3

    .line 635
    .restart local v0  # "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userId":I
    .restart local p2  # "accountName":Ljava/lang/String;
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public setUserAdmin(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1056
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3d

    .line 1061
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1062
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3a

    .line 1063
    if-eqz v2, :cond_38

    :try_start_13
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_38

    .line 1068
    :cond_1a
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1069
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1070
    .end local v2  # "info":Landroid/content/pm/UserInfo;
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_3d

    .line 1074
    const/4 v0, 0x0

    const-string/jumbo v1, "no_sms"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1075
    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1076
    return-void

    .line 1065
    .restart local v2  # "info":Landroid/content/pm/UserInfo;
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3d

    return-void

    .line 1062
    .end local v2  # "info":Landroid/content/pm/UserInfo;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userId":I
    :try_start_3c
    throw v2

    .line 1070
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userId":I
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setUserEnabled(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1041
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2c

    .line 1045
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1046
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_29

    .line 1047
    if-eqz v2, :cond_27

    :try_start_12
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1048
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1049
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1051
    .end local v2  # "info":Landroid/content/pm/UserInfo;
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1052
    return-void

    .line 1046
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    .end local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .end local p1  # "userId":I
    :try_start_2b
    throw v2

    .line 1051
    .restart local p0  # "this":Lcom/android/server/pm/UserManagerService;
    .restart local p1  # "userId":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "userId"  # I
    .param p2, "bitmap"  # Landroid/graphics/Bitmap;

    .line 1335
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1336
    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1337
    const-string v0, "UserManagerService"

    const-string v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return-void

    .line 1340
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1341
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"  # I
    .param p2, "name"  # Ljava/lang/String;

    .line 1309
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x0

    .line 1311
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1312
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1313
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_3f

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_3f

    .line 1317
    :cond_17
    if-eqz p2, :cond_2b

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1318
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1319
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1320
    const/4 v0, 0x1

    .line 1322
    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_58

    .line 1323
    if-eqz v0, :cond_3e

    .line 1324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1326
    .local v1, "ident":J
    :try_start_32
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 1328
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1329
    goto :goto_3e

    .line 1328
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1331
    .end local v1  # "ident":J
    :cond_3e
    :goto_3e
    return-void

    .line 1314
    .restart local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3f
    :goto_3f
    :try_start_3f
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    monitor-exit v1

    return-void

    .line 1322
    .end local v2  # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_3f .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Z
    .param p3, "userId"  # I

    .line 1675
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1676
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1677
    return-void

    .line 1679
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1682
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1683
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1682
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1684
    .local v1, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1686
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1687
    .end local v1  # "newRestrictions":Landroid/os/Bundle;
    monitor-exit v0

    .line 1688
    return-void

    .line 1687
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "accountName"  # Ljava/lang/String;
    .param p2, "accountType"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3670
    const-string v0, "Cannot check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3671
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3672
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3673
    .local v1, "userSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_42

    .line 3674
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3675
    .local v3, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_3f

    .line 3676
    :cond_22
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 3677
    goto :goto_3f

    .line 3679
    :cond_2f
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 3680
    goto :goto_3f

    .line 3682
    :cond_3c
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3673
    .end local v3  # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3684
    .end local v1  # "userSize":I
    .end local v2  # "i":I
    :cond_42
    monitor-exit v0

    .line 3685
    const/4 v0, 0x0

    return v0

    .line 3684
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw v1
.end method

.method systemReady()V
    .registers 7

    .line 557
    nop

    .line 558
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 557
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 562
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_60

    .line 564
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 565
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2f

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v3, "no_config_wifi"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 570
    const/4 v2, 0x1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v4, "no_config_wifi"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 573
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findMliltiUser()Z

    move-result v2

    if-eqz v2, :cond_4e

    const/16 v2, 0x3e7

    const-string/jumbo v3, "no_share_location"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 575
    const-string v3, "UserManagerService"

    const-string/jumbo v4, "setUserRestriction--allow-shared_location muliti-user"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string/jumbo v3, "no_share_location"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 578
    :cond_4e
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 581
    return-void

    .line 562
    .end local v0  # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 11
    .param p1, "userData"  # Lcom/android/server/pm/UserManagerService$UserData;
    .param p2, "os"  # Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2315
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2316
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2317
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2318
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2320
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2321
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2322
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "id"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2323
    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "serialNumber"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2324
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "flags"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2325
    iget-wide v4, v1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "created"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2326
    iget-wide v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2327
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2326
    const-string/jumbo v4, "lastLoggedIn"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2328
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_6a

    .line 2329
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    const-string/jumbo v4, "lastLoggedInFingerprint"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2332
    :cond_6a
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 2333
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v4, "icon"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2335
    :cond_75
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_82

    .line 2336
    const-string/jumbo v2, "partial"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2338
    :cond_82
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v2, :cond_8e

    .line 2339
    const-string v2, "guestToRemove"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2341
    :cond_8e
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_a0

    .line 2342
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2343
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2342
    const-string/jumbo v5, "profileGroupId"

    invoke-interface {v0, v3, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2345
    :cond_a0
    iget v2, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2346
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2345
    const-string/jumbo v5, "profileBadge"

    invoke-interface {v0, v3, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2347
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v4, :cond_bc

    .line 2348
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2349
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2348
    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2352
    :cond_bc
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_d8

    .line 2353
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_cc

    .line 2354
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const-string/jumbo v4, "seedAccountName"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2356
    :cond_cc
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_d8

    .line 2357
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    const-string/jumbo v4, "seedAccountType"

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2360
    :cond_d8
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_ed

    .line 2361
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2362
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2363
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2365
    :cond_ed
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2366
    :try_start_f0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2367
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    .line 2366
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2368
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2369
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_restrictions"

    .line 2368
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2371
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2372
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_global_restrictions"

    .line 2371
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2374
    monitor-exit v2
    :try_end_11f
    .catchall {:try_start_f0 .. :try_end_11f} :catchall_176

    .line 2376
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v2, :cond_132

    .line 2377
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2378
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2379
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2382
    :cond_132
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_14b

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_14b

    .line 2383
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2384
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2385
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2388
    :cond_14b
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_16c

    .line 2389
    const-string/jumbo v2, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2390
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2391
    const-string/jumbo v2, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2394
    :cond_16c
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2396
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2397
    return-void

    .line 2374
    :catchall_176
    move-exception v3

    :try_start_177
    monitor-exit v2
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    throw v3
.end method
