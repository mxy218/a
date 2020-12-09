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

.field private static final ATTR_PRE_CREATED:Ljava/lang/String; = "preCreated"

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

.field private final mNotifyPackageManagerOnUserRemoval:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    .line 198
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

    .line 255
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 528
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 529
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .registers 11

    .line 538
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 539
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .registers 8

    .line 542
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 245
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mNotifyPackageManagerOnUserRemoval:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 315
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 330
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    .line 339
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 347
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    .line 353
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 360
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 371
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 377
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    .line 384
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 393
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 402
    const-string v0, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 405
    new-instance v0, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 454
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    .line 543
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 544
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 545
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 546
    new-instance p1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 547
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 548
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 549
    :try_start_97
    new-instance p2, Ljava/io/File;

    sget-object p3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {p2, p5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 550
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 552
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 554
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x1fd

    const/4 p4, -0x1

    invoke-static {p2, p3, p4, p4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 557
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo p4, "userlist.xml"

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 558
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 559
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 560
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 561
    monitor-exit p1
    :try_end_d4
    .catchall {:try_start_97 .. :try_end_d4} :catchall_f2

    .line 562
    new-instance p1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 563
    const-class p1, Landroid/os/UserManagerInternal;

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 564
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 565
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 566
    return-void

    .line 561
    :catchall_f2
    move-exception p2

    :try_start_f3
    monitor-exit p1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw p2
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 5

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V
    .registers 5

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 4

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2

    .line 145
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2

    .line 145
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Landroid/os/IBinder;
    .registers 1

    .line 145
    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method private areGuestUsersEphemeral()Z
    .registers 3

    .line 3010
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3011
    const v1, 0x111008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3010
    return v0
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 6

    .line 870
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 871
    if-eqz p3, :cond_d

    .line 872
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    .line 874
    :cond_d
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    :goto_12
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    const-string p3, "android.intent.extra.USER"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 878
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string p3, "android.intent.extra.user_handle"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    const/high16 p1, 0x40000000  # 2.0f

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 880
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 881
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .registers 4

    .line 2000
    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_22

    .line 2001
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    .line 2002
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2005
    :cond_22
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2009
    :goto_28
    return-void

    .line 2006
    :cond_29
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 1987
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1991
    return-void

    .line 1988
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 5

    .line 1229
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1230
    if-eq v0, p1, :cond_38

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p1

    if-nez p1, :cond_38

    .line 1231
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_38

    .line 1234
    :cond_13
    nop

    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1234
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1239
    return-void

    .line 1236
    :cond_21
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1232
    :cond_38
    :goto_38
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 4

    .line 1938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1940
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_33

    if-nez v0, :cond_b

    goto :goto_33

    .line 1945
    :cond_b
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1946
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1948
    return-void

    .line 1951
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1942
    :cond_33
    :goto_33
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 1971
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1974
    return-void

    .line 1972
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 4

    .line 2051
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2052
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 2053
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_26
    :goto_26
    return-void
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .registers 3

    .line 2697
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 2698
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 2700
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2702
    :cond_16
    return-void
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1572
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1573
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1574
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;

    move-result-object v1

    .line 1575
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 1577
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1579
    return-object v0

    .line 1581
    :cond_27
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1582
    invoke-static {v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1583
    invoke-static {v0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1585
    return-object v0
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 5

    .line 2747
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method private createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 11

    .line 2752
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    .line 2753
    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_b

    .line 2754
    :cond_8
    const-string/jumbo v0, "no_add_user"

    .line 2755
    :goto_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot add user. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is enabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    const/4 p1, 0x0

    return-object p1

    .line 2759
    :cond_32
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14

    .line 2766
    new-instance v7, Landroid/util/TimingsTraceLog;

    const-string v0, "UserManagerService"

    const-wide/32 v1, 0x80000

    invoke-direct {v7, v0, v1, v2}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUser-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2769
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v7

    :try_start_25
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;IIZ[Ljava/lang/String;Landroid/util/TimingsTraceLog;)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 2772
    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2769
    return-object p1

    .line 2772
    :catchall_2d
    move-exception p1

    invoke-virtual {v7}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p1
.end method

.method private createUserInternalUncheckedNoTracing(Ljava/lang/String;IIZ[Ljava/lang/String;Landroid/util/TimingsTraceLog;)Landroid/content/pm/UserInfo;
    .registers 24

    .line 2782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    if-nez v4, :cond_9b

    if-gez v3, :cond_9b

    invoke-static/range {p2 .. p2}, Landroid/content/pm/UserInfo;->isManagedProfile(I)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 2784
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2785
    :try_start_18
    invoke-direct {v0, v2}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v7

    .line 2786
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_98

    .line 2787
    if-eqz v7, :cond_9b

    .line 2788
    iget-object v3, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2789
    invoke-static/range {p2 .. p2}, Landroid/content/pm/UserInfo;->isGuest(I)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->areGuestUsersEphemeral()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2796
    iget-object v4, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2798
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reusing pre-created user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for flags "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    invoke-static/range {p2 .. p2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; new flags: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 2800
    invoke-static {v2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2798
    const-string v4, "UserManagerService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iput-object v1, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2807
    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 2808
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v1

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2810
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2811
    :try_start_76
    invoke-direct {v0, v7}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2812
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2813
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_95

    .line 2815
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2816
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->readPermissionStateForUser(I)Z

    move-result v1

    if-nez v1, :cond_91

    .line 2818
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 2820
    :cond_91
    invoke-direct {v0, v3}, Lcom/android/server/pm/UserManagerService;->dispatchUserAddedIntent(Landroid/content/pm/UserInfo;)V

    .line 2821
    return-object v3

    .line 2813
    :catchall_95
    move-exception v0

    :try_start_96
    monitor-exit v6
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0

    .line 2786
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit v6
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0

    .line 2825
    :cond_9b
    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2826
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2827
    invoke-interface {v6}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_b2

    .line 2828
    const-string v0, "UserManagerService"

    const-string v1, "Cannot add user. Not enough space on disk."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    return-object v7

    .line 2831
    :cond_b2
    invoke-static/range {p2 .. p2}, Landroid/content/pm/UserInfo;->isGuest(I)Z

    move-result v6

    .line 2832
    invoke-static/range {p2 .. p2}, Landroid/content/pm/UserInfo;->isManagedProfile(I)Z

    move-result v8

    .line 2833
    and-int/lit8 v9, v2, 0x8

    if-eqz v9, :cond_c0

    const/4 v9, 0x1

    goto :goto_c1

    :cond_c0
    move v9, v5

    .line 2834
    :goto_c1
    and-int/lit16 v11, v2, 0x200

    if-eqz v11, :cond_c7

    const/4 v11, 0x1

    goto :goto_c8

    :cond_c7
    move v11, v5

    .line 2835
    :goto_c8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2840
    :try_start_cc
    iget-object v14, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_305

    .line 2841
    nop

    .line 2842
    const/16 v15, -0x2710

    if-eq v3, v15, :cond_ec

    .line 2843
    :try_start_d4
    iget-object v15, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_e9

    .line 2844
    :try_start_d7
    invoke-direct {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v16

    .line 2845
    monitor-exit v15
    :try_end_dc
    .catchall {:try_start_d7 .. :try_end_dc} :catchall_e6

    .line 2846
    if-nez v16, :cond_e3

    :try_start_de
    monitor-exit v14
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_e9

    .line 2977
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2846
    return-object v7

    :cond_e3
    move-object/from16 v15, v16

    goto :goto_ed

    .line 2845
    :catchall_e6
    move-exception v0

    :try_start_e7
    monitor-exit v15
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw v0

    .line 2935
    :catchall_e9
    move-exception v0

    goto/16 :goto_303

    .line 2842
    :cond_ec
    move-object v15, v7

    .line 2848
    :goto_ed
    if-eqz v8, :cond_110

    invoke-virtual {v0, v3, v5}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v16

    if-nez v16, :cond_110

    .line 2849
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add more managed profiles for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    monitor-exit v14
    :try_end_10c
    .catchall {:try_start_e8 .. :try_end_10c} :catchall_e9

    .line 2977
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2850
    return-object v7

    .line 2852
    :cond_110
    if-nez v6, :cond_128

    if-nez v8, :cond_128

    if-nez v11, :cond_128

    :try_start_116
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v11

    if-eqz v11, :cond_128

    .line 2855
    const-string v0, "UserManagerService"

    const-string v1, "Cannot add user. Maximum user limit is reached."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    monitor-exit v14
    :try_end_124
    .catchall {:try_start_116 .. :try_end_124} :catchall_e9

    .line 2977
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2856
    return-object v7

    .line 2859
    :cond_128
    if-eqz v6, :cond_13e

    if-nez v4, :cond_13e

    :try_start_12c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_13e

    .line 2860
    const-string v0, "UserManagerService"

    const-string v1, "Cannot add guest user. Guest user already exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    monitor-exit v14
    :try_end_13a
    .catchall {:try_start_12c .. :try_end_13a} :catchall_e9

    .line 2977
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2861
    return-object v7

    .line 2864
    :cond_13e
    if-eqz v9, :cond_154

    :try_start_140
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v11

    if-nez v11, :cond_154

    if-eqz v3, :cond_154

    .line 2866
    const-string v0, "UserManagerService"

    const-string v1, "Cannot add restricted profile - parent user must be owner"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    monitor-exit v14
    :try_end_150
    .catchall {:try_start_140 .. :try_end_150} :catchall_e9

    .line 2977
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2867
    return-object v7

    .line 2869
    :cond_154
    if-eqz v9, :cond_18d

    :try_start_156
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v11

    if-eqz v11, :cond_18d

    .line 2870
    if-nez v15, :cond_16a

    .line 2871
    const-string v0, "UserManagerService"

    const-string v1, "Cannot add restricted profile - parent user must be specified"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    monitor-exit v14
    :try_end_166
    .catchall {:try_start_156 .. :try_end_166} :catchall_e9

    .line 2977
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2873
    return-object v7

    .line 2875
    :cond_16a
    :try_start_16a
    iget-object v11, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v11

    if-nez v11, :cond_18d

    .line 2876
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    monitor-exit v14
    :try_end_189
    .catchall {:try_start_16a .. :try_end_189} :catchall_e9

    .line 2977
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2878
    return-object v7

    .line 2883
    :cond_18d
    :try_start_18d
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v11

    if-eqz v11, :cond_1ad

    if-nez v6, :cond_1ad

    if-nez v8, :cond_1ad

    .line 2884
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    if-nez v11, :cond_1ad

    .line 2885
    or-int/lit8 v2, v2, 0x1

    .line 2886
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1a2
    .catchall {:try_start_18d .. :try_end_1a2} :catchall_e9

    .line 2887
    :try_start_1a2
    iget-boolean v5, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v5, :cond_1a8

    .line 2888
    or-int/lit8 v2, v2, 0x2

    .line 2890
    :cond_1a8
    monitor-exit v11

    goto :goto_1ad

    :catchall_1aa
    move-exception v0

    monitor-exit v11
    :try_end_1ac
    .catchall {:try_start_1a2 .. :try_end_1ac} :catchall_1aa

    :try_start_1ac
    throw v0

    .line 2893
    :cond_1ad
    :goto_1ad
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v5

    .line 2894
    invoke-static {v5}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 2895
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->areGuestUsersEphemeral()Z

    move-result v11

    .line 2897
    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1bf
    .catchall {:try_start_1ac .. :try_end_1bf} :catchall_e9

    .line 2899
    if-nez v4, :cond_1d5

    if-eqz v6, :cond_1c5

    if-nez v11, :cond_1d3

    :cond_1c5
    :try_start_1c5
    iget-boolean v11, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-nez v11, :cond_1d3

    if-eqz v15, :cond_1d5

    iget-object v11, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2901
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v11

    if-eqz v11, :cond_1d5

    .line 2902
    :cond_1d3
    or-int/lit16 v2, v2, 0x100

    .line 2905
    :cond_1d5
    new-instance v11, Landroid/content/pm/UserInfo;

    invoke-direct {v11, v5, v1, v7, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2906
    iget v1, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v1, v11, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2907
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getCreationTime()J

    move-result-wide v1

    iput-wide v1, v11, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2908
    const/4 v1, 0x1

    iput-boolean v1, v11, Landroid/content/pm/UserInfo;->partial:Z

    .line 2909
    iput-boolean v4, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 2910
    sget-object v1, Landroid/os/Build;->DATE:Ljava/lang/String;

    iput-object v1, v11, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2911
    if-eqz v8, :cond_1fd

    const/16 v1, -0x2710

    if-eq v3, v1, :cond_1fd

    .line 2912
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(I)I

    move-result v1

    iput v1, v11, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2914
    :cond_1fd
    new-instance v1, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v1}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2915
    iput-object v11, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2916
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2917
    monitor-exit v10
    :try_end_20a
    .catchall {:try_start_1c5 .. :try_end_20a} :catchall_300

    .line 2918
    :try_start_20a
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2919
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2920
    if-eqz v15, :cond_249

    .line 2921
    if-eqz v8, :cond_22e

    .line 2922
    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_227

    .line 2923
    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iput v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2924
    invoke-direct {v0, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2926
    :cond_227
    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v2, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_249

    .line 2927
    :cond_22e
    if-eqz v9, :cond_249

    .line 2928
    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_243

    .line 2929
    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iput v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2930
    invoke-direct {v0, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2932
    :cond_243
    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v2, v11, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2935
    :cond_249
    :goto_249
    monitor-exit v14
    :try_end_24a
    .catchall {:try_start_20a .. :try_end_24a} :catchall_e9

    .line 2936
    :try_start_24a
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 2937
    iget v3, v11, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v7

    invoke-virtual {v2, v5, v3, v7}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 2938
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v3, v11, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v7, 0x3

    invoke-virtual {v2, v5, v3, v7}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 2940
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v3, p5

    invoke-virtual {v2, v5, v3}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I[Ljava/lang/String;)V

    .line 2941
    const/4 v2, 0x0

    iput-boolean v2, v11, Landroid/content/pm/UserInfo;->partial:Z

    .line 2942
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_272
    .catchall {:try_start_24a .. :try_end_272} :catchall_305

    .line 2943
    :try_start_272
    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2944
    monitor-exit v2
    :try_end_276
    .catchall {:try_start_272 .. :try_end_276} :catchall_2fd

    .line 2945
    :try_start_276
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2946
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2947
    if-eqz v6, :cond_28d

    .line 2948
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2
    :try_end_283
    .catchall {:try_start_276 .. :try_end_283} :catchall_305

    .line 2949
    :try_start_283
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2950
    monitor-exit v2

    goto :goto_28d

    :catchall_28a
    move-exception v0

    monitor-exit v2
    :try_end_28c
    .catchall {:try_start_283 .. :try_end_28c} :catchall_28a

    :try_start_28c
    throw v0

    .line 2952
    :cond_28d
    :goto_28d
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_290
    .catchall {:try_start_28c .. :try_end_290} :catchall_305

    .line 2953
    :try_start_290
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2954
    monitor-exit v2
    :try_end_296
    .catchall {:try_start_290 .. :try_end_296} :catchall_2fa

    .line 2956
    :try_start_296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PM.onNewUserCreated-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2957
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 2958
    invoke-virtual/range {p6 .. p6}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2959
    if-eqz v4, :cond_2f2

    .line 2965
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting pre-created user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_2d5
    .catchall {:try_start_296 .. :try_end_2d5} :catchall_305

    .line 2968
    :try_start_2d5
    invoke-interface {v0, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_2d8
    .catch Landroid/os/RemoteException; {:try_start_2d5 .. :try_end_2d8} :catch_2d9
    .catchall {:try_start_2d5 .. :try_end_2d8} :catchall_305

    .line 2971
    goto :goto_2f1

    .line 2969
    :catch_2d9
    move-exception v0

    move-object v1, v0

    .line 2970
    :try_start_2db
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not start pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2972
    :goto_2f1
    goto :goto_2f5

    .line 2973
    :cond_2f2
    invoke-direct {v0, v11}, Lcom/android/server/pm/UserManagerService;->dispatchUserAddedIntent(Landroid/content/pm/UserInfo;)V
    :try_end_2f5
    .catchall {:try_start_2db .. :try_end_2f5} :catchall_305

    .line 2977
    :goto_2f5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2978
    nop

    .line 2992
    return-object v11

    .line 2954
    :catchall_2fa
    move-exception v0

    :try_start_2fb
    monitor-exit v2
    :try_end_2fc
    .catchall {:try_start_2fb .. :try_end_2fc} :catchall_2fa

    :try_start_2fc
    throw v0
    :try_end_2fd
    .catchall {:try_start_2fc .. :try_end_2fd} :catchall_305

    .line 2944
    :catchall_2fd
    move-exception v0

    :try_start_2fe
    monitor-exit v2
    :try_end_2ff
    .catchall {:try_start_2fe .. :try_end_2ff} :catchall_2fd

    :try_start_2ff
    throw v0
    :try_end_300
    .catchall {:try_start_2ff .. :try_end_300} :catchall_305

    .line 2917
    :catchall_300
    move-exception v0

    :try_start_301
    monitor-exit v10
    :try_end_302
    .catchall {:try_start_301 .. :try_end_302} :catchall_300

    :try_start_302
    throw v0

    .line 2935
    :goto_303
    monitor-exit v14
    :try_end_304
    .catchall {:try_start_302 .. :try_end_304} :catchall_e9

    :try_start_304
    throw v0
    :try_end_305
    .catchall {:try_start_304 .. :try_end_305} :catchall_305

    .line 2977
    :catchall_305
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 2

    .line 4435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    return-void
.end method

.method private dispatchUserAddedIntent(Landroid/content/pm/UserInfo;)V
    .registers 6

    .line 3001
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3002
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3003
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3005
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo p1, "users_guest_created"

    goto :goto_30

    .line 3006
    :cond_23
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p1

    if-eqz p1, :cond_2d

    const-string/jumbo p1, "users_demo_created"

    goto :goto_30

    :cond_2d
    const-string/jumbo p1, "users_user_created"

    :goto_30
    const/4 v1, 0x1

    .line 3005
    invoke-static {v0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3007
    return-void
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8

    .line 4083
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    .line 4084
    const-string p1, "<unknown>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    .line 4086
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4087
    sub-long/2addr p2, p4

    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 4088
    const-string p2, " ago"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4089
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4091
    :goto_1c
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IZ)V
    .registers 5

    .line 932
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 933
    return-void

    .line 935
    :cond_7
    if-nez p3, :cond_2f

    .line 939
    const-string p3, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {p3, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p3

    .line 941
    if-eqz p3, :cond_12

    .line 942
    return-void

    .line 945
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 946
    const-class p3, Landroid/content/pm/ShortcutServiceInternal;

    .line 947
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutServiceInternal;

    .line 948
    if-eqz p3, :cond_27

    .line 949
    nop

    .line 950
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result p1

    .line 951
    if-eqz p1, :cond_27

    .line 952
    return-void

    .line 955
    :cond_27
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 936
    :cond_2f
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fallbackToSingleUserLP()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackagesLock",
            "mRestrictionsLock"
        }
    .end annotation

    .line 2277
    nop

    .line 2280
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2281
    const/16 v0, 0x13

    goto :goto_c

    .line 2280
    :cond_a
    const/16 v0, 0x10

    .line 2284
    :goto_c
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2285
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 2286
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2287
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2289
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2291
    :try_start_23
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1070025

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2293
    array-length v4, v2

    move v5, v3

    :goto_32
    if-ge v5, v4, :cond_43

    aget-object v6, v2, v5

    .line 2294
    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 2295
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_40} :catch_44

    .line 2293
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 2300
    :cond_43
    goto :goto_4c

    .line 2298
    :catch_44
    move-exception v2

    .line 2299
    const-string v4, "UserManagerService"

    const-string v5, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2302
    :goto_4c
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 2303
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2304
    :try_start_55
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2305
    monitor-exit v2

    goto :goto_5f

    :catchall_5c
    move-exception v0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw v0

    .line 2308
    :cond_5f
    :goto_5f
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2309
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2311
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2312
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2313
    return-void
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 3092
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3093
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3094
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_33

    .line 3095
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3096
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_30

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_30

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 3097
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_30

    .line 3098
    monitor-exit v0

    return-object v3

    .line 3094
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3101
    :cond_33
    monitor-exit v0

    .line 3102
    const/4 v0, 0x0

    return-object v0

    .line 3101
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1916
    nop

    .line 1917
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1919
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_2e

    .line 1920
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1921
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v3, :cond_2b

    .line 1922
    add-int/lit8 v2, v2, 0x1

    .line 1919
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1925
    :cond_2e
    return v2
.end method

.method private getCreationTime()J
    .registers 5

    .line 2996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2997
    const-wide v2, 0xdc46c32800L

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    return-wide v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 5

    .line 1597
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1598
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1599
    if-nez v1, :cond_16

    .line 1600
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1601
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1603
    :cond_16
    monitor-exit v0

    return-object v1

    .line 1604
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1697
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    .line 1698
    :cond_6
    const/4 v0, 0x4

    .line 1699
    :goto_7
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 460
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 461
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    .line 462
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

    .line 4443
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 4444
    return v1

    .line 4446
    :cond_6
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 3

    .line 2316
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreCreatedUserLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 3026
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3027
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_54

    .line 3028
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3030
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_51

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, -0x11

    if-ne v3, p1, :cond_51

    .line 3032
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_50

    .line 3033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found pre-created user for flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    invoke-static {p1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but it\'s not initialized yet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3035
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3033
    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    goto :goto_51

    .line 3038
    :cond_50
    return-object v2

    .line 3027
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3041
    :cond_54
    const/4 p1, 0x0

    return-object p1
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 771
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 772
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 773
    if-nez p1, :cond_12

    .line 775
    return-object v0

    .line 777
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 778
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_4d

    .line 779
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 780
    invoke-static {p1, v3}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 781
    goto :goto_4a

    .line 783
    :cond_2c
    if-eqz p2, :cond_35

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_35

    .line 784
    goto :goto_4a

    .line 786
    :cond_35
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 787
    goto :goto_4a

    .line 789
    :cond_40
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_45

    .line 790
    goto :goto_4a

    .line 792
    :cond_45
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 778
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 794
    :cond_4d
    return-object v0
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 850
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 851
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 852
    return-object v1

    .line 854
    :cond_8
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 855
    if-eq v0, p1, :cond_16

    const/16 p1, -0x2710

    if-ne v0, p1, :cond_11

    goto :goto_16

    .line 858
    :cond_11
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1

    .line 856
    :cond_16
    :goto_16
    return-object v1
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .registers 7
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

    .line 748
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object p1

    .line 749
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 750
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 751
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 752
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 754
    if-nez p3, :cond_2f

    .line 755
    new-instance v2, Landroid/content/pm/UserInfo;

    invoke-direct {v2, v1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 756
    const/4 v1, 0x0

    iput-object v1, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 757
    iput-object v1, v2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_33

    .line 759
    :cond_2f
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 761
    :goto_33
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 763
    :cond_39
    return-object p2
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6

    .line 3416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3418
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 3423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3418
    return p1

    .line 3423
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3420
    :catch_1b
    move-exception p1

    .line 3421
    const/4 p1, -0x1

    .line 3423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3421
    return p1
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1325
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1326
    const/4 p1, 0x0

    return-object p1

    .line 1328
    :cond_1a
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4

    .line 1347
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object p1

    .line 1349
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 1312
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1314
    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserInfo: unknown user #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-object v1

    .line 1318
    :cond_30
    if-eqz v0, :cond_34

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_34
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 1336
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1337
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1338
    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit v0

    return-object p1

    .line 1339
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .registers 1

    .line 2040
    const-string v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .registers 3

    .line 2027
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2028
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 2030
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2031
    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 2028
    :goto_20
    return p0
.end method

.method private static final hasManageUsersPermission()Z
    .registers 2

    .line 2016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2017
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v0, :cond_19

    .line 2019
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 2017
    :goto_1a
    return v0
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .registers 4

    .line 1956
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private initDefaultGuestRestrictions()V
    .registers 5

    .line 1465
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1466
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1467
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1468
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1469
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1470
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1472
    :cond_2c
    monitor-exit v0

    .line 1473
    return-void

    .line 1472
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1594
    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 4

    .line 863
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_13

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .registers 7

    .line 820
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 822
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_11

    goto :goto_27

    .line 825
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 826
    if-eqz p2, :cond_25

    iget v2, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1c

    goto :goto_25

    .line 830
    :cond_1c
    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p2, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p1, p2, :cond_23

    const/4 v1, 0x1

    :cond_23
    monitor-exit v0

    return v1

    .line 828
    :cond_25
    :goto_25
    monitor-exit v0

    return v1

    .line 823
    :cond_27
    :goto_27
    monitor-exit v0

    return v1

    .line 831
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method private isUserLimitReached()Z
    .registers 3

    .line 1879
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1880
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 1881
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 1882
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1881
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private logQuietModeEnabled(IZLjava/lang/String;)V
    .registers 11

    .line 1004
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    .line 1006
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_45

    .line 1007
    if-nez p1, :cond_b

    .line 1008
    return-void

    .line 1010
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1011
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    .line 1012
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_26

    .line 1013
    :cond_20
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v2, v2, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v2, v0, v2

    .line 1014
    :goto_26
    const/16 v4, 0x37

    .line 1015
    invoke-static {v4}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    .line 1016
    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    .line 1017
    invoke-virtual {p3, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    .line 1018
    invoke-virtual {p2, v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    .line 1019
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1020
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 1021
    return-void

    .line 1006
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    .line 1802
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1803
    return-void

    .line 1806
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1807
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1809
    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1830
    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3438
    const-string v0, "UserManagerService"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3440
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    .line 3441
    return-object v1

    .line 3444
    :cond_17
    const/4 v3, 0x0

    .line 3446
    :try_start_18
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 3447
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3448
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3449
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3450
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_50

    .line 3451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read restrictions file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3452
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3451
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4b} :catch_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_4b} :catch_61
    .catchall {:try_start_18 .. :try_end_4b} :catchall_5f

    .line 3453
    nop

    .line 3461
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3453
    return-object v1

    .line 3455
    :cond_50
    :goto_50
    :try_start_50
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5b

    .line 3456
    invoke-static {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5a} :catch_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_5a} :catch_61
    .catchall {:try_start_50 .. :try_end_5a} :catchall_5f

    goto :goto_50

    .line 3461
    :cond_5b
    :goto_5b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3462
    goto :goto_7b

    .line 3461
    :catchall_5f
    move-exception p0

    goto :goto_7c

    .line 3458
    :catch_61
    move-exception v2

    .line 3459
    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_5f

    goto :goto_5b

    .line 3463
    :goto_7b
    return-object v1

    .line 3461
    :goto_7c
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 3429
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3430
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 3431
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3432
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
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

    .line 3512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3513
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3514
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3515
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 3517
    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
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

    .line 3468
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 3469
    const/4 v1, 0x2

    if-ne v0, v1, :cond_ce

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 3470
    const/4 v0, 0x0

    const-string v2, "key"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3471
    const-string/jumbo v3, "type"

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3472
    const-string v4, "m"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3473
    if-eqz v0, :cond_63

    .line 3474
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3475
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3476
    :cond_30
    :goto_30
    if-lez v0, :cond_56

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_56

    .line 3477
    if-ne v3, v1, :cond_30

    .line 3478
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3479
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3480
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 3483
    :cond_56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 3484
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3485
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3486
    goto :goto_ce

    :cond_63
    const-string v0, "B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3487
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_ce

    .line 3488
    :cond_73
    const-string v0, "BA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 3489
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3491
    :goto_84
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 3492
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    .line 3493
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3494
    goto :goto_84

    .line 3495
    :cond_92
    nop

    .line 3496
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 3495
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3497
    goto :goto_ce

    .line 3498
    :cond_a3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3499
    const-string p2, "b"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 3500
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_ce

    .line 3501
    :cond_bb
    const-string p2, "i"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cb

    .line 3502
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_ce

    .line 3504
    :cond_cb
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    :cond_ce
    :goto_ce
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    .line 2674
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2675
    if-nez p1, :cond_8

    return p3

    .line 2677
    :cond_8
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 2678
    :catch_d
    move-exception p1

    .line 2679
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 6

    .line 2684
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2685
    if-nez p1, :cond_8

    return-wide p3

    .line 2687
    :cond_8
    :try_start_8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return-wide p1

    .line 2688
    :catch_d
    move-exception p1

    .line 2689
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 10

    .line 2509
    const-string v0, "Error reading user list"

    const-string v1, "UserManagerService"

    .line 2511
    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2512
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2513
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2a} :catch_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_2a} :catch_38
    .catchall {:try_start_5 .. :try_end_2a} :catchall_36

    .line 2514
    :try_start_2a
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2e} :catch_32
    .catchall {:try_start_2a .. :try_end_2e} :catchall_48

    .line 2520
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2514
    return-object p1

    .line 2517
    :catch_32
    move-exception p1

    goto :goto_3a

    .line 2515
    :catch_34
    move-exception p1

    goto :goto_40

    .line 2520
    :catchall_36
    move-exception p1

    goto :goto_4a

    .line 2517
    :catch_38
    move-exception p1

    move-object v3, v2

    .line 2518
    :goto_3a
    :try_start_3a
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 2515
    :catch_3e
    move-exception p1

    move-object v3, v2

    .line 2516
    :goto_40
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_48

    .line 2520
    :goto_43
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2521
    nop

    .line 2522
    return-object v2

    .line 2520
    :catchall_48
    move-exception p1

    move-object v2, v3

    :goto_4a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private readUserListLP()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2098
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2099
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 2100
    return-void

    .line 2102
    :cond_c
    nop

    .line 2103
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2105
    const/4 v1, 0x0

    :try_start_15
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_12b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_19} :catch_12b
    .catchall {:try_start_15 .. :try_end_19} :catchall_126

    .line 2106
    :try_start_19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2107
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2109
    :goto_26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_31

    if-eq v3, v4, :cond_31

    goto :goto_26

    .line 2114
    :cond_31
    if-eq v3, v5, :cond_41

    .line 2115
    const-string v1, "UserManagerService"

    const-string v2, "Unable to read user list"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3d} :catch_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_3d} :catch_123
    .catchall {:try_start_19 .. :try_end_3d} :catchall_121

    .line 2186
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2117
    return-void

    .line 2120
    :cond_41
    const/4 v3, -0x1

    :try_start_42
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2121
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "users"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 2122
    const-string/jumbo v3, "nextSerialNumber"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2123
    if-eqz v3, :cond_60

    .line 2124
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2126
    :cond_60
    const-string/jumbo v3, "version"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2127
    if-eqz v3, :cond_6f

    .line 2128
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2134
    :cond_6f
    move-object v3, v1

    .line 2136
    :cond_70
    :goto_70
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_117

    .line 2137
    if-ne v6, v5, :cond_70

    .line 2138
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2139
    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 2140
    const-string v6, "id"

    invoke-interface {v2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2142
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v6

    .line 2144
    if-eqz v6, :cond_b9

    .line 2145
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_98} :catch_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_98} :catch_123
    .catchall {:try_start_42 .. :try_end_98} :catchall_121

    .line 2146
    :try_start_98
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2147
    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v8, :cond_ad

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    if-gt v8, v9, :cond_b4

    .line 2149
    :cond_ad
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2151
    :cond_b4
    monitor-exit v7

    goto :goto_b9

    :catchall_b6
    move-exception v1

    monitor-exit v7
    :try_end_b8
    .catchall {:try_start_98 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v1

    .line 2153
    :cond_b9
    :goto_b9
    goto :goto_115

    :cond_ba
    const-string v7, "guestRestrictions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 2154
    :cond_c2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_115

    const/4 v7, 0x3

    if-eq v6, v7, :cond_115

    .line 2156
    if-ne v6, v5, :cond_c2

    .line 2157
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "restrictions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_115

    .line 2158
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v6
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_dd} :catch_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b8 .. :try_end_dd} :catch_123
    .catchall {:try_start_b8 .. :try_end_dd} :catchall_121

    .line 2159
    :try_start_dd
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 2160
    invoke-static {v2, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 2161
    monitor-exit v6

    goto :goto_115

    :catchall_e4
    move-exception v1

    monitor-exit v6
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_e4

    :try_start_e6
    throw v1

    .line 2166
    :cond_e7
    const-string v7, "deviceOwnerUserId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_106

    const-string v7, "globalRestrictionOwnerUserId"

    .line 2168
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f8

    goto :goto_106

    .line 2173
    :cond_f8
    const-string v7, "device_policy_restrictions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 2175
    nop

    .line 2176
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_115

    .line 2169
    :cond_106
    :goto_106
    const-string v6, "id"

    invoke-interface {v2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2170
    if-eqz v6, :cond_114

    .line 2171
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2173
    :cond_114
    nop

    .line 2178
    :cond_115
    :goto_115
    goto/16 :goto_70

    .line 2181
    :cond_117
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2182
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_11d} :catch_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e6 .. :try_end_11d} :catch_123
    .catchall {:try_start_e6 .. :try_end_11d} :catchall_121

    .line 2186
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_132

    :catchall_121
    move-exception v1

    goto :goto_134

    .line 2183
    :catch_123
    move-exception v1

    move-object v1, v0

    goto :goto_12c

    .line 2186
    :catchall_126
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_134

    .line 2183
    :catch_12b
    move-exception v0

    .line 2184
    :goto_12c
    :try_start_12c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_126

    .line 2186
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2187
    :goto_132
    nop

    .line 2188
    return-void

    .line 2186
    :goto_134
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private removeNonSystemUsers()V
    .registers 7

    .line 4401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4402
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4403
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4404
    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_25

    .line 4405
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4406
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    .line 4407
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4404
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4410
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 4411
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4412
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 4413
    goto :goto_2a

    .line 4414
    :cond_3c
    return-void

    .line 4410
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private removeUserState(I)V
    .registers 6

    .line 3304
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3309
    goto :goto_2a

    .line 3305
    :catch_e
    move-exception v0

    .line 3307
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

    .line 3313
    :goto_2a
    :try_start_2a
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 3314
    if-eqz v0, :cond_33

    .line 3315
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34

    .line 3319
    :cond_33
    goto :goto_3d

    .line 3317
    :catch_34
    move-exception v0

    .line 3318
    const-string v0, "UserManagerService"

    const-string/jumbo v1, "unable to clear GK secure user id"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :goto_3d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 3325
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 3329
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3330
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3331
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3332
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_cf

    .line 3333
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 3334
    :try_start_59
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3335
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_cc

    .line 3336
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3337
    :try_start_62
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3338
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3339
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3340
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3341
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 3342
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3343
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 3345
    :cond_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_c9

    .line 3347
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3348
    :try_start_8a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3349
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_c6

    .line 3351
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3352
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 3353
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3359
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mNotifyPackageManagerOnUserRemoval:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 3360
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 3361
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 3362
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->userRemovedForTest()V

    .line 3364
    :cond_c5
    return-void

    .line 3349
    :catchall_c6
    move-exception p1

    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw p1

    .line 3345
    :catchall_c9
    move-exception p1

    :try_start_ca
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw p1

    .line 3335
    :catchall_cc
    move-exception p1

    :try_start_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw p1

    .line 3332
    :catchall_cf
    move-exception p1

    :try_start_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p1
.end method

.method private removeUserUnchecked(I)Z
    .registers 10

    .line 3175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3178
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 3179
    const/4 v3, 0x0

    if-ne v2, p1, :cond_17

    .line 3180
    const-string p1, "UserManagerService"

    const-string v2, "Current user cannot be removed."

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_d6

    .line 3181
    nop

    .line 3247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3181
    return v3

    .line 3183
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_d6

    .line 3184
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_d3

    .line 3185
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3186
    if-nez p1, :cond_34

    .line 3187
    const-string p1, "UserManagerService"

    const-string v5, "System user cannot be removed."

    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_d0

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_d3

    .line 3247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3188
    return v3

    .line 3191
    :cond_34
    const/4 v6, 0x1

    if-nez v5, :cond_50

    .line 3192
    :try_start_37
    const-string v5, "UserManagerService"

    const-string v7, "Cannot remove user %d, invalid user id provided."

    new-array v6, v6, [Ljava/lang/Object;

    .line 3193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 3192
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_d0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_d3

    .line 3247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3194
    return v3

    .line 3197
    :cond_50
    :try_start_50
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 3198
    const-string v5, "UserManagerService"

    const-string v7, "User %d is already scheduled for removal."

    new-array v6, v6, [Ljava/lang/Object;

    .line 3199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 3198
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_d0

    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_d3

    .line 3247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3200
    return v3

    .line 3203
    :cond_71
    :try_start_71
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 3204
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_d0

    .line 3209
    :try_start_75
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v6, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 3212
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 3213
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3214
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_d3

    .line 3216
    :try_start_85
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8a} :catch_8b
    .catchall {:try_start_85 .. :try_end_8a} :catchall_d6

    .line 3219
    goto :goto_93

    .line 3217
    :catch_8b
    move-exception v2

    .line 3218
    :try_start_8c
    const-string v4, "UserManagerService"

    const-string v7, "Unable to notify AppOpsService of removing user."

    invoke-static {v4, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3221
    :goto_93
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_ae

    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3222
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 3225
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_ae
    .catchall {:try_start_8c .. :try_end_ae} :catchall_d6

    .line 3231
    :cond_ae
    :try_start_ae
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v4, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v2, p1, v6, v4}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result p1
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_bb} :catch_c3
    .catchall {:try_start_ae .. :try_end_bb} :catchall_d6

    .line 3244
    nop

    .line 3245
    if-nez p1, :cond_bf

    move v3, v6

    .line 3247
    :cond_bf
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3245
    return v3

    .line 3241
    :catch_c3
    move-exception p1

    .line 3242
    :try_start_c4
    const-string v2, "UserManagerService"

    const-string v4, "Failed to stop user during removal."

    invoke-static {v2, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_d6

    .line 3243
    nop

    .line 3247
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    return v3

    .line 3204
    :catchall_d0
    move-exception p1

    :try_start_d1
    monitor-exit v4
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    :try_start_d2
    throw p1

    .line 3214
    :catchall_d3
    move-exception p1

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d3

    :try_start_d5
    throw p1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d6

    .line 3247
    :catchall_d6
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private runList(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$Shell;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3897
    move-object/from16 v0, p1

    .line 3898
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3900
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserManagerService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4f

    .line 3901
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x5e9

    const/4 v8, -0x1

    if-eq v6, v7, :cond_25

    const v7, 0x2901001

    if-eq v6, v7, :cond_1b

    :cond_1a
    goto :goto_2f

    :cond_1b
    const-string v6, "--all"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v6, v5

    goto :goto_30

    :cond_25
    const-string v6, "-v"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v6, v1

    goto :goto_30

    :goto_2f
    move v6, v8

    :goto_30
    if-eqz v6, :cond_4c

    if-eq v6, v5, :cond_49

    .line 3909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3910
    return v8

    .line 3906
    :cond_49
    nop

    .line 3907
    move v2, v5

    goto :goto_4e

    .line 3903
    :cond_4c
    nop

    .line 3904
    move v3, v5

    .line 3910
    :goto_4e
    goto :goto_5

    .line 3913
    :cond_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3914
    xor-int/lit8 v6, v2, 0x1

    xor-int/2addr v2, v5

    move-object/from16 v7, p0

    invoke-virtual {v7, v6, v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    .line 3916
    if-nez v2, :cond_64

    .line 3917
    const-string v1, "Error: couldn\'t get users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3918
    return v5

    .line 3920
    :cond_64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 3921
    const/16 v7, -0x2710

    .line 3922
    if-eqz v3, :cond_80

    .line 3923
    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "%d users:\n\n"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3924
    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    goto :goto_85

    .line 3929
    :cond_80
    const-string v8, "Users:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    :goto_85
    move v8, v1

    :goto_86
    if-ge v8, v6, :cond_fd

    .line 3932
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 3933
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v10, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v10

    .line 3934
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v7, :cond_9a

    move v11, v5

    goto :goto_9b

    :cond_9a
    move v11, v1

    .line 3935
    :goto_9b
    const/4 v12, 0x2

    const-string v13, ""

    if-eqz v3, :cond_eb

    .line 3936
    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v1

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    iget-object v15, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v15, v14, v12

    const/4 v12, 0x3

    iget v15, v9, Landroid/content/pm/UserInfo;->flags:I

    .line 3937
    invoke-static {v15}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v12, 0x4

    .line 3938
    if-eqz v10, :cond_c5

    const-string v10, " (running)"

    goto :goto_c6

    :cond_c5
    move-object v10, v13

    :goto_c6
    aput-object v10, v14, v12

    const/4 v10, 0x5

    .line 3939
    iget-boolean v12, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v12, :cond_d0

    const-string v12, " (partial)"

    goto :goto_d1

    :cond_d0
    move-object v12, v13

    :goto_d1
    aput-object v12, v14, v10

    const/4 v10, 0x6

    .line 3940
    iget-boolean v9, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v9, :cond_db

    const-string v9, " (pre-created)"

    goto :goto_dc

    :cond_db
    move-object v9, v13

    :goto_dc
    aput-object v9, v14, v10

    const/4 v9, 0x7

    .line 3941
    if-eqz v11, :cond_e3

    const-string v13, " (current)"

    :cond_e3
    aput-object v13, v14, v9

    .line 3936
    const-string v9, "%d: id=%d, name=%s, flags=%s%s%s%s%s\n"

    invoke-virtual {v0, v9, v14}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_fa

    .line 3946
    :cond_eb
    new-array v11, v12, [Ljava/lang/Object;

    aput-object v9, v11, v1

    if-eqz v10, :cond_f3

    const-string v13, " running"

    :cond_f3
    aput-object v13, v11, v5

    const-string v9, "\t%s%s\n"

    invoke-virtual {v0, v9, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3931
    :goto_fa
    add-int/lit8 v8, v8, 0x1

    goto :goto_86

    .line 3949
    :cond_fd
    return v1
.end method

.method private scanNextAvailableIdLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .line 3773
    const/16 v0, 0xa

    :goto_2
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1a

    .line 3774
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3775
    return v0

    .line 3773
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3778
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 5

    .line 2325
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2326
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2327
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2329
    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 6

    .line 3367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3368
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3370
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3371
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3372
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3373
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 4

    .line 1396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1397
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1398
    const/high16 p1, 0x40000000  # 2.0f

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1399
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1400
    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V
    .registers 7

    .line 1500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1504
    invoke-static {p2, p3, p4, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1508
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1510
    :try_start_10
    iget-object p4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result p4

    .line 1512
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v0

    .line 1515
    if-eqz p3, :cond_21

    .line 1518
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_29

    .line 1520
    :cond_21
    iget p3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne p3, p1, :cond_29

    .line 1525
    const/16 p3, -0x2710

    iput p3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 1528
    :cond_29
    :goto_29
    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_50

    .line 1536
    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1537
    if-nez v0, :cond_31

    if-eqz p4, :cond_38

    .line 1538
    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1540
    :cond_38
    monitor-exit p3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_4d

    .line 1542
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1543
    if-eqz p4, :cond_44

    .line 1544
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_49

    .line 1548
    :catchall_42
    move-exception p1

    goto :goto_4b

    .line 1545
    :cond_44
    if-eqz v0, :cond_49

    .line 1546
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1548
    :cond_49
    :goto_49
    monitor-exit p2

    .line 1549
    return-void

    .line 1548
    :goto_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_42

    throw p1

    .line 1540
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1

    .line 1528
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit p2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 10

    .line 963
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 965
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 967
    if-eqz v1, :cond_84

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 970
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_31

    .line 971
    const-string p1, "UserManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Quiet mode is already "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    monitor-exit v0

    return-void

    .line 974
    :cond_31
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 975
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 976
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_a0

    .line 977
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 978
    :try_start_41
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 979
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_81

    .line 981
    const/4 v0, 0x0

    if-eqz p2, :cond_5e

    .line 982
    :try_start_48
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    const/4 v3, 0x1

    invoke-interface {p3, p1, v3, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 983
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    .line 984
    invoke-virtual {p3, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_6e

    .line 993
    :catch_5c
    move-exception p1

    goto :goto_72

    .line 986
    :cond_5e
    if-eqz p3, :cond_66

    .line 987
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_67

    .line 988
    :cond_66
    nop

    .line 989
    :goto_67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    .line 992
    :goto_6e
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/UserManagerService;->logQuietModeEnabled(IZLjava/lang/String;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_71} :catch_5c

    .line 996
    goto :goto_75

    .line 995
    :goto_72
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 997
    :goto_75
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 999
    return-void

    .line 979
    :catchall_81
    move-exception p1

    :try_start_82
    monitor-exit v4
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p1

    .line 968
    :cond_84
    :try_start_84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "User "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 976
    :catchall_a0
    move-exception p1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .registers 7

    .line 1043
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1048
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 1050
    if-nez v0, :cond_12

    .line 1051
    return-void

    .line 1053
    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1055
    const-string v2, "android.intent.extra.INTENT"

    if-eqz p2, :cond_20

    .line 1056
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1058
    :cond_20
    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1061
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const/high16 v3, 0x54000000

    invoke-static {p1, p2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1070
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1071
    const/high16 p1, 0x10800000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1072
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1073
    return-void
.end method

.method private updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1558
    nop

    .line 1559
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    .line 1560
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    .line 1561
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1562
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    .line 1564
    :cond_19
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1567
    :cond_1c
    :goto_1c
    return v0
.end method

.method private updateUserIds()V
    .registers 8

    .line 3652
    nop

    .line 3653
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3654
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3655
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_26

    .line 3656
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3657
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_23

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_23

    .line 3658
    add-int/lit8 v4, v4, 0x1

    .line 3655
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3661
    :cond_26
    new-array v3, v4, [I

    .line 3662
    nop

    .line 3663
    move v4, v2

    :goto_2a
    if-ge v2, v1, :cond_4c

    .line 3664
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3665
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_49

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_49

    .line 3666
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v4

    move v4, v5

    .line 3663
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 3669
    :cond_4c
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 3670
    monitor-exit v0

    .line 3671
    return-void

    .line 3670
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1751
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 1752
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1751
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1755
    if-eqz p1, :cond_3c

    .line 1757
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1759
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v3

    :goto_1d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1760
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1763
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1764
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1768
    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object p1

    .line 1770
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1778
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_53

    .line 1779
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1791
    :cond_53
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1793
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1794
    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2196
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2197
    nop

    .line 2198
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2c

    .line 2200
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 2201
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string v5, "Primary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2202
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2203
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104049e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2204
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2206
    :cond_2b
    goto :goto_2d

    .line 2198
    :cond_2c
    move v1, v0

    .line 2209
    :goto_2d
    const/4 v3, 0x2

    if-ge v1, v3, :cond_48

    .line 2211
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 2212
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_47

    .line 2213
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2214
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2216
    :cond_47
    move v1, v3

    .line 2220
    :cond_48
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4c

    .line 2221
    move v1, v3

    .line 2224
    :cond_4c
    const/4 v3, 0x5

    if-ge v1, v3, :cond_53

    .line 2225
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2226
    move v1, v3

    .line 2229
    :cond_53
    const/16 v3, -0x2710

    const/4 v4, 0x6

    if-ge v1, v4, :cond_90

    .line 2230
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    .line 2231
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2232
    move v6, v2

    :goto_60
    :try_start_60
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8a

    .line 2233
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2235
    if-nez v1, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v8, v3, :cond_87

    .line 2238
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v2, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2239
    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2232
    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2242
    :cond_8a
    monitor-exit v5

    .line 2243
    move v1, v4

    goto :goto_90

    .line 2242
    :catchall_8d
    move-exception p1

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_60 .. :try_end_8f} :catchall_8d

    throw p1

    .line 2246
    :cond_90
    :goto_90
    const/4 v2, 0x7

    if-ge v1, v2, :cond_b6

    .line 2248
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2249
    :try_start_96
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_a7

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v1, v3, :cond_a7

    .line 2251
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2256
    :cond_a7
    const-string p1, "ensure_verify_apps"

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {p1, v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 2259
    monitor-exit v4

    .line 2260
    move v1, v2

    goto :goto_b6

    .line 2259
    :catchall_b3
    move-exception p1

    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_96 .. :try_end_b5} :catchall_b3

    throw p1

    .line 2263
    :cond_b6
    :goto_b6
    if-ge v1, v2, :cond_d9

    .line 2264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t upgrade as expected to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 2267
    :cond_d9
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2269
    iget p1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v0, p1, :cond_e2

    .line 2270
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2273
    :cond_e2
    :goto_e2
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 3

    .line 1146
    if-eqz p1, :cond_16

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_16

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_16

    .line 1147
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1148
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1149
    return-object v0

    .line 1151
    :cond_16
    return-object p1
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .registers 6

    .line 4499
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 4500
    if-ne v0, p2, :cond_e

    .line 4504
    return-void

    .line 4501
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the calling uid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3532
    const-string/jumbo v0, "restrictions"

    .line 3534
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_3a

    .line 3535
    :try_start_8
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3537
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3538
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3539
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3540
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3542
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3543
    invoke-static {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3544
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3546
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3547
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    .line 3551
    goto :goto_46

    .line 3548
    :catch_38
    move-exception p0

    goto :goto_3c

    :catch_3a
    move-exception p0

    move-object v2, v1

    .line 3549
    :goto_3c
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3550
    const-string p1, "UserManagerService"

    const-string v0, "Error writing application restrictions list"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3552
    :goto_46
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppRestrictionsLock"
        }
    .end annotation

    .line 3523
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3524
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    .line 3525
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3526
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 3527
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 8

    .line 2059
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2060
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2061
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    .line 2063
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2064
    nop

    .line 2065
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f9

    .line 2064
    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2070
    :cond_31
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v0, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 2071
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 2072
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_52} :catch_5b

    .line 2075
    :cond_52
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_55} :catch_5b

    .line 2078
    goto :goto_57

    .line 2076
    :catch_56
    move-exception p1

    .line 2079
    :goto_57
    :try_start_57
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 2082
    goto :goto_63

    .line 2080
    :catch_5b
    move-exception p1

    .line 2081
    const-string p2, "UserManagerService"

    const-string v0, "Error setting photo for user "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2083
    :goto_63
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3556
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3557
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3558
    const-string v3, "entry"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3559
    const-string v5, "key"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3561
    instance-of v1, v2, Ljava/lang/Boolean;

    const-string/jumbo v5, "type"

    if-eqz v1, :cond_38

    .line 3562
    const-string v1, "b"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3563
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c9

    .line 3564
    :cond_38
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_4a

    .line 3565
    const-string v1, "i"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3566
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c9

    .line 3567
    :cond_4a
    const-string v1, ""

    if-eqz v2, :cond_bb

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_53

    goto :goto_bb

    .line 3570
    :cond_53
    instance-of v6, v2, Landroid/os/Bundle;

    const-string v7, "B"

    if-eqz v6, :cond_62

    .line 3571
    invoke-interface {p1, v4, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3572
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_c9

    .line 3573
    :cond_62
    instance-of v6, v2, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    if-eqz v6, :cond_91

    .line 3574
    const-string v1, "BA"

    invoke-interface {p1, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3575
    check-cast v2, [Landroid/os/Parcelable;

    .line 3576
    array-length v1, v2

    :goto_6f
    if-ge v8, v1, :cond_90

    aget-object v6, v2, v8

    .line 3577
    instance-of v9, v6, Landroid/os/Bundle;

    if-eqz v9, :cond_88

    .line 3580
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3581
    invoke-interface {p1, v4, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3582
    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3583
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3576
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 3578
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bundle-array can only hold Bundles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3585
    :cond_90
    goto :goto_c9

    .line 3586
    :cond_91
    const-string/jumbo v6, "sa"

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3587
    check-cast v2, [Ljava/lang/String;

    .line 3588
    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "m"

    invoke-interface {p1, v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3589
    array-length v5, v2

    :goto_a4
    if-ge v8, v5, :cond_c9

    aget-object v6, v2, v8

    .line 3590
    const-string/jumbo v7, "value"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3591
    if-eqz v6, :cond_b1

    goto :goto_b2

    :cond_b1
    move-object v6, v1

    :goto_b2
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3592
    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3589
    add-int/lit8 v8, v8, 0x1

    goto :goto_a4

    .line 3568
    :cond_bb
    :goto_bb
    const-string/jumbo v6, "s"

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3569
    if-eqz v2, :cond_c6

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_c6
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3595
    :cond_c9
    :goto_c9
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3596
    goto/16 :goto_8

    .line 3597
    :cond_ce
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 7

    .line 2335
    nop

    .line 2336
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2338
    :try_start_22
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_34

    .line 2339
    :try_start_26
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2340
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 2341
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_32

    .line 2345
    goto :goto_53

    .line 2342
    :catch_32
    move-exception v2

    goto :goto_36

    :catch_34
    move-exception v2

    const/4 v1, 0x0

    .line 2343
    :goto_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UserManagerService"

    invoke-static {v3, p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2344
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2346
    :goto_53
    return-void
.end method

.method private writeUserListLP()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock",
            "mPackagesLock"
        }
    .end annotation

    .line 2459
    nop

    .line 2460
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2462
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_ca

    .line 2463
    :try_start_d
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2466
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2467
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2468
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2469
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2471
    const-string/jumbo v3, "users"

    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    const-string/jumbo v3, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    const-string/jumbo v3, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2475
    const-string v3, "guestRestrictions"

    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2476
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_53} :catch_c8

    .line 2477
    :try_start_53
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v6, "restrictions"

    .line 2478
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2479
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_c5

    .line 2480
    :try_start_5c
    const-string v3, "guestRestrictions"

    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2481
    const-string v3, "deviceOwnerUserId"

    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2482
    const-string v3, "id"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    const-string v3, "deviceOwnerUserId"

    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2485
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_79} :catch_c8

    .line 2486
    :try_start_79
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2487
    const/4 v6, 0x0

    move v7, v6

    :goto_83
    array-length v8, v5

    if-ge v7, v8, :cond_97

    .line 2488
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2489
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    aput v8, v5, v7

    .line 2487
    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    .line 2491
    :cond_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_79 .. :try_end_98} :catchall_c2

    .line 2492
    :try_start_98
    array-length v3, v5

    :goto_99
    if-ge v6, v3, :cond_b5

    aget v7, v5, v6

    .line 2493
    const-string/jumbo v8, "user"

    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2494
    const-string v8, "id"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2495
    const-string/jumbo v7, "user"

    invoke-interface {v4, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2492
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 2498
    :cond_b5
    const-string/jumbo v3, "users"

    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2500
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2501
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_c1} :catch_c8

    .line 2505
    goto :goto_d6

    .line 2491
    :catchall_c2
    move-exception v1

    :try_start_c3
    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v1
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c5} :catch_c8

    .line 2479
    :catchall_c5
    move-exception v1

    :try_start_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v1
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_c8} :catch_c8

    .line 2502
    :catch_c8
    move-exception v1

    goto :goto_cc

    :catch_ca
    move-exception v2

    move-object v2, v1

    .line 2503
    :goto_cc
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2504
    const-string v0, "UserManagerService"

    const-string v1, "Error writing user list"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    :goto_d6
    return-void
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3257
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3258
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3260
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_1e

    .line 3261
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3263
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

    .line 1845
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1849
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1871
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1872
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRestrictionsLock"
        }
    .end annotation

    .line 1835
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1836
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 7

    .line 1887
    const-string v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1888
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1889
    return v1

    .line 1891
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1893
    return v1

    .line 1896
    :cond_1c
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1897
    if-lez v0, :cond_2c

    if-eqz p2, :cond_2c

    move p2, v2

    goto :goto_2d

    :cond_2c
    move p2, v1

    .line 1898
    :goto_2d
    sub-int/2addr v0, p2

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v3

    if-lt v0, v3, :cond_35

    .line 1899
    return v1

    .line 1901
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1902
    :try_start_38
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1903
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_55

    .line 1906
    :cond_45
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result p1

    sub-int/2addr p1, p2

    .line 1909
    if-eq p1, v2, :cond_52

    .line 1910
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result p2

    if-ge p1, p2, :cond_53

    :cond_52
    move v1, v2

    :cond_53
    monitor-exit v0

    .line 1909
    return v1

    .line 1904
    :cond_55
    :goto_55
    monitor-exit v0

    return v1

    .line 1911
    :catchall_57
    move-exception p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6

    .line 1276
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1279
    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_2d

    .line 1282
    :cond_16
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1283
    monitor-exit v0

    return v2

    .line 1286
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0

    return v2

    .line 1280
    :cond_2d
    :goto_2d
    monitor-exit v0

    return v2

    .line 1287
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method cleanupPartialUsers()V
    .registers 8

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 595
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_3e

    .line 596
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 597
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_2e

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v6, :cond_2e

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_3b

    :cond_2e
    if-eqz v4, :cond_3b

    .line 599
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 601
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 595
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 604
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_7c

    .line 605
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 606
    nop

    :goto_44
    if-ge v3, v1, :cond_7b

    .line 607
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing partially created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 606
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 612
    :cond_7b
    return-void

    .line 604
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0
.end method

.method cleanupPreCreatedUsers()V
    .registers 8

    .line 620
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 623
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v1, :cond_34

    .line 624
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 625
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v6, :cond_31

    .line 626
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 628
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 629
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 623
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 632
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_63

    .line 633
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 634
    nop

    :goto_3a
    if-ge v3, v0, :cond_62

    .line 635
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing pre-created user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 639
    :cond_62
    return-void

    .line 632
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public clearSeedAccountData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3837
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3838
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3840
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 3841
    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3842
    if-nez v2, :cond_18

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_24

    return-void

    .line 3843
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 3844
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_21

    .line 3845
    :try_start_1c
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3846
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    .line 3847
    return-void

    .line 3844
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v2

    .line 3846
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 5

    .line 2707
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2708
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 11

    .line 2714
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2715
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 9

    .line 3066
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3067
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3069
    if-nez p1, :cond_10

    .line 3070
    return-object v0

    .line 3072
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3074
    :try_start_14
    const-string/jumbo p2, "no_modify_accounts"

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 3077
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "location_mode"

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2, v2, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3080
    const-string/jumbo p2, "no_share_location"

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_38

    .line 3082
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3083
    nop

    .line 3084
    return-object p1

    .line 3082
    :catchall_38
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4

    .line 2727
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2728
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22

    .line 3955
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v2, "UserManagerService"

    invoke-static {v1, v2, v7}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 3957
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 3960
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 3961
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 3962
    const-string v2, "Current user: "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3963
    if-eqz v1, :cond_2e

    .line 3964
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_33

    .line 3966
    :cond_2e
    const-string v1, "N/A"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    :goto_33
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 3970
    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 3971
    :try_start_3b
    iget-object v14, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_31e

    .line 3972
    :try_start_3e
    const-string v1, "Users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    const/4 v1, 0x0

    move v15, v1

    :goto_45
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_1f5

    .line 3974
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3975
    if-nez v5, :cond_5c

    .line 3976
    move/from16 p1, v15

    goto/16 :goto_1eb

    .line 3978
    :cond_5c
    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3979
    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    .line 3980
    const-string v1, "  "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3981
    const-string v1, " serialNo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3982
    const-string v1, " isPrimary="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3983
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 3984
    const-string v1, " <removing> "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    :cond_8b
    iget-boolean v1, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_94

    .line 3987
    const-string v1, " <partial>"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3989
    :cond_94
    iget-boolean v1, v6, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_9d

    .line 3990
    const-string v1, " <pre-created>"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3992
    :cond_9d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3993
    const-string v1, "    Flags: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3994
    iget v1, v6, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3995
    const-string v1, "    State: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3997
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v1
    :try_end_c5
    .catchall {:try_start_3e .. :try_end_c5} :catchall_31b

    .line 3998
    :try_start_c5
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3999
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_c5 .. :try_end_cd} :catchall_1f2

    .line 4000
    :try_start_cd
    invoke-static {v2}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4001
    const-string v1, "    Created: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4002
    iget-wide v1, v6, Landroid/content/pm/UserInfo;->creationTime:J

    move-wide/from16 v16, v1

    move-object/from16 v1, p2

    move-object v2, v12

    move/from16 p1, v15

    move v15, v3

    move-wide v3, v8

    move-object v0, v6

    move/from16 p3, v15

    move-object v15, v5

    move-wide/from16 v5, v16

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4004
    const-string v1, "    Last logged in: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4005
    iget-wide v5, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-object/from16 v1, p2

    move-object v2, v12

    move-wide v3, v8

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4007
    const-string v1, "    Last logged in fingerprint: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4008
    iget-object v1, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4010
    const-string v1, "    Start time: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4011
    iget-wide v5, v15, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object/from16 v1, p2

    move-object v2, v12

    move-wide v3, v10

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4013
    const-string v1, "    Unlock time: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4014
    iget-wide v5, v15, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object/from16 v1, p2

    move-object v2, v12

    move-wide v3, v10

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 4016
    const-string v1, "    Has profile owner: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4017
    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4018
    const-string v2, "    Restrictions:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4019
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13c
    .catchall {:try_start_cd .. :try_end_13c} :catchall_31b

    .line 4020
    :try_start_13c
    const-string v3, "      "

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 4021
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 4020
    invoke-static {v7, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4022
    const-string v3, "    Device policy global restrictions:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4023
    const-string v3, "      "

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 4024
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 4023
    invoke-static {v7, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4025
    const-string v3, "    Device policy local restrictions:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    const-string v3, "      "

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 4027
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 4026
    invoke-static {v7, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4028
    const-string v3, "    Effective restrictions:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4029
    const-string v3, "      "

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 4030
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 4029
    invoke-static {v7, v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4031
    monitor-exit v2
    :try_end_188
    .catchall {:try_start_13c .. :try_end_188} :catchall_1ef

    .line 4033
    :try_start_188
    iget-object v1, v15, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v1, :cond_1a5

    .line 4034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4035
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4038
    :cond_1a5
    iget-object v1, v15, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v1, :cond_1eb

    .line 4039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4040
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4041
    iget-object v1, v15, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v1, :cond_1df

    .line 4042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4043
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4045
    :cond_1df
    iget-object v1, v15, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_1eb

    .line 4046
    const-string v1, "         account options exist"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4047
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1eb
    .catchall {:try_start_188 .. :try_end_1eb} :catchall_31b

    .line 3973
    :cond_1eb
    :goto_1eb
    add-int/lit8 v15, p1, 0x1

    goto/16 :goto_45

    .line 4031
    :catchall_1ef
    move-exception v0

    :try_start_1f0
    monitor-exit v2
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1ef

    :try_start_1f1
    throw v0
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_31b

    .line 3999
    :catchall_1f2
    move-exception v0

    :try_start_1f3
    monitor-exit v1
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_1f2

    :try_start_1f4
    throw v0

    .line 4051
    :cond_1f5
    monitor-exit v14
    :try_end_1f6
    .catchall {:try_start_1f4 .. :try_end_1f6} :catchall_31b

    .line 4052
    :try_start_1f6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Device owner id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4054
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4055
    const-string v1, "  Guest restrictions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4056
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1
    :try_end_21a
    .catchall {:try_start_1f6 .. :try_end_21a} :catchall_31e

    .line 4057
    :try_start_21a
    const-string v2, "    "

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v7, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4058
    monitor-exit v1
    :try_end_222
    .catchall {:try_start_21a .. :try_end_222} :catchall_318

    .line 4059
    :try_start_222
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_225
    .catchall {:try_start_222 .. :try_end_225} :catchall_31e

    .line 4060
    :try_start_225
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Device managed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4062
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_25f

    .line 4063
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Recently removed userIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4066
    :cond_25f
    monitor-exit v1
    :try_end_260
    .catchall {:try_start_225 .. :try_end_260} :catchall_315

    .line 4067
    :try_start_260
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v1
    :try_end_263
    .catchall {:try_start_260 .. :try_end_263} :catchall_31e

    .line 4068
    :try_start_263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Started users state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4069
    monitor-exit v1
    :try_end_27a
    .catchall {:try_start_263 .. :try_end_27a} :catchall_312

    .line 4070
    :try_start_27a
    monitor-exit v13
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_31e

    .line 4073
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (limit reached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->areGuestUsersEphemeral()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Is split-system user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4080
    return-void

    .line 4069
    :catchall_312
    move-exception v0

    :try_start_313
    monitor-exit v1
    :try_end_314
    .catchall {:try_start_313 .. :try_end_314} :catchall_312

    :try_start_314
    throw v0
    :try_end_315
    .catchall {:try_start_314 .. :try_end_315} :catchall_31e

    .line 4066
    :catchall_315
    move-exception v0

    :try_start_316
    monitor-exit v1
    :try_end_317
    .catchall {:try_start_316 .. :try_end_317} :catchall_315

    :try_start_317
    throw v0
    :try_end_318
    .catchall {:try_start_317 .. :try_end_318} :catchall_31e

    .line 4058
    :catchall_318
    move-exception v0

    :try_start_319
    monitor-exit v1
    :try_end_31a
    .catchall {:try_start_319 .. :try_end_31a} :catchall_318

    :try_start_31a
    throw v0
    :try_end_31b
    .catchall {:try_start_31a .. :try_end_31b} :catchall_31e

    .line 4051
    :catchall_31b
    move-exception v0

    :try_start_31c
    monitor-exit v14
    :try_end_31d
    .catchall {:try_start_31c .. :try_end_31d} :catchall_31b

    :try_start_31d
    throw v0

    .line 4070
    :catchall_31e
    move-exception v0

    monitor-exit v13
    :try_end_320
    .catchall {:try_start_31d .. :try_end_320} :catchall_31e

    throw v0
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 5

    .line 1121
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1122
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1125
    :try_start_d
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_17
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 1129
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    nop

    .line 1131
    return-void

    .line 1129
    :catchall_15
    move-exception p1

    goto :goto_1d

    .line 1126
    :catch_17
    move-exception p1

    .line 1127
    :try_start_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    .line 1129
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public exists(I)Z
    .registers 3

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p1

    return p1
.end method

.method finishRemoveUser(I)V
    .registers 13

    .line 3269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3271
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3272
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3273
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.MANAGE_USERS"

    new-instance v6, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_27

    .line 3298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3299
    nop

    .line 3300
    return-void

    .line 3298
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 3377
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    .line 3382
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 3383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 3384
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3386
    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3388
    :try_start_2b
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3389
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 4

    .line 799
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 801
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 803
    if-eqz v1, :cond_1a

    .line 804
    iget p1, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p1

    .line 806
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw p1

    .line 809
    :cond_1f
    :goto_1f
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .line 1477
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1479
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    .line 1480
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getFreeProfileBadgeLU(I)I
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4454
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v0

    .line 4455
    new-array v1, v0, [Z

    .line 4456
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4457
    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_3a

    .line 4458
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4460
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_37

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, p1, :cond_37

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4462
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_37

    iget v6, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    if-ge v6, v0, :cond_37

    .line 4464
    iget v5, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 4457
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4467
    :cond_3a
    move p1, v3

    :goto_3b
    if-ge p1, v0, :cond_45

    .line 4468
    aget-boolean v2, v1, p1

    if-nez v2, :cond_42

    .line 4469
    return p1

    .line 4467
    :cond_42
    add-int/lit8 p1, p1, 0x1

    goto :goto_3b

    .line 4472
    :cond_45
    return v3
.end method

.method public getManagedProfileBadge(I)I
    .registers 3

    .line 1157
    const-string v0, "getManagedProfileBadge"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1160
    if-eqz p1, :cond_11

    iget p1, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    monitor-exit v0

    return p1

    .line 1161
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p1
.end method

.method getNextAvailableId()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3749
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3750
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 3751
    if-ltz v1, :cond_b

    .line 3752
    monitor-exit v0

    return v1

    .line 3756
    :cond_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 3757
    const-string v1, "UserManagerService"

    const-string v2, "All available IDs are used. Recycling LRU ids."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3759
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3760
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3761
    goto :goto_25

    .line 3762
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 3764
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4c

    .line 3765
    if-ltz v1, :cond_44

    .line 3768
    return v1

    .line 3766
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No user id available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3764
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 675
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 678
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_31

    .line 679
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 680
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 681
    monitor-exit v0

    return-object v3

    .line 678
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 684
    :cond_31
    monitor-exit v0

    .line 685
    const/4 v0, 0x0

    return-object v0

    .line 684
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .registers 6

    .line 732
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1a

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 735
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_31

    .line 738
    :try_start_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    return-object p1

    .line 739
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 741
    :catchall_31
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 836
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 839
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public getProfileParentId(I)I
    .registers 3

    .line 844
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result p1

    return p1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 714
    nop

    .line 715
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1d

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_21

    .line 718
    :cond_1d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 720
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 722
    :try_start_25
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_34

    .line 723
    :try_start_28
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object p1

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_31

    .line 726
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 723
    return-object p1

    .line 724
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 726
    :catchall_34
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3810
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3811
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3812
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3813
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3814
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3828
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3829
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3830
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3831
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-object v1

    .line 3832
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3819
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3820
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3821
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3822
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3823
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 4

    .line 643
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 646
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getUserCreationTime(I)J
    .registers 5

    .line 3629
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3630
    nop

    .line 3631
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3632
    if-ne v0, p1, :cond_f

    .line 3633
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    goto :goto_1f

    .line 3635
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3636
    if-eqz v2, :cond_1e

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_1e

    .line 3637
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    goto :goto_1f

    .line 3640
    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_2e

    .line 3641
    if-eqz p1, :cond_25

    .line 3645
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v0

    .line 3642
    :cond_25
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo v0, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3640
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public getUserHandle(I)I
    .registers 8

    .line 3617
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    .line 3619
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3620
    if-eqz v5, :cond_17

    iget v5, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v5, p1, :cond_17

    monitor-exit v0

    return v4

    .line 3618
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3623
    :cond_1a
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    .line 3624
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 1404
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1409
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1410
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1411
    const/4 v2, 0x0

    if-eqz v1, :cond_53

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_53

    .line 1416
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1417
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1418
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1419
    const/16 v6, -0x2710

    if-eq v4, v6, :cond_2b

    if-ne v4, v5, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 1421
    :goto_2c
    if-eq v3, p1, :cond_35

    if-nez v4, :cond_35

    .line 1422
    const-string p1, "get the icon of a user who is not related"

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1425
    :cond_35
    iget-object p1, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez p1, :cond_3b

    .line 1426
    monitor-exit v0

    return-object v2

    .line 1428
    :cond_3b
    iget-object p1, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 1429
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_6b

    .line 1432
    :try_start_3e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_49} :catch_4a

    return-object p1

    .line 1434
    :catch_4a
    move-exception p1

    .line 1435
    const-string v0, "UserManagerService"

    const-string v1, "Couldn\'t find icon file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    return-object v2

    .line 1412
    :cond_53
    :goto_53
    :try_start_53
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    monitor-exit v0

    return-object v2

    .line 1429
    :catchall_6b
    move-exception p1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_53 .. :try_end_6d} :catchall_6b

    throw p1

    .line 1405
    :cond_6e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserIds()[I
    .registers 3

    .line 2091
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    .line 2093
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 1135
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1137
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1138
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .line 1193
    const-string v0, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1198
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1199
    :try_start_13
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1200
    if-nez v0, :cond_20

    const-string v0, ""

    goto :goto_22

    :cond_20
    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_22
    monitor-exit v1

    return-object v0

    .line 1201
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    throw v0

    .line 1194
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 5

    .line 1649
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 1651
    nop

    .line 1652
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :goto_c
    if-ltz p2, :cond_1c

    .line 1653
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v1}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v1

    or-int/2addr v0, v1

    .line 1652
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    .line 1655
    :cond_1c
    return v0
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
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

    .line 1661
    const-string v0, "getUserRestrictionSource"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1665
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1668
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 1672
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v3, -0x2710

    invoke-direct {v1, v3, v2}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    :cond_26
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1678
    :try_start_29
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1679
    invoke-static {v3, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1680
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    :cond_3e
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_45
    if-ltz p2, :cond_65

    .line 1685
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1686
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1687
    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1688
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    :cond_62
    add-int/lit8 p2, p2, -0x1

    goto :goto_45

    .line 1691
    :cond_65
    monitor-exit v1

    .line 1692
    return-object v0

    .line 1691
    :catchall_67
    move-exception p1

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_29 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 2

    .line 1708
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getUserSerialNumber(I)I
    .registers 3

    .line 3601
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3602
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3603
    if-eqz p1, :cond_c

    iget p1, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_d

    :cond_c
    const/4 p1, -0x1

    :goto_d
    monitor-exit v0

    return p1

    .line 3604
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public getUserStartRealtime()J
    .registers 5

    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1207
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1208
    :try_start_b
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 1209
    if-eqz v0, :cond_15

    .line 1210
    iget-wide v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v2

    .line 1212
    :cond_15
    const-wide/16 v2, 0x0

    monitor-exit v1

    return-wide v2

    .line 1213
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getUserUnlockRealtime()J
    .registers 4

    .line 1218
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1220
    if-eqz v1, :cond_15

    .line 1221
    iget-wide v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v1

    .line 1223
    :cond_15
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    .line 1224
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 689
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 695
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 698
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 699
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_4a

    .line 700
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 701
    if-eqz p1, :cond_2d

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_47

    :cond_2d
    if-eqz p2, :cond_39

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 702
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_47

    :cond_39
    if-eqz p3, :cond_40

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_40

    .line 704
    goto :goto_47

    .line 706
    :cond_40
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 708
    :cond_4a
    monitor-exit v0

    return-object v1

    .line 709
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 6

    .line 1713
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1714
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1715
    return v1

    .line 1717
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1718
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 1719
    if-eqz p2, :cond_21

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    :cond_21
    monitor-exit v0

    return v1

    .line 1720
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw p1
.end method

.method hasManagedProfile(I)Z
    .registers 9

    .line 4481
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4482
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4483
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4484
    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_2b

    .line 4485
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4486
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v6, :cond_28

    invoke-static {v1, v5}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 4487
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 4484
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 4490
    :cond_2b
    monitor-exit v0

    return v3

    .line 4491
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public hasRestrictedProfiles()Z
    .registers 8

    .line 1292
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1293
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1294
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1295
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1296
    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_2e

    .line 1297
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1298
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v6, :cond_2b

    iget v5, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v5, v0, :cond_2b

    .line 1300
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 1296
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1303
    :cond_2e
    monitor-exit v1

    return v3

    .line 1304
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 5

    .line 1610
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1611
    return v1

    .line 1613
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p2

    .line 1614
    if-eqz p2, :cond_15

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 7

    .line 1620
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1621
    return v1

    .line 1623
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 1624
    move v3, v1

    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 1625
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1626
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 1627
    if-eqz v4, :cond_29

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1628
    return v0

    .line 1624
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1631
    :cond_2c
    return v1
.end method

.method public isDemoUser(I)Z
    .registers 5

    .line 1243
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1244
    if-eq v0, p1, :cond_29

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    .line 1245
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is a demo user"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1250
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    monitor-exit v0

    return p1

    .line 1251
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public isManagedProfile(I)Z
    .registers 3

    .line 1166
    const-string v0, "isManagedProfile"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1169
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    monitor-exit v0

    return p1

    .line 1170
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public isPreCreated(I)Z
    .registers 5

    .line 1256
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1257
    if-eq v0, p1, :cond_29

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    .line 1258
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is pre-created"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1262
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1263
    if-eqz p1, :cond_38

    iget-boolean p1, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    monitor-exit v0

    return p1

    .line 1264
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public isQuietModeEnabled(I)Z
    .registers 4

    .line 1025
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 1028
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1029
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1d

    .line 1030
    if-eqz p1, :cond_1a

    :try_start_d
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 1033
    :cond_14
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1031
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    return p1

    .line 1029
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p1

    .line 1034
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw p1
.end method

.method public isRestricted()Z
    .registers 3

    .line 1269
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1271
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .registers 4

    .line 814
    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    .line 815
    :cond_4
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 816
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p1

    return p1
.end method

.method isUserInitialized(I)Z
    .registers 3

    .line 4116
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result p1

    return p1
.end method

.method public isUserNameSet(I)Z
    .registers 3

    .line 3609
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3610
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3611
    if-eqz p1, :cond_f

    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit v0

    return p1

    .line 3612
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public isUserRunning(I)Z
    .registers 3

    .line 1187
    const-string v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result p1

    return p1
.end method

.method public isUserUnlocked(I)Z
    .registers 3

    .line 1181
    const-string v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p1

    return p1
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3

    .line 1175
    const-string v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    return p1
.end method

.method public makeInitialized(I)V
    .registers 6

    .line 1441
    const-string v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1442
    nop

    .line 1444
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1445
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1446
    if-eqz v1, :cond_34

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1a

    goto :goto_34

    .line 1450
    :cond_1a
    iget-object p1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2c

    .line 1451
    iget-object p1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 1452
    const/4 p1, 0x1

    goto :goto_2d

    .line 1450
    :cond_2c
    const/4 p1, 0x0

    .line 1454
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_4c

    .line 1455
    if-eqz p1, :cond_33

    .line 1456
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1458
    :cond_33
    return-void

    .line 1447
    :cond_34
    :goto_34
    :try_start_34
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeInitialized: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    monitor-exit v0

    return-void

    .line 1454
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public markGuestForDeletion(I)Z
    .registers 9

    .line 3113
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3114
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "no_remove_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3116
    const-string p1, "UserManagerService"

    const-string v0, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    return v1

    .line 3120
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3123
    :try_start_23
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6e

    .line 3124
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_6b

    .line 3125
    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3126
    if-eqz p1, :cond_62

    if-eqz v5, :cond_62

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_62

    .line 3129
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_68

    .line 3130
    :try_start_3f
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 3131
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_6b

    .line 3145
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3131
    return v1

    .line 3138
    :cond_4c
    :try_start_4c
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 3141
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 3142
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3143
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_6b

    .line 3145
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3146
    nop

    .line 3147
    return v1

    .line 3127
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

    .line 3145
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3127
    return v1

    .line 3129
    :catchall_68
    move-exception p1

    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw p1

    .line 3143
    :catchall_6b
    move-exception p1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 3145
    :catchall_6e
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifyOnNextUserRemoveForTest()V
    .registers 4

    .line 4508
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    const-string/jumbo v2, "notifyOnNextUserRemoveForTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4509
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 4510
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 4511
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->isActiveInstrumentation(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4512
    return-void

    .line 4515
    :cond_1d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mNotifyPackageManagerOnUserRemoval:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4517
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 4518
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4519
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->notifyingOnNextUserRemovalForTest()V

    .line 4520
    return-void
.end method

.method public onBeforeStartUser(I)V
    .registers 6

    .line 3678
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3679
    if-nez v0, :cond_7

    .line 3680
    return-void

    .line 3682
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3684
    sget-object v2, Landroid/os/Build;->DATE:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3685
    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3686
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3688
    if-eqz p1, :cond_2a

    .line 3689
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3690
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 3691
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw p1

    .line 3693
    :cond_2a
    :goto_2a
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .registers 6

    .line 3700
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3701
    if-nez v0, :cond_7

    .line 3702
    return-void

    .line 3704
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3706
    sget-object v2, Landroid/os/Build;->DATE:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3707
    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3708
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3709
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .registers 7

    .line 3878
    if-nez p2, :cond_7

    .line 3879
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3882
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3884
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_16

    :cond_15
    goto :goto_20

    :cond_16
    const-string v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    goto :goto_21

    :goto_20
    move v2, v1

    :goto_21
    if-eqz v2, :cond_28

    .line 3888
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3886
    :cond_28
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$Shell;)I

    move-result p1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d

    return p1

    .line 3890
    :catch_2d
    move-exception p1

    .line 3891
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3893
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 3874
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

    .line 3875
    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 7

    .line 3729
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3730
    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 3735
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3736
    const-wide v3, 0xdc46c32800L

    cmp-long p1, v1, v3

    if-lez p1, :cond_1e

    .line 3737
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3739
    :cond_1e
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v1, Landroid/os/Build;->DATE:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3740
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3741
    return-void

    .line 3731
    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userForeground: unknown user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    return-void
.end method

.method public preCreateUser(I)Landroid/content/pm/UserInfo;
    .registers 10

    .line 2733
    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2735
    invoke-static {p1}, Landroid/content/pm/UserInfo;->isManagedProfile(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "cannot pre-create managed profiles"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pre-creating user with flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    const/4 v3, 0x0

    const/16 v5, -0x2710

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3046
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 3047
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 3048
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3049
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3050
    monitor-exit v1

    .line 3051
    return-object v0

    .line 3050
    :catchall_13
    move-exception p1

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw p1
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 44
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2528
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2529
    nop

    .line 2530
    nop

    .line 2531
    nop

    .line 2532
    nop

    .line 2533
    nop

    .line 2534
    nop

    .line 2535
    nop

    .line 2536
    nop

    .line 2537
    nop

    .line 2538
    nop

    .line 2539
    nop

    .line 2540
    nop

    .line 2541
    nop

    .line 2542
    nop

    .line 2543
    nop

    .line 2544
    nop

    .line 2545
    nop

    .line 2546
    nop

    .line 2547
    nop

    .line 2548
    nop

    .line 2549
    nop

    .line 2551
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2552
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2554
    :goto_28
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_33

    if-eq v3, v5, :cond_33

    goto :goto_28

    .line 2559
    :cond_33
    const/4 v6, 0x0

    if-eq v3, v4, :cond_4d

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    return-object v6

    .line 2564
    :cond_4d
    const/16 v7, -0x2710

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-ne v3, v4, :cond_1e0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 2565
    const/4 v3, -0x1

    const-string v4, "id"

    invoke-direct {v0, v2, v4, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 2566
    if-eq v3, v1, :cond_72

    .line 2567
    const-string v0, "UserManagerService"

    const-string v1, "User id does not match the file name"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    return-object v6

    .line 2570
    :cond_72
    const-string/jumbo v3, "serialNumber"

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 2571
    const-string v4, "flags"

    invoke-direct {v0, v2, v4, v10}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 2572
    const-string v11, "icon"

    invoke-interface {v2, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2573
    const-string v12, "created"

    invoke-direct {v0, v2, v12, v8, v9}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    .line 2574
    const-string v14, "lastLoggedIn"

    invoke-direct {v0, v2, v14, v8, v9}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 2575
    const-string v8, "lastLoggedInFingerprint"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2577
    const-string/jumbo v9, "profileGroupId"

    invoke-direct {v0, v2, v9, v7}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 2579
    const-string/jumbo v5, "profileBadge"

    invoke-direct {v0, v2, v5, v10}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 2580
    const-string/jumbo v10, "restrictedProfileParentId"

    invoke-direct {v0, v2, v10, v7}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 2582
    const-string/jumbo v10, "partial"

    invoke-interface {v2, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2583
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 2584
    const/4 v10, 0x1

    goto :goto_bf

    .line 2583
    :cond_be
    const/4 v10, 0x0

    .line 2586
    :goto_bf
    const-string/jumbo v6, "preCreated"

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2587
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 2588
    const/4 v3, 0x1

    goto :goto_d5

    .line 2587
    :cond_d4
    const/4 v3, 0x0

    .line 2590
    :goto_d5
    const-string v6, "guestToRemove"

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2591
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 2592
    const/4 v3, 0x1

    goto :goto_ea

    .line 2591
    :cond_e9
    const/4 v3, 0x0

    .line 2595
    :goto_ea
    const-string/jumbo v6, "seedAccountName"

    move/from16 v22, v3

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2596
    move/from16 v19, v4

    const-string/jumbo v4, "seedAccountType"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2597
    if-nez v6, :cond_105

    if-eqz v4, :cond_102

    goto :goto_105

    :cond_102
    const/16 v18, 0x0

    goto :goto_107

    .line 2598
    :cond_105
    :goto_105
    const/16 v18, 0x1

    .line 2601
    :goto_107
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v24, v18

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 2602
    :goto_11b
    move-object/from16 v29, v4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move/from16 v30, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1bf

    const/4 v5, 0x3

    if-ne v4, v5, :cond_12f

    .line 2603
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_1bf

    .line 2604
    :cond_12f
    const/4 v5, 0x3

    if-eq v4, v5, :cond_1b9

    const/4 v5, 0x4

    if-ne v4, v5, :cond_137

    .line 2605
    goto/16 :goto_1b9

    .line 2607
    :cond_137
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2608
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 2609
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2610
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b3

    .line 2611
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v23

    goto :goto_1b3

    .line 2613
    :cond_150
    const-string/jumbo v5, "restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 2614
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v26

    goto :goto_1b3

    .line 2615
    :cond_15e
    const-string v5, "device_policy_restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 2616
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v27

    goto :goto_1b3

    .line 2617
    :cond_16b
    const-string v5, "device_policy_global_restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_178

    .line 2618
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v28

    goto :goto_1b3

    .line 2619
    :cond_178
    const-string v5, "account"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 2620
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2621
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b3

    .line 2622
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v16

    goto :goto_1b3

    .line 2624
    :cond_18c
    const-string/jumbo v5, "seedAccountOptions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19c

    .line 2625
    invoke-static {v2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v25

    .line 2626
    const/16 v24, 0x1

    goto :goto_1b3

    .line 2627
    :cond_19c
    const-string v5, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 2628
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 2629
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b3

    .line 2630
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 2633
    :cond_1b3
    :goto_1b3
    move-object/from16 v4, v29

    move/from16 v5, v30

    goto/16 :goto_11b

    .line 2602
    :cond_1b9
    :goto_1b9
    move-object/from16 v4, v29

    move/from16 v5, v30

    goto/16 :goto_11b

    .line 2637
    :cond_1bf
    move-object/from16 v32, v6

    move v0, v7

    move v7, v9

    move-object/from16 v31, v16

    move-wide/from16 v36, v17

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move-object/from16 v2, v23

    move/from16 v34, v24

    move-object/from16 v35, v25

    move-object/from16 v38, v26

    move-object/from16 v39, v27

    move-object/from16 v40, v28

    move-object/from16 v33, v29

    move/from16 v9, v30

    goto :goto_200

    :cond_1e0
    move v4, v1

    move v0, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    :goto_200
    move/from16 v16, v0

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, v1, v2, v11, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2638
    iput v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2639
    iput-wide v12, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2640
    iput-wide v14, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2641
    iput-object v8, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2642
    iput-boolean v10, v0, Landroid/content/pm/UserInfo;->partial:Z

    .line 2643
    iput-boolean v5, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 2644
    iput-boolean v6, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2645
    iput v7, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2646
    iput v9, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2647
    move/from16 v7, v16

    iput v7, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2650
    new-instance v2, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v2}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2651
    iput-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2652
    move-object/from16 v0, v31

    iput-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 2653
    move-object/from16 v6, v32

    iput-object v6, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 2654
    move-object/from16 v0, v33

    iput-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 2655
    move/from16 v0, v34

    iput-boolean v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 2656
    move-object/from16 v0, v35

    iput-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 2657
    move-wide/from16 v3, v36

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/UserManagerService$UserData;->setLastRequestQuietModeEnabledMillis(J)V

    .line 2659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2660
    move-object/from16 v4, v38

    if-eqz v4, :cond_24e

    .line 2661
    :try_start_246
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_24e

    .line 2669
    :catchall_24c
    move-exception v0

    goto :goto_262

    .line 2663
    :cond_24e
    :goto_24e
    move-object/from16 v4, v39

    if-eqz v4, :cond_257

    .line 2664
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2666
    :cond_257
    move-object/from16 v4, v40

    if-eqz v4, :cond_260

    .line 2667
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2669
    :cond_260
    monitor-exit v3

    .line 2670
    return-object v2

    .line 2669
    :goto_262
    monitor-exit v3
    :try_end_263
    .catchall {:try_start_246 .. :try_end_263} :catchall_24c

    throw v0
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .registers 5

    .line 3717
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    .line 3721
    return-void
.end method

.method public removeUser(I)Z
    .registers 5

    .line 3157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUser u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3161
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3162
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3163
    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 3164
    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_68

    .line 3165
    if-eqz v1, :cond_36

    .line 3166
    const-string/jumbo v0, "no_remove_managed_profile"

    goto :goto_39

    :cond_36
    const-string/jumbo v0, "no_remove_user"

    .line 3167
    :goto_39
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 3168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove user. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is enabled."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    return v2

    .line 3171
    :cond_63
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p1

    return p1

    .line 3164
    :catchall_68
    move-exception p1

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3

    .line 2721
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2722
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p1

    return p1
.end method

.method removeUserInfo(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3056
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3057
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3058
    monitor-exit v0

    .line 3059
    return-void

    .line 3058
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;)Z
    .registers 10

    .line 886
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    goto :goto_11

    .line 889
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "target should only be specified when we are disabling quiet mode."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 893
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IZ)V

    .line 894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 896
    nop

    .line 897
    if-eqz p2, :cond_2a

    .line 898
    :try_start_26
    invoke-direct {p0, p3, v2, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    .line 900
    goto :goto_46

    .line 902
    :cond_2a
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 903
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 904
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_3a

    move p2, v2

    goto :goto_3b

    :cond_3a
    move p2, v1

    .line 905
    :goto_3b
    if-eqz p2, :cond_42

    .line 906
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V

    move v2, v1

    goto :goto_46

    .line 908
    :cond_42
    invoke-direct {p0, p3, v1, p4, p1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_4b

    .line 910
    nop

    .line 913
    :goto_46
    nop

    .line 915
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    return v2

    .line 915
    :catchall_4b
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    .line 3395
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3396
    if-eqz p2, :cond_c

    .line 3397
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 3399
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3400
    if-eqz p2, :cond_1c

    :try_start_11
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1c

    .line 3404
    :cond_18
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1f

    .line 3401
    :cond_1c
    :goto_1c
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V

    .line 3406
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_39

    .line 3409
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3410
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3411
    const/high16 p1, 0x40000000  # 2.0f

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3412
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3413
    return-void

    .line 3406
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4

    .line 1485
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1487
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1488
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1489
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1f

    .line 1490
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1491
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1492
    monitor-exit p1

    .line 1493
    return-void

    .line 1492
    :catchall_1c
    move-exception v0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v0

    .line 1489
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 9

    .line 3788
    const-string v0, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3789
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3791
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3d

    .line 3792
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3793
    if-nez v2, :cond_2a

    .line 3794
    const-string p2, "UserManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No such user for settings seed data u="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_3a

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3d

    return-void

    .line 3797
    :cond_2a
    :try_start_2a
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3798
    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3799
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3800
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 3801
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3a

    .line 3802
    if-eqz p5, :cond_38

    .line 3803
    :try_start_35
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3805
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    .line 3806
    return-void

    .line 3801
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p1

    .line 3805
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 7

    .line 651
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 652
    nop

    .line 653
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_47

    .line 655
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 656
    if-nez v2, :cond_30

    .line 657
    const-string p2, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User not found for setting user account: u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_44

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_47

    return-void

    .line 660
    :cond_30
    :try_start_30
    iget-object p1, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 661
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 662
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 663
    goto :goto_3c

    .line 661
    :cond_3b
    const/4 v2, 0x0

    .line 665
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_44

    .line 667
    if-eqz v2, :cond_42

    .line 668
    :try_start_3f
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 670
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_47

    .line 671
    return-void

    .line 665
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p1

    .line 670
    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public setUserAdmin(I)V
    .registers 5

    .line 1092
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1096
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3d

    .line 1097
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1098
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3a

    .line 1099
    if-eqz v2, :cond_38

    :try_start_13
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_38

    .line 1104
    :cond_1a
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1105
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1106
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_3d

    .line 1110
    const/4 v0, 0x0

    const-string/jumbo v1, "no_sms"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1111
    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1112
    return-void

    .line 1101
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3d

    return-void

    .line 1098
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p1

    .line 1106
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public setUserEnabled(I)V
    .registers 4

    .line 1077
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2c

    .line 1081
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1082
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_29

    .line 1083
    if-eqz p1, :cond_27

    :try_start_12
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1084
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 1085
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1087
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1088
    return-void

    .line 1082
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p1

    .line 1087
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 4

    .line 1385
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1387
    const-string p1, "UserManagerService"

    const-string p2, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return-void

    .line 1390
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1391
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 6

    .line 1359
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1360
    nop

    .line 1361
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1363
    if-eqz v1, :cond_41

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_17

    goto :goto_41

    .line 1367
    :cond_17
    if-eqz p2, :cond_2c

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1368
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1369
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1370
    const/4 p2, 0x1

    goto :goto_2d

    .line 1372
    :cond_2c
    const/4 p2, 0x0

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_5a

    .line 1373
    if-eqz p2, :cond_40

    .line 1374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1376
    :try_start_34
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 1378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1379
    goto :goto_40

    .line 1378
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1381
    :cond_40
    :goto_40
    return-void

    .line 1364
    :cond_41
    :goto_41
    :try_start_41
    const-string p2, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserName: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    monitor-exit v0

    return-void

    .line 1372
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 6

    .line 1725
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1726
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1727
    return-void

    .line 1729
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1732
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1733
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1732
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1734
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1736
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1737
    monitor-exit v0

    .line 1738
    return-void

    .line 1737
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3852
    const-string v0, "Cannot check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3853
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3854
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3855
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_43

    .line 3856
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3857
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_40

    .line 3858
    :cond_23
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3859
    goto :goto_40

    .line 3861
    :cond_30
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_40

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 3862
    goto :goto_40

    .line 3864
    :cond_3d
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 3855
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3866
    :cond_43
    monitor-exit v0

    .line 3867
    return v2

    .line 3866
    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw p1
.end method

.method systemReady()V
    .registers 6

    .line 569
    nop

    .line 570
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 569
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 574
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_41

    .line 576
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_2f

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "no_config_wifi"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 582
    const/4 v1, 0x1

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "no_config_wifi"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 585
    :cond_2f
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 588
    return-void

    .line 574
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2359
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2360
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2361
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2362
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2364
    iget-object p2, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2365
    const-string/jumbo v1, "user"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2366
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2367
    iget v1, p2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "serialNumber"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2368
    iget v1, p2, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "flags"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2369
    iget-wide v3, p2, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "created"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2370
    iget-wide v3, p2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2371
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2370
    const-string v3, "lastLoggedIn"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2372
    iget-object v1, p2, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 2373
    iget-object v1, p2, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    const-string v3, "lastLoggedInFingerprint"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2376
    :cond_67
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_72

    .line 2377
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v3, "icon"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2379
    :cond_72
    iget-boolean v1, p2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_7f

    .line 2380
    const-string/jumbo v1, "partial"

    const-string/jumbo v3, "true"

    invoke-interface {v0, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2382
    :cond_7f
    iget-boolean v1, p2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_8c

    .line 2383
    const-string/jumbo v1, "preCreated"

    const-string/jumbo v3, "true"

    invoke-interface {v0, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2385
    :cond_8c
    iget-boolean v1, p2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v1, :cond_98

    .line 2386
    const-string v1, "guestToRemove"

    const-string/jumbo v3, "true"

    invoke-interface {v0, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2388
    :cond_98
    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_aa

    .line 2389
    iget v1, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2390
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2389
    const-string/jumbo v4, "profileGroupId"

    invoke-interface {v0, v2, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2392
    :cond_aa
    iget v1, p2, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2393
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2392
    const-string/jumbo v4, "profileBadge"

    invoke-interface {v0, v2, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2394
    iget v1, p2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v1, v3, :cond_c6

    .line 2395
    iget v1, p2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2396
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2395
    const-string/jumbo v3, "restrictedProfileParentId"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2399
    :cond_c6
    iget-boolean v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v1, :cond_e2

    .line 2400
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v1, :cond_d6

    .line 2401
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const-string/jumbo v3, "seedAccountName"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2403
    :cond_d6
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v1, :cond_e2

    .line 2404
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    const-string/jumbo v3, "seedAccountType"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2407
    :cond_e2
    iget-object v1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_f7

    .line 2408
    const-string/jumbo v1, "name"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2409
    iget-object v1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2410
    const-string/jumbo v1, "name"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2412
    :cond_f7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2413
    :try_start_fa
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    .line 2414
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "restrictions"

    .line 2413
    invoke-static {v0, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2415
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    .line 2416
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "device_policy_restrictions"

    .line 2415
    invoke-static {v0, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2418
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 2419
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v3, "device_policy_global_restrictions"

    .line 2418
    invoke-static {v0, p2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2421
    monitor-exit v1
    :try_end_129
    .catchall {:try_start_fa .. :try_end_129} :catchall_17e

    .line 2423
    iget-object p2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz p2, :cond_13c

    .line 2424
    const-string p2, "account"

    invoke-interface {v0, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2425
    iget-object p2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2426
    const-string p2, "account"

    invoke-interface {v0, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2429
    :cond_13c
    iget-boolean p2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz p2, :cond_155

    iget-object p2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz p2, :cond_155

    .line 2430
    const-string/jumbo p2, "seedAccountOptions"

    invoke-interface {v0, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2431
    iget-object p2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2432
    const-string/jumbo p2, "seedAccountOptions"

    invoke-interface {v0, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2435
    :cond_155
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_174

    .line 2436
    const-string p2, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2437
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$UserData;->getLastRequestQuietModeEnabledMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2438
    const-string p1, "lastRequestQuietModeEnabledCall"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    :cond_174
    const-string/jumbo p1, "user"

    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2443
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2444
    return-void

    .line 2421
    :catchall_17e
    move-exception p1

    :try_start_17f
    monitor-exit v1
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw p1
.end method
