.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
    }
.end annotation


# static fields
.field private static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field private static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field private static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field private static final ATTR_COMMITTED:Ljava/lang/String; = "committed"

.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field private static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field private static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field private static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "installRason"

.field private static final ATTR_IS_APPLIED:Ljava/lang/String; = "isApplied"

.field private static final ATTR_IS_FAILED:Ljava/lang/String; = "isFailed"

.field private static final ATTR_IS_READY:Ljava/lang/String; = "isReady"

.field private static final ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final ATTR_MULTI_PACKAGE:Ljava/lang/String; = "multiPackage"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field private static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field private static final ATTR_PARENT_SESSION_ID:Ljava/lang/String; = "parentSessionId"

.field private static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field private static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field private static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field private static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field private static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field private static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field private static final ATTR_STAGED_SESSION:Ljava/lang/String; = "stagedSession"

.field private static final ATTR_STAGED_SESSION_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final ATTR_STAGED_SESSION_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final ATTR_UPDATED_MILLIS:Ljava/lang/String; = "updatedMillis"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field private static final EMPTY_CHILD_SESSION_ARRAY:[I

.field private static final LOGD:Z = true

.field private static final MSG_COMMIT:I = 0x1

.field private static final MSG_ON_PACKAGE_INSTALLED:I = 0x2

.field private static final PROPERTY_NAME_INHERIT_NATIVE:Ljava/lang/String; = "pi.inherit_native_on_dont_kill"

.field private static final REMOVE_SPLIT_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final TAG:Ljava/lang/String; = "PackageInstallerSession"

.field static final TAG_CHILD_SESSION:Ljava/lang/String; = "childSession"

.field private static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field static final TAG_SESSION:Ljava/lang/String; = "session"

.field private static final TAG_WHITELISTED_RESTRICTED_PERMISSION:Ljava/lang/String; = "whitelisted-restricted-permission"

.field private static final sAddedFilter:Ljava/io/FileFilter;

.field private static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field private final MAX_INSTALL_DURATION:I

.field final createdMillis:J

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private mChildSessionIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mCommitted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mFds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFinalStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mInstallerPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mInstallerUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsPerfLockAcquired:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalInstallerUid:I

.field private mPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mParentSessionId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPerfBoostInstall:Landroid/util/BoostFramework;

.field private mPermissionsManuallyAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRelinquished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolvedNativeLibPaths:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field private mShouldBeSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionApplied:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionErrorCode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionErrorMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionFailed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStagedSessionReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;

.field private mVerityFound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mVersionCode:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field final sessionId:I

.field final stageCid:Ljava/lang/String;

.field final stageDir:Ljava/io/File;

.field private updatedMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 181
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 319
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 331
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V
    .registers 44
    .param p1, "callback"  # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p4, "sessionProvider"  # Lcom/android/server/pm/PackageSessionProvider;
    .param p5, "looper"  # Landroid/os/Looper;
    .param p6, "stagingManager"  # Lcom/android/server/pm/StagingManager;
    .param p7, "sessionId"  # I
    .param p8, "userId"  # I
    .param p9, "installerPackageName"  # Ljava/lang/String;
    .param p10, "installerUid"  # I
    .param p11, "params"  # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p12, "createdMillis"  # J
    .param p14, "stageDir"  # Ljava/io/File;
    .param p15, "stageCid"  # Ljava/lang/String;
    .param p16, "prepared"  # Z
    .param p17, "committed"  # Z
    .param p18, "sealed"  # Z
    .param p19, "childSessionIds"  # [I
    .param p20, "parentSessionId"  # I
    .param p21, "isReady"  # Z
    .param p22, "isFailed"  # Z
    .param p23, "isApplied"  # Z
    .param p24, "stagedSessionErrorCode"  # I
    .param p25, "stagedSessionErrorMessage"  # Ljava/lang/String;

    .line 427
    move-object/from16 v0, p0

    move/from16 v1, p10

    move-object/from16 v2, p11

    move-wide/from16 v3, p12

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p19

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 196
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    .line 197
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 198
    const/16 v9, 0x4e20

    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->MAX_INSTALL_DURATION:I

    .line 209
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 211
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 228
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 230
    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 233
    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 235
    const/high16 v9, -0x40800000  # -1.0f

    iput v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 239
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 241
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 243
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 245
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 247
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 249
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 253
    iput-boolean v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 261
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 263
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 276
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    .line 287
    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 306
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 308
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 310
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 312
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    .line 340
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v9, v0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 428
    move-object/from16 v9, p1

    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 429
    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 430
    move-object/from16 v11, p3

    iput-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 431
    move-object/from16 v12, p4

    iput-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    .line 432
    new-instance v13, Landroid/os/Handler;

    iget-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v15, p5

    invoke-direct {v13, v15, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 433
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 435
    move/from16 v14, p7

    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 436
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 437
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 438
    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 439
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 440
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 441
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 442
    iput-wide v3, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 443
    iput-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 444
    iput-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    .line 445
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 446
    if-eqz v7, :cond_d2

    .line 447
    array-length v1, v7

    const/4 v3, 0x0

    :goto_bd
    if-ge v3, v1, :cond_d0

    aget v4, v7, v3

    .line 448
    .local v4, "childSessionId":I
    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    .end local v4  # "childSessionId":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p19

    move/from16 v1, v17

    goto :goto_bd

    :cond_d0
    const/4 v7, 0x0

    goto :goto_d3

    .line 446
    :cond_d2
    const/4 v7, 0x0

    .line 451
    :goto_d3
    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 453
    iget-boolean v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v3, :cond_ef

    const/4 v3, 0x1

    if-nez v5, :cond_e0

    move v4, v3

    goto :goto_e1

    :cond_e0
    move v4, v7

    :goto_e1
    if-nez v6, :cond_e4

    move v7, v3

    :cond_e4
    if-eq v4, v7, :cond_e7

    goto :goto_ef

    .line 454
    :cond_e7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_ef
    :goto_ef
    move/from16 v3, p16

    iput-boolean v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 459
    move/from16 v4, p17

    iput-boolean v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 460
    move/from16 v7, p21

    iput-boolean v7, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 461
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 462
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 463
    move/from16 v1, p24

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 464
    nop

    .line 465
    if-eqz p25, :cond_10d

    move-object/from16 v1, p25

    goto :goto_111

    :cond_10d
    const-string v16, ""

    move-object/from16 v1, v16

    :goto_111
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 466
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleCommit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 131
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/PackageInstallerSession;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Landroid/os/Bundle;

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V
    .registers 10
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "apk"  # Landroid/content/pm/PackageParser$ApkLite;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_96

    .line 1871
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_46

    .line 1872
    :cond_20
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " specified package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1876
    :cond_46
    :goto_46
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_72

    .line 1881
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p2, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1885
    return-void

    .line 1882
    :cond_5b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures are inconsistent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1877
    :cond_72
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1868
    :cond_96
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertCallerIsOwnerOrRootLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 869
    .local v0, "callingUid":I
    if-eqz v0, :cond_22

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_22

    .line 870
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session does not belong to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 872
    :cond_22
    :goto_22
    return-void
.end method

.method private assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7
    .param p1, "other"  # Lcom/android/server/pm/PackageInstallerSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const-string v2, " and session "

    const-string v3, "Multipackage Inconsistency: session "

    const/16 v4, -0x78

    if-ne v0, v1, :cond_43

    .line 1126
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v0

    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 1133
    return-void

    .line 1127
    :cond_1f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " have inconsistent rollback settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1120
    :cond_43
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " have inconsistent staged settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private assertMultiPackageConsistencyLocked(Ljava/util/List;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1097
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1101
    .local v1, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v1, :cond_13

    .line 1102
    goto :goto_4

    .line 1104
    :cond_13
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertConsistencyWithLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1105
    .end local v1  # "childSession":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_4

    .line 1106
    :cond_17
    return-void
.end method

.method private assertNoWriteFileTransfersOpenLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Files still open"

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RevocableFileDescriptor;

    .line 881
    .local v1, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 884
    .end local v1  # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_6

    .line 882
    .restart local v1  # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    .end local v1  # "fd":Landroid/os/RevocableFileDescriptor;
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileBridge;

    .line 886
    .local v1, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v1}, Landroid/os/FileBridge;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 889
    .end local v1  # "bridge":Landroid/os/FileBridge;
    goto :goto_27

    .line 887
    .restart local v1  # "bridge":Landroid/os/FileBridge;
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    .end local v1  # "bridge":Landroid/os/FileBridge;
    :cond_40
    return-void
.end method

.method private assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 587
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 588
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v0, :cond_8

    .line 591
    return-void

    .line 589
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after commit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 595
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_20

    .line 598
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 601
    return-void

    .line 599
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after destruction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " before prepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "cookie"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 580
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez v0, :cond_8

    .line 583
    return-void

    .line 581
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not allowed after sealing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .registers 5
    .param p0, "sessionId"  # I
    .param p1, "sessionsDir"  # Ljava/io/File;

    .line 2424
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private cleanStageDir()V
    .registers 6

    .line 2347
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2b

    aget v3, v0, v2

    .line 2349
    .local v3, "childSessionId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v4, v3}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4

    invoke-direct {v4}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2348
    .end local v3  # "childSessionId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2353
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_29
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_29} :catch_2a

    .line 2355
    goto :goto_2b

    .line 2354
    :catch_2a
    move-exception v0

    .line 2357
    :cond_2b
    :goto_2b
    return-void
.end method

.method private closeInternal(Z)V
    .registers 5
    .param p1, "checkCaller"  # Z

    .line 2084
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2085
    if-eqz p1, :cond_8

    .line 2086
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2089
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 2090
    .local v1, "activeCount":I
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_18

    .line 2092
    if-nez v1, :cond_17

    .line 2093
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2095
    :cond_17
    return-void

    .line 2090
    .end local v1  # "activeCount":I
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private commitNonStagedLocked(Ljava/util/List;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1331
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    nop

    .line 1332
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v0

    .line 1333
    .local v0, "committingSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    if-nez v0, :cond_8

    .line 1334
    return-void

    .line 1336
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1337
    new-instance v1, Ljava/util/ArrayList;

    .line 1338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1339
    .local v1, "activeChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    const/4 v2, 0x1

    .line 1340
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 1341
    .local v3, "failure":Lcom/android/server/pm/PackageManagerException;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_37

    .line 1342
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 1344
    .local v5, "session":Lcom/android/server/pm/PackageInstallerSession;
    nop

    .line 1345
    :try_start_27
    invoke-direct {v5}, Lcom/android/server/pm/PackageInstallerSession;->makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    move-result-object v6

    .line 1346
    .local v6, "activeSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    if-eqz v6, :cond_30

    .line 1347
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_27 .. :try_end_30} :catch_31

    .line 1352
    .end local v6  # "activeSession":Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    :cond_30
    goto :goto_34

    .line 1349
    :catch_31
    move-exception v6

    .line 1350
    .local v6, "e":Lcom/android/server/pm/PackageManagerException;
    move-object v3, v6

    .line 1351
    const/4 v2, 0x0

    .line 1341
    .end local v5  # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v6  # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1354
    .end local v4  # "i":I
    :cond_37
    if-nez v2, :cond_48

    .line 1356
    :try_start_39
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v3, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1357
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    .line 1356
    const/4 v7, 0x0

    invoke-interface {v4, v7, v5, v6, v7}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_45} :catch_46

    .line 1359
    goto :goto_47

    .line 1358
    :catch_46
    move-exception v4

    .line 1360
    :goto_47
    return-void

    .line 1362
    :cond_48
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageManagerService;->installStage(Ljava/util/List;)V

    .line 1363
    .end local v1  # "activeChildSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    .end local v2  # "success":Z
    .end local v3  # "failure":Lcom/android/server/pm/PackageManagerException;
    goto :goto_53

    .line 1364
    :cond_4e
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->installStage(Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V

    .line 1366
    :goto_53
    return-void
.end method

.method private computeProgressLocked(Z)V
    .registers 6
    .param p1, "forcePublish"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 643
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v1, 0x3f4ccccd  # 0.8f

    mul-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v3, 0x3e4ccccd  # 0.2f

    mul-float/2addr v1, v3

    .line 644
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 647
    if-nez p1, :cond_2d

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL  # 0.01

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_36

    .line 648
    :cond_2d
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 649
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 651
    :cond_36
    return-void
.end method

.method private static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 11
    .param p1, "toDir"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1975
    .local p0, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 1976
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1977
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1975
    .end local v4  # "file":Ljava/io/File;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1981
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PackageInstallerSession"

    if-eqz v1, :cond_dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1982
    .local v1, "fromFile":Ljava/io/File;
    const-string/jumbo v4, "inherit"

    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 1983
    .local v4, "tmpFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 1988
    :try_start_57
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_60
    .catch Landroid/system/ErrnoException; {:try_start_57 .. :try_end_60} :catch_a8

    .line 1991
    nop

    .line 1992
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1993
    .local v5, "toFile":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renaming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1997
    .end local v1  # "fromFile":Ljava/io/File;
    .end local v4  # "tmpFile":Ljava/io/File;
    .end local v5  # "toFile":Ljava/io/File;
    goto :goto_20

    .line 1995
    .restart local v1  # "fromFile":Ljava/io/File;
    .restart local v4  # "tmpFile":Ljava/io/File;
    .restart local v5  # "toFile":Ljava/io/File;
    :cond_8b
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    .end local v5  # "toFile":Ljava/io/File;
    :catch_a8
    move-exception v0

    .line 1990
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to chmod "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1985
    .end local v0  # "e":Landroid/system/ErrnoException;
    :cond_c0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1998
    .end local v1  # "fromFile":Ljava/io/File;
    .end local v4  # "tmpFile":Ljava/io/File;
    :cond_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    return-void
.end method

.method private createOatDirs(Ljava/util/List;Ljava/io/File;)V
    .registers 7
    .param p2, "fromDir"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1948
    .local p1, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1950
    .local v1, "instructionSet":Ljava/lang/String;
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10 .. :try_end_1b} :catch_1d

    .line 1953
    nop

    .line 1954
    .end local v1  # "instructionSet":Ljava/lang/String;
    goto :goto_4

    .line 1951
    .restart local v1  # "instructionSet":Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 1952
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 1955
    .end local v0  # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1  # "instructionSet":Ljava/lang/String;
    :cond_23
    return-void
.end method

.method private createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "splitName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "markerName":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 691
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 692
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 693
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 696
    .end local v0  # "markerName":Ljava/lang/String;
    .end local v1  # "target":Ljava/io/File;
    nop

    .line 697
    return-void

    .line 689
    .restart local v0  # "markerName":Ljava/lang/String;
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "splitName":Ljava/lang/String;
    throw v1
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_44} :catch_44

    .line 694
    .end local v0  # "markerName":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "splitName":Ljava/lang/String;
    :catch_44
    move-exception v0

    .line 695
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private destroyInternal()V
    .registers 4

    .line 2322
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2323
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 2324
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2325
    :cond_12
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 2328
    :cond_14
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    .line 2329
    .local v2, "fd":Landroid/os/RevocableFileDescriptor;
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 2330
    .end local v2  # "fd":Landroid/os/RevocableFileDescriptor;
    goto :goto_1a

    .line 2331
    :cond_2a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileBridge;

    .line 2332
    .local v2, "bridge":Landroid/os/FileBridge;
    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    .line 2333
    .end local v2  # "bridge":Landroid/os/FileBridge;
    goto :goto_30

    .line 2334
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_5b

    .line 2338
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_5a

    .line 2340
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)V
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4b .. :try_end_58} :catch_59

    .line 2342
    goto :goto_5a

    .line 2341
    :catch_59
    move-exception v0

    .line 2344
    :cond_5a
    :goto_5a
    return-void

    .line 2334
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "returnCode"  # I
    .param p2, "msg"  # Ljava/lang/String;
    .param p3, "extras"  # Landroid/os/Bundle;

    .line 2222
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2223
    :try_start_3
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 2224
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 2226
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 2227
    .local v1, "observer":Landroid/content/pm/IPackageInstallObserver2;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 2228
    .local v2, "packageName":Ljava/lang/String;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_57

    .line 2230
    if-eqz v1, :cond_26

    .line 2234
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2235
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2236
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2237
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2238
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2239
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2241
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2244
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_26
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2c

    move v4, v3

    goto :goto_2d

    :cond_2c
    move v4, v0

    .line 2247
    .local v4, "success":Z
    :goto_2d
    if-eqz p3, :cond_37

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    :cond_37
    move v0, v3

    .line 2248
    .local v0, "isNewInstall":Z
    :cond_38
    if-eqz v4, :cond_51

    if-eqz v0, :cond_51

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 2249
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v3

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v5, v3, v6}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 2252
    :cond_51
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v3, p0, v4}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2253
    return-void

    .line 2228
    .end local v0  # "isNewInstall":Z
    .end local v1  # "observer":Landroid/content/pm/IPackageInstallObserver2;
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v4  # "success":Z
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 29
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "offsetBytes"  # J
    .param p4, "lengthBytes"  # J
    .param p6, "incomingFd"  # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v12, p4

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 735
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 736
    const-string/jumbo v0, "openWrite"

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 738
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_26

    .line 739
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v0}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 740
    .local v0, "fd":Landroid/os/RevocableFileDescriptor;
    const/4 v6, 0x0

    .line 741
    .local v6, "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    goto :goto_33

    .line 743
    .end local v0  # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6  # "bridge":Landroid/os/FileBridge;
    :cond_26
    const/4 v0, 0x0

    .line 744
    .restart local v0  # "fd":Landroid/os/RevocableFileDescriptor;
    new-instance v6, Landroid/os/FileBridge;

    invoke-direct {v6}, Landroid/os/FileBridge;-><init>()V

    .line 745
    .restart local v6  # "bridge":Landroid/os/FileBridge;
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    move-object v15, v6

    .line 748
    .end local v0  # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v6  # "bridge":Landroid/os/FileBridge;
    .local v14, "fd":Landroid/os/RevocableFileDescriptor;
    .local v15, "bridge":Landroid/os/FileBridge;
    :goto_33
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v0

    move-object v11, v0

    .line 749
    .local v11, "stageDir":Ljava/io/File;
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_168

    .line 753
    :try_start_39
    invoke-static/range {p1 .. p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 757
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_43
    .catch Landroid/system/ErrnoException; {:try_start_39 .. :try_end_43} :catch_160

    move-wide/from16 v16, v5

    .line 759
    .local v16, "identity":J
    :try_start_45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_13e

    move-object/from16 v18, v0

    .line 761
    .local v18, "target":Ljava/io/File;
    :try_start_4c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    nop

    .line 766
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/system/OsConstants;->O_CREAT:I

    sget v6, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v5, v6

    const/16 v6, 0x1a4

    invoke-static {v0, v5, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v10, v0

    .line 768
    .local v10, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_67
    .catch Landroid/system/ErrnoException; {:try_start_4c .. :try_end_67} :catch_160

    .line 772
    const-wide/16 v5, 0x0

    if-eqz v11, :cond_84

    cmp-long v0, v12, v5

    if-lez v0, :cond_84

    .line 773
    :try_start_6f
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 774
    invoke-static {v7}, Lcom/android/internal/content/PackageHelper;->translateAllocateFlags(I)I

    move-result v7

    .line 773
    invoke-virtual {v0, v10, v12, v13, v7}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    .line 777
    :cond_84
    cmp-long v0, v3, v5

    if-lez v0, :cond_93

    .line 778
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v10, v3, v4, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_8d
    .catch Landroid/system/ErrnoException; {:try_start_6f .. :try_end_8d} :catch_8e

    goto :goto_93

    .line 831
    .end local v10  # "targetFd":Ljava/io/FileDescriptor;
    .end local v16  # "identity":J
    .end local v18  # "target":Ljava/io/File;
    :catch_8e
    move-exception v0

    move-object/from16 v19, v11

    goto/16 :goto_163

    .line 781
    .restart local v10  # "targetFd":Ljava/io/FileDescriptor;
    .restart local v16  # "identity":J
    .restart local v18  # "target":Ljava/io/File;
    :cond_93
    :goto_93
    if-eqz p6, :cond_118

    .line 782
    :try_start_95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_99
    .catch Landroid/system/ErrnoException; {:try_start_95 .. :try_end_99} :catch_160

    if-eqz v0, :cond_ac

    const/16 v7, 0x3e8

    if-eq v0, v7, :cond_ac

    const/16 v7, 0x7d0

    if-ne v0, v7, :cond_a4

    goto :goto_ac

    .line 788
    :cond_a4
    :try_start_a4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Reverse mode only supported from shell or system"

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11  # "stageDir":Ljava/io/File;
    .end local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15  # "bridge":Landroid/os/FileBridge;
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "offsetBytes":J
    .end local p4  # "lengthBytes":J
    .end local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0
    :try_end_ac
    .catch Landroid/system/ErrnoException; {:try_start_a4 .. :try_end_ac} :catch_8e

    .line 786
    .restart local v11  # "stageDir":Ljava/io/File;
    .restart local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15  # "bridge":Landroid/os/FileBridge;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "offsetBytes":J
    .restart local p4  # "lengthBytes":J
    .restart local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :cond_ac
    :goto_ac
    nop

    .line 797
    :try_start_ad
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 798
    .local v0, "last":Landroid/system/Int64Ref;
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v9, 0x0

    sget-object v19, Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    new-instance v7, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;

    invoke-direct {v7, v1, v0}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$0Oqu1oanLjaOBEcFPtJVCRQ0lHs;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V
    :try_end_be
    .catchall {:try_start_ad .. :try_end_be} :catchall_f3

    move-object v6, v10

    move-object/from16 v20, v7

    move-wide/from16 v7, p4

    move-object/from16 v21, v10

    .end local v10  # "targetFd":Ljava/io/FileDescriptor;
    .local v21, "targetFd":Ljava/io/FileDescriptor;
    move-object/from16 v10, v19

    move-object/from16 v19, v11

    .end local v11  # "stageDir":Ljava/io/File;
    .local v19, "stageDir":Ljava/io/File;
    move-object/from16 v11, v20

    :try_start_cb
    invoke-static/range {v5 .. v11}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_f1

    .line 807
    nop

    .end local v0  # "last":Landroid/system/Int64Ref;
    :try_start_cf
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 808
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 812
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d8
    .catch Landroid/system/ErrnoException; {:try_start_cf .. :try_end_d8} :catch_15e

    .line 813
    :try_start_d8
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_e2

    .line 814
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ea

    .line 816
    :cond_e2
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 817
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 819
    :goto_ea
    monitor-exit v5

    .line 820
    nop

    .line 821
    const/4 v0, 0x0

    return-object v0

    .line 819
    :catchall_ee
    move-exception v0

    monitor-exit v5
    :try_end_f0
    .catchall {:try_start_d8 .. :try_end_f0} :catchall_ee

    .end local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15  # "bridge":Landroid/os/FileBridge;
    .end local v19  # "stageDir":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "offsetBytes":J
    .end local p4  # "lengthBytes":J
    .end local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :goto_f0
    :try_start_f0
    throw v0

    .line 807
    .restart local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15  # "bridge":Landroid/os/FileBridge;
    .restart local v19  # "stageDir":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "offsetBytes":J
    .restart local p4  # "lengthBytes":J
    .restart local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catchall_f1
    move-exception v0

    goto :goto_f8

    .end local v19  # "stageDir":Ljava/io/File;
    .end local v21  # "targetFd":Ljava/io/FileDescriptor;
    .restart local v10  # "targetFd":Ljava/io/FileDescriptor;
    .restart local v11  # "stageDir":Ljava/io/File;
    :catchall_f3
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v19, v11

    .end local v10  # "targetFd":Ljava/io/FileDescriptor;
    .end local v11  # "stageDir":Ljava/io/File;
    .restart local v19  # "stageDir":Ljava/io/File;
    .restart local v21  # "targetFd":Ljava/io/FileDescriptor;
    :goto_f8
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 808
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 812
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_101
    .catch Landroid/system/ErrnoException; {:try_start_f0 .. :try_end_101} :catch_15e

    .line 813
    :try_start_101
    sget-boolean v6, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v6, :cond_10b

    .line 814
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_113

    .line 816
    :cond_10b
    invoke-virtual {v15}, Landroid/os/FileBridge;->forceClose()V

    .line 817
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 819
    :goto_113
    monitor-exit v5

    goto :goto_f0

    :catchall_115
    move-exception v0

    monitor-exit v5
    :try_end_117
    .catchall {:try_start_101 .. :try_end_117} :catchall_115

    goto :goto_f0

    .line 822
    .end local v19  # "stageDir":Ljava/io/File;
    .end local v21  # "targetFd":Ljava/io/FileDescriptor;
    .restart local v10  # "targetFd":Ljava/io/FileDescriptor;
    .restart local v11  # "stageDir":Ljava/io/File;
    :cond_118
    move-object/from16 v21, v10

    move-object/from16 v19, v11

    .end local v10  # "targetFd":Ljava/io/FileDescriptor;
    .end local v11  # "stageDir":Ljava/io/File;
    .restart local v19  # "stageDir":Ljava/io/File;
    .restart local v21  # "targetFd":Ljava/io/FileDescriptor;
    :try_start_11c
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_12c

    .line 823
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    move-object/from16 v5, v21

    .end local v21  # "targetFd":Ljava/io/FileDescriptor;
    .local v5, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v14, v0, v5}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 824
    invoke-virtual {v14}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 826
    .end local v5  # "targetFd":Ljava/io/FileDescriptor;
    .restart local v21  # "targetFd":Ljava/io/FileDescriptor;
    :cond_12c
    move-object/from16 v5, v21

    .end local v21  # "targetFd":Ljava/io/FileDescriptor;
    .restart local v5  # "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v15, v5}, Landroid/os/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 827
    invoke-virtual {v15}, Landroid/os/FileBridge;->start()V

    .line 828
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v15}, Landroid/os/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 761
    .end local v5  # "targetFd":Ljava/io/FileDescriptor;
    .end local v18  # "target":Ljava/io/File;
    .end local v19  # "stageDir":Ljava/io/File;
    .restart local v11  # "stageDir":Ljava/io/File;
    :catchall_13e
    move-exception v0

    move-object/from16 v19, v11

    .end local v11  # "stageDir":Ljava/io/File;
    .restart local v19  # "stageDir":Ljava/io/File;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15  # "bridge":Landroid/os/FileBridge;
    .end local v19  # "stageDir":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "offsetBytes":J
    .end local p4  # "lengthBytes":J
    .end local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0

    .line 754
    .end local v16  # "identity":J
    .restart local v11  # "stageDir":Ljava/io/File;
    .restart local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15  # "bridge":Landroid/os/FileBridge;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "offsetBytes":J
    .restart local p4  # "lengthBytes":J
    .restart local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :cond_145
    move-object/from16 v19, v11

    .end local v11  # "stageDir":Ljava/io/File;
    .restart local v19  # "stageDir":Ljava/io/File;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15  # "bridge":Landroid/os/FileBridge;
    .end local v19  # "stageDir":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "offsetBytes":J
    .end local p4  # "lengthBytes":J
    .end local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    throw v0
    :try_end_15e
    .catch Landroid/system/ErrnoException; {:try_start_11c .. :try_end_15e} :catch_15e

    .line 831
    .restart local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .restart local v15  # "bridge":Landroid/os/FileBridge;
    .restart local v19  # "stageDir":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "offsetBytes":J
    .restart local p4  # "lengthBytes":J
    .restart local p6  # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catch_15e
    move-exception v0

    goto :goto_163

    .end local v19  # "stageDir":Ljava/io/File;
    .restart local v11  # "stageDir":Ljava/io/File;
    :catch_160
    move-exception v0

    move-object/from16 v19, v11

    .line 832
    .end local v11  # "stageDir":Ljava/io/File;
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v19  # "stageDir":Ljava/io/File;
    :goto_163
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 749
    .end local v0  # "e":Landroid/system/ErrnoException;
    .end local v14  # "fd":Landroid/os/RevocableFileDescriptor;
    .end local v15  # "bridge":Landroid/os/FileBridge;
    .end local v19  # "stageDir":Ljava/io/File;
    :catchall_168
    move-exception v0

    :try_start_169
    monitor-exit v5
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw v0
.end method

.method private dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2370
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2371
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mOriginalInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2372
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    const-string/jumbo v1, "mInstallerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2373
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2374
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createdMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2375
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-string/jumbo v1, "stageDir"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2376
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    const-string/jumbo v1, "stageCid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2377
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2379
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2381
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "mClientProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2382
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "mProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2383
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mCommitted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2384
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mSealed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2385
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mPermissionsManuallyAccepted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2386
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mRelinquished"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2387
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "mDestroyed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2388
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mFds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2389
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mBridges"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2390
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mFinalStatus"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2391
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    const-string/jumbo v1, "mFinalMessage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2392
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2393
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "params.isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2394
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2396
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2397
    return-void
.end method

.method private static extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 9
    .param p0, "packageDir"  # Ljava/io/File;
    .param p1, "abiOverride"  # Ljava/lang/String;
    .param p2, "inherit"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2003
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2004
    .local v0, "libDir":Ljava/io/File;
    const/4 v1, 0x1

    if-nez p2, :cond_e

    .line 2006
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    .line 2009
    :cond_e
    const/4 v2, 0x0

    .line 2011
    .local v2, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_f
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v3

    move-object v2, v3

    .line 2012
    invoke-static {v2, v0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_38
    .catchall {:try_start_f .. :try_end_18} :catchall_36

    .line 2014
    .local v3, "res":I
    if-ne v3, v1, :cond_1f

    .line 2022
    .end local v3  # "res":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2023
    nop

    .line 2024
    return-void

    .line 2015
    .restart local v3  # "res":I
    :cond_1f
    :try_start_1f
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract native libraries, res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v0  # "libDir":Ljava/io/File;
    .end local v2  # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0  # "packageDir":Ljava/io/File;
    .end local p1  # "abiOverride":Ljava/lang/String;
    .end local p2  # "inherit":Z
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_36} :catch_38
    .catchall {:try_start_1f .. :try_end_36} :catchall_36

    .line 2022
    .end local v3  # "res":I
    .restart local v0  # "libDir":Ljava/io/File;
    .restart local v2  # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0  # "packageDir":Ljava/io/File;
    .restart local p1  # "abiOverride":Ljava/lang/String;
    .restart local p2  # "inherit":Z
    :catchall_36
    move-exception v1

    goto :goto_43

    .line 2018
    :catch_38
    move-exception v1

    .line 2019
    .local v1, "e":Ljava/io/IOException;
    :try_start_39
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x6e

    const-string v5, "Failed to extract native libraries"

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "libDir":Ljava/io/File;
    .end local v2  # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local p0  # "packageDir":Ljava/io/File;
    .end local p1  # "abiOverride":Ljava/lang/String;
    .end local p2  # "inherit":Z
    throw v3
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_36

    .line 2022
    .end local v1  # "e":Ljava/io/IOException;
    .restart local v0  # "libDir":Ljava/io/File;
    .restart local v2  # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local p0  # "packageDir":Ljava/io/File;
    .restart local p1  # "abiOverride":Ljava/lang/String;
    .restart local p2  # "inherit":Z
    :goto_43
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 7
    .param p1, "includeIcon"  # Z
    .param p2, "scrubData"  # Z

    .line 503
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 504
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_8
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 506
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 507
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 508
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v2, :cond_1f

    .line 509
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 510
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 511
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 512
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 513
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 515
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 516
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 517
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 518
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 519
    if-eqz p1, :cond_5b

    .line 520
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 522
    :cond_5b
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 524
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 525
    if-nez p2, :cond_6f

    .line 526
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 528
    :cond_6f
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 529
    if-nez p2, :cond_7d

    .line 530
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 532
    :cond_7d
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 533
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 534
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 535
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 536
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 537
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 538
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 539
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    if-nez v2, :cond_af

    .line 540
    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 542
    :cond_af
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied:Z

    .line 543
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady:Z

    .line 544
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed:Z

    .line 545
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->setStagedSessionErrorCode(ILjava/lang/String;)V

    .line 546
    iget-wide v2, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 547
    monitor-exit v1

    .line 548
    return-object v0

    .line 547
    :catchall_c8
    move-exception v2

    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_8 .. :try_end_ca} :catchall_c8

    throw v2
.end method

.method private getChildSessions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 1077
    const/4 v0, 0x0

    .line 1078
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    .line 1080
    .local v1, "childSessionIds":[I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1081
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_24

    aget v4, v1, v3

    .line 1082
    .local v4, "childSessionId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v5, v4}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    .end local v4  # "childSessionId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1085
    .end local v1  # "childSessionIds":[I
    :cond_24
    return-object v0
.end method

.method private static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"  # Ljava/io/File;
    .param p1, "base"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1932
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, "pathStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1935
    .local v1, "baseStr":Ljava/lang/String;
    const-string v2, "/."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1939
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1940
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1943
    :cond_1f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " outside base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1936
    :cond_3e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid path (was relative) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleCommit()V
    .registers 7

    .line 1290
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1291
    const/16 v0, 0x70

    .line 1292
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 1293
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1294
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1296
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 1297
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1298
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1299
    const/4 v0, 0x1

    const-string v2, "Session staged"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1300
    return-void

    .line 1303
    :cond_2b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3f

    .line 1304
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1305
    const/16 v0, -0x6e

    const-string v2, "APEX packages can only be installed using staged sessions."

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1307
    return-void

    .line 1314
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 1317
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :try_start_43
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_46
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_43 .. :try_end_46} :catch_4e

    .line 1318
    :try_start_46
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->commitNonStagedLocked(Ljava/util/List;)V

    .line 1319
    monitor-exit v2

    .line 1325
    goto :goto_7b

    .line 1319
    :catchall_4b
    move-exception v3

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4b

    .end local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_4d
    throw v3
    :try_end_4e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 1320
    .restart local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catch_4e
    move-exception v2

    .line 1321
    .local v2, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-static {v2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1322
    .local v3, "completeMsg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Commit of session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageInstallerSession"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1324
    iget v4, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1326
    .end local v2  # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v3  # "completeMsg":Ljava/lang/String;
    :goto_7b
    return-void
.end method

.method private isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 373
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 374
    return v2

    .line 376
    :cond_c
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 377
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 378
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-virtual {v0, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2
.end method

.method private isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 12
    .param p2, "toDir"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 1893
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 1894
    .local v1, "toStat":Landroid/system/StructStat;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1895
    .local v3, "fromFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    .line 1896
    .local v4, "fromStat":Landroid/system/StructStat;
    iget-wide v5, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v7, v1, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2e

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2a

    .line 1897
    return v0

    .line 1899
    .end local v3  # "fromFile":Ljava/io/File;
    .end local v4  # "fromStat":Landroid/system/StructStat;
    :cond_2a
    goto :goto_d

    .line 1903
    .end local v1  # "toStat":Landroid/system/StructStat;
    :cond_2b
    nop

    .line 1904
    const/4 v0, 0x1

    return v0

    .line 1900
    :catch_2e
    move-exception v1

    .line 1901
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to detect if linking possible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageInstallerSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return v0
.end method

.method private static isStagedSessionStateValid(ZZZ)Z
    .registers 4
    .param p0, "isReady"  # Z
    .param p1, "isApplied"  # Z
    .param p2, "isFailed"  # Z

    .line 2521
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    if-eqz p2, :cond_18

    :cond_6
    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    if-eqz p2, :cond_18

    :cond_c
    if-nez p0, :cond_12

    if-eqz p1, :cond_12

    if-eqz p2, :cond_18

    :cond_12
    if-nez p0, :cond_1a

    if-nez p1, :cond_1a

    if-eqz p2, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method static synthetic lambda$readFromXml$1(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"  # I

    .line 2628
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$readFromXml$2(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"  # Ljava/lang/Integer;

    .line 2637
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .param p2, "toDir"  # Ljava/io/File;
    .param p3, "fromDir"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1959
    .local p1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1960
    .local v1, "fromFile":Ljava/io/File;
    invoke-static {v1, p3}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 1962
    .local v2, "relativePath":Ljava/lang/String;
    :try_start_14
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1963
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1962
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14 .. :try_end_23} :catch_25

    .line 1967
    nop

    .line 1968
    .end local v1  # "fromFile":Ljava/io/File;
    .end local v2  # "relativePath":Ljava/lang/String;
    goto :goto_4

    .line 1964
    .restart local v1  # "fromFile":Ljava/io/File;
    .restart local v2  # "relativePath":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 1965
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed linkOrCreateDir("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1970
    .end local v0  # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1  # "fromFile":Ljava/io/File;
    .end local v2  # "relativePath":Ljava/lang/String;
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Linked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return-void
.end method

.method private makeSessionActiveLocked()Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1376
    const-string v0, "PackageInstallerSession"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_176

    .line 1380
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_16e

    .line 1383
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_166

    .line 1388
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 1389
    const/4 v0, 0x0

    .local v0, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    goto/16 :goto_13d

    .line 1391
    .end local v0  # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :cond_1d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_138

    .line 1392
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->needToAskForPermissionsLocked()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1401
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1404
    :try_start_4f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_54} :catch_55

    .line 1406
    goto :goto_56

    .line 1405
    :catch_55
    move-exception v1

    .line 1410
    :goto_56
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 1411
    const/4 v1, 0x0

    return-object v1

    .line 1416
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_5c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_124

    .line 1418
    :try_start_63
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 1419
    .local v1, "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v3

    .line 1421
    .local v3, "toDir":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inherited files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_95

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v4, :cond_8c

    goto :goto_95

    .line 1423
    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "mInheritedFilesBase == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v0

    .line 1426
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_95
    :goto_95
    invoke-direct {p0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 1427
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 1428
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "oat"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1429
    .local v4, "oatDir":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/util/List;Ljava/io/File;)V

    .line 1432
    .end local v4  # "oatDir":Ljava/io/File;
    :cond_b0
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_110

    .line 1433
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1435
    .local v5, "libPath":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1436
    .local v6, "splitIndex":I
    if-ltz v6, :cond_fb

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-lt v6, v7, :cond_da

    goto :goto_fb

    .line 1442
    :cond_da
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1443
    .local v7, "libDirPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1444
    .local v8, "libDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_ec

    .line 1445
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1447
    :cond_ec
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1448
    .local v9, "archDirPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    .line 1450
    .end local v5  # "libPath":Ljava/lang/String;
    .end local v6  # "splitIndex":I
    .end local v7  # "libDirPath":Ljava/lang/String;
    .end local v8  # "libDir":Ljava/io/File;
    .end local v9  # "archDirPath":Ljava/lang/String;
    goto :goto_be

    .line 1437
    .restart local v5  # "libPath":Ljava/lang/String;
    .restart local v6  # "splitIndex":I
    :cond_fb
    :goto_fb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    goto :goto_be

    .line 1452
    .end local v5  # "libPath":Ljava/lang/String;
    .end local v6  # "splitIndex":I
    :cond_110
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-direct {p0, v1, v3, v0}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_119

    .line 1456
    :cond_116
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_119} :catch_11a

    .line 1461
    .end local v1  # "fromFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3  # "toDir":Ljava/io/File;
    :goto_119
    goto :goto_124

    .line 1458
    :catch_11a
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    const-string v3, "Failed to inherit existing install"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1465
    .end local v0  # "e":Ljava/io/IOException;
    :cond_124
    :goto_124
    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 1466
    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1469
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 1470
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v3

    .line 1469
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Ljava/io/File;Ljava/lang/String;Z)V

    .line 1475
    :cond_138
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1491
    .local v0, "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    :goto_13d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_148

    .line 1492
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .local v1, "user":Landroid/os/UserHandle;
    goto :goto_14f

    .line 1494
    .end local v1  # "user":Landroid/os/UserHandle;
    :cond_148
    new-instance v1, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1497
    .restart local v1  # "user":Landroid/os/UserHandle;
    :goto_14f
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    .line 1498
    new-instance v2, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v3, v2

    move-object v6, v0

    move-object v10, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;)V

    return-object v2

    .line 1384
    .end local v0  # "localObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v1  # "user":Landroid/os/UserHandle;
    :cond_166
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1381
    :cond_16e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1377
    :cond_176
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session relinquished"

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private mayInheritNativeLibs()Z
    .registers 4

    .line 1518
    const/4 v0, 0x1

    const-string/jumbo v1, "pi.inherit_native_on_dont_kill"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method private static maybeRenameFile(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p0, "from"  # Ljava/io/File;
    .param p1, "to"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1504
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1505
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 1506
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1510
    :cond_2e
    :goto_2e
    return-void
.end method

.method private needToAskForPermissionsLocked()Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 391
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 392
    return v1

    .line 395
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 396
    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 398
    .local v0, "isInstallPermissionGranted":Z
    :goto_16
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 399
    const-string v5, "android.permission.INSTALL_SELF_UPDATES"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    .line 401
    .local v3, "isSelfUpdatePermissionGranted":Z
    :goto_25
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 402
    const-string v6, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_33

    move v4, v2

    goto :goto_34

    :cond_33
    move v4, v1

    .line 404
    .local v4, "isUpdatePermissionGranted":Z
    :goto_34
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 405
    .local v5, "targetPackageUid":I
    if-nez v0, :cond_4e

    if-eqz v4, :cond_45

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4e

    :cond_45
    if-eqz v3, :cond_4c

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v5, v6, :cond_4c

    goto :goto_4e

    :cond_4c
    move v6, v1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v6, v2

    .line 408
    .local v6, "isPermissionGranted":Z
    :goto_4f
    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v7, :cond_55

    move v7, v2

    goto :goto_56

    :cond_55
    move v7, v1

    .line 409
    .local v7, "isInstallerRoot":Z
    :goto_56
    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_5e

    move v8, v2

    goto :goto_5f

    :cond_5e
    move v8, v1

    .line 410
    .local v8, "isInstallerSystem":Z
    :goto_5f
    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v9, v9, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_69

    move v9, v2

    goto :goto_6a

    :cond_69
    move v9, v1

    .line 415
    .local v9, "forcePermissionPrompt":Z
    :goto_6a
    if-nez v9, :cond_7a

    if-nez v6, :cond_79

    if-nez v7, :cond_79

    if-nez v8, :cond_79

    .line 416
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v10

    if-nez v10, :cond_79

    goto :goto_7a

    :cond_79
    goto :goto_7b

    :cond_7a
    :goto_7a
    move v1, v2

    .line 415
    :goto_7b
    return v1
.end method

.method private openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 854
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 855
    .local v0, "target":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 856
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 852
    .end local v0  # "target":Ljava/io/File;
    .end local v1  # "targetFd":Ljava/io/FileDescriptor;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "name":Ljava/lang/String;
    throw v0
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_37} :catch_37

    .line 857
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "name":Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 858
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method static readChildSessionIdFromXml(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 3
    .param p0, "in"  # Lorg/xmlpull/v1/XmlPullParser;

    .line 2653
    const-string/jumbo v0, "sessionId"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;)Lcom/android/server/pm/PackageInstallerSession;
    .registers 63
    .param p0, "in"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "callback"  # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "pm"  # Lcom/android/server/pm/PackageManagerService;
    .param p4, "installerThread"  # Landroid/os/Looper;
    .param p5, "stagingManager"  # Lcom/android/server/pm/StagingManager;
    .param p6, "sessionsDir"  # Ljava/io/File;
    .param p7, "sessionProvider"  # Lcom/android/server/pm/PackageSessionProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2546
    move-object/from16 v0, p0

    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 2547
    .local v14, "sessionId":I
    const-string/jumbo v2, "userId"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .line 2548
    .local v15, "userId":I
    const-string/jumbo v2, "installerPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2549
    .local v13, "installerPackageName":Ljava/lang/String;
    const/16 v2, 0x2000

    move-object/from16 v12, p3

    invoke-virtual {v12, v13, v2, v15}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    const-string/jumbo v3, "installerUid"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v28

    .line 2551
    .local v28, "installerUid":I
    const-string v2, "createdMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v29

    .line 2552
    .local v29, "createdMillis":J
    const-string/jumbo v2, "updatedMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v31

    .line 2553
    .local v31, "updatedMillis":J
    const-string/jumbo v2, "sessionStageDir"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2554
    .local v11, "stageDirRaw":Ljava/lang/String;
    if-eqz v11, :cond_42

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    move-object/from16 v16, v2

    .line 2555
    .local v16, "stageDir":Ljava/io/File;
    const-string/jumbo v2, "sessionStageCid"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2556
    .local v33, "stageCid":Ljava/lang/String;
    const/4 v2, 0x1

    const-string/jumbo v3, "prepared"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v34

    .line 2557
    .local v34, "prepared":Z
    const-string v3, "committed"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    .line 2558
    .local v35, "committed":Z
    const-string/jumbo v3, "sealed"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v36

    .line 2559
    .local v36, "sealed":Z
    const/4 v3, -0x1

    const-string/jumbo v4, "parentSessionId"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v37

    .line 2562
    .local v37, "parentSessionId":I
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v4, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v10, v4

    .line 2564
    .local v10, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    const/4 v4, 0x0

    const-string/jumbo v5, "multiPackage"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2565
    const-string/jumbo v5, "stagedSession"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2566
    const-string/jumbo v5, "mode"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2567
    const-string/jumbo v5, "installFlags"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2568
    const-string/jumbo v5, "installLocation"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2569
    const-string/jumbo v5, "sizeBytes"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2570
    const-string v5, "appPackageName"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2571
    const-string v5, "appIcon"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2572
    const-string v5, "appLabel"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2573
    const-string/jumbo v5, "originatingUri"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2574
    nop

    .line 2575
    const-string/jumbo v5, "originatingUid"

    invoke-static {v0, v5, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2576
    const-string/jumbo v5, "referrerUri"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2577
    const-string v5, "abiOverride"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2578
    const-string/jumbo v5, "volumeUuid"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2579
    const-string/jumbo v5, "installRason"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2581
    move-object/from16 v9, p6

    invoke-static {v14, v9}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v38

    .line 2582
    .local v38, "appIconFile":Ljava/io/File;
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_110

    .line 2583
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2584
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v10, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 2586
    :cond_110
    const-string/jumbo v5, "isReady"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .line 2587
    .local v8, "isReady":Z
    const-string/jumbo v5, "isFailed"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    .line 2588
    .local v7, "isFailed":Z
    const-string/jumbo v5, "isApplied"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    .line 2589
    .local v6, "isApplied":Z
    const-string v5, "errorCode"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v39

    .line 2591
    .local v39, "stagedSessionErrorCode":I
    const-string v4, "errorMessage"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2594
    .local v40, "stagedSessionErrorMessage":Ljava/lang/String;
    invoke-static {v8, v6, v7}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 2604
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    .line 2605
    .local v5, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2606
    .local v4, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v41, v17

    .line 2607
    .local v41, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2609
    .local v3, "outerDepth":I
    :goto_14d
    move/from16 v18, v6

    .end local v6  # "isApplied":Z
    .local v18, "isApplied":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move/from16 v42, v6

    .local v42, "type":I
    if-eq v6, v2, :cond_1d9

    const/4 v6, 0x3

    move/from16 v12, v42

    .end local v42  # "type":I
    .local v12, "type":I
    if-ne v12, v6, :cond_169

    .line 2610
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v3, :cond_163

    goto :goto_169

    :cond_163
    move/from16 v20, v3

    move-object/from16 v6, v41

    goto/16 :goto_1df

    .line 2611
    :cond_169
    :goto_169
    if-eq v12, v6, :cond_1cd

    const/4 v2, 0x4

    if-ne v12, v2, :cond_174

    .line 2612
    move-object/from16 v12, p3

    move/from16 v6, v18

    const/4 v2, 0x1

    goto :goto_14d

    .line 2614
    :cond_174
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "granted-runtime-permission"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v6, "name"

    if-eqz v2, :cond_18a

    .line 2615
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    :cond_18a
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move/from16 v20, v3

    .end local v3  # "outerDepth":I
    .local v20, "outerDepth":I
    const-string/jumbo v3, "whitelisted-restricted-permission"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 2618
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2621
    :cond_1a0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "childSession"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 2622
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, v41

    .end local v41  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p3

    move/from16 v6, v18

    move/from16 v3, v20

    const/4 v2, 0x1

    goto :goto_14d

    .line 2621
    .end local v6  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1c2
    move-object/from16 v6, v41

    const/4 v2, -0x1

    .end local v41  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v12, p3

    move/from16 v6, v18

    move/from16 v3, v20

    const/4 v2, 0x1

    goto :goto_14d

    .line 2611
    .end local v6  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20  # "outerDepth":I
    .restart local v3  # "outerDepth":I
    .restart local v41  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1cd
    move/from16 v20, v3

    move-object/from16 v6, v41

    const/4 v2, -0x1

    .end local v3  # "outerDepth":I
    .end local v41  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20  # "outerDepth":I
    move-object/from16 v12, p3

    move/from16 v6, v18

    const/4 v2, 0x1

    goto/16 :goto_14d

    .line 2609
    .end local v6  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12  # "type":I
    .end local v20  # "outerDepth":I
    .restart local v3  # "outerDepth":I
    .restart local v41  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v42  # "type":I
    :cond_1d9
    move/from16 v20, v3

    move-object/from16 v6, v41

    move/from16 v12, v42

    .line 2626
    .end local v3  # "outerDepth":I
    .end local v41  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v42  # "type":I
    .restart local v6  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12  # "type":I
    .restart local v20  # "outerDepth":I
    :goto_1df
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f4

    .line 2627
    nop

    .line 2628
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$7Sec-athzbWSLkwYbdNW1Dgq0jU;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$7Sec-athzbWSLkwYbdNW1Dgq0jU;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v10, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 2631
    :cond_1f4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1fc

    .line 2632
    iput-object v4, v10, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2636
    :cond_1fc
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_211

    .line 2637
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$fMSKA3sU8i-wLB8uwZHGaX-jhFI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .local v1, "childSessionIdsArray":[I
    goto :goto_213

    .line 2639
    .end local v1  # "childSessionIdsArray":[I
    :cond_211
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 2642
    .restart local v1  # "childSessionIdsArray":[I
    :goto_213
    new-instance v41, Lcom/android/server/pm/PackageInstallerSession;

    move-object/from16 v2, v41

    move/from16 v42, v20

    .end local v20  # "outerDepth":I
    .local v42, "outerDepth":I
    move-object/from16 v3, p1

    move-object/from16 v43, v4

    .end local v4  # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v43, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, p2

    move-object/from16 v44, v5

    .end local v5  # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v44, "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v5, p3

    move-object/from16 v46, v6

    move/from16 v45, v18

    .end local v6  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18  # "isApplied":Z
    .local v45, "isApplied":Z
    .local v46, "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v6, p7

    move/from16 v47, v7

    .end local v7  # "isFailed":Z
    .local v47, "isFailed":Z
    move-object/from16 v7, p4

    move/from16 v48, v8

    .end local v8  # "isReady":Z
    .local v48, "isReady":Z
    move-object/from16 v8, p5

    move v9, v14

    move-object/from16 v49, v10

    .end local v10  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v49, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move v10, v15

    move-object/from16 v50, v11

    .end local v11  # "stageDirRaw":Ljava/lang/String;
    .local v50, "stageDirRaw":Ljava/lang/String;
    move-object v11, v13

    move/from16 v51, v12

    .end local v12  # "type":I
    .local v51, "type":I
    move/from16 v12, v28

    move-object/from16 v52, v13

    .end local v13  # "installerPackageName":Ljava/lang/String;
    .local v52, "installerPackageName":Ljava/lang/String;
    move-object/from16 v13, v49

    move/from16 v53, v14

    move/from16 v54, v15

    .end local v14  # "sessionId":I
    .end local v15  # "userId":I
    .local v53, "sessionId":I
    .local v54, "userId":I
    move-wide/from16 v14, v29

    move-object/from16 v17, v33

    move/from16 v18, v34

    move/from16 v19, v35

    move/from16 v20, v36

    move-object/from16 v21, v1

    move/from16 v22, v37

    move/from16 v23, v48

    move/from16 v24, v47

    move/from16 v25, v45

    move/from16 v26, v39

    move-object/from16 v27, v40

    invoke-direct/range {v2 .. v27}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IILjava/lang/String;ILandroid/content/pm/PackageInstaller$SessionParams;JLjava/io/File;Ljava/lang/String;ZZZ[IIZZZILjava/lang/String;)V

    return-object v41

    .line 2595
    .end local v1  # "childSessionIdsArray":[I
    .end local v42  # "outerDepth":I
    .end local v43  # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v44  # "grantedRuntimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45  # "isApplied":Z
    .end local v46  # "childSessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v47  # "isFailed":Z
    .end local v48  # "isReady":Z
    .end local v49  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v50  # "stageDirRaw":Ljava/lang/String;
    .end local v51  # "type":I
    .end local v52  # "installerPackageName":Ljava/lang/String;
    .end local v53  # "sessionId":I
    .end local v54  # "userId":I
    .local v6, "isApplied":Z
    .restart local v7  # "isFailed":Z
    .restart local v8  # "isReady":Z
    .restart local v10  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11  # "stageDirRaw":Ljava/lang/String;
    .restart local v13  # "installerPackageName":Ljava/lang/String;
    .restart local v14  # "sessionId":I
    .restart local v15  # "userId":I
    :cond_260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t restore staged session with invalid state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .param p1, "origFile"  # Ljava/io/File;
    .param p2, "targetFile"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1822
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1823
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1825
    new-instance v0, Ljava/io/File;

    .line 1826
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v0, "originalSignature":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, -0x76

    if-eqz v1, :cond_4b

    .line 1832
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez v1, :cond_35

    .line 1833
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 1834
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_2d

    goto :goto_35

    .line 1835
    :cond_2d
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Some file is missing fs-verity signature"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1847
    :cond_35
    :goto_35
    new-instance v1, Ljava/io/File;

    .line 1848
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v1, "stagedSignature":Ljava/io/File;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    .line 1850
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    return-void

    .line 1840
    .end local v1  # "stagedSignature":Ljava/io/File;
    :cond_4b
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    if-nez v1, :cond_50

    .line 1841
    return-void

    .line 1843
    :cond_50
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing corresponding fs-verity signature to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private resolveInheritedFile(Ljava/io/File;)V
    .registers 4
    .param p1, "origFile"  # Ljava/io/File;

    .line 1854
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    new-instance v0, Ljava/io/File;

    .line 1858
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v0, "fsveritySignatureFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1860
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    :cond_1d
    return-void
.end method

.method private resolveStageDirLocked()Ljava/io/File;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    if-nez v0, :cond_13

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 612
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    goto :goto_13

    .line 614
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing stageDir"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    return-object v0
.end method

.method private sealAndValidateLocked(Ljava/util/List;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    .local p1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 1149
    const-string/jumbo v0, "sealing of session"

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1153
    if-eqz p1, :cond_11

    .line 1154
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertMultiPackageConsistencyLocked(Ljava/util/List;)V

    .line 1157
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_4a

    .line 1158
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v1}, Lcom/android/server/pm/StagingManager;->getActiveSession()Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v1

    .line 1159
    .local v1, "activeSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_2a

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-eq v2, v3, :cond_2a

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-eq v2, v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 1162
    .local v0, "anotherSessionAlreadyInProgress":Z
    :goto_2b
    if-nez v0, :cond_2e

    goto :goto_4a

    .line 1163
    :cond_2e
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is already in-progress committed staged session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1173
    .end local v0  # "anotherSessionAlreadyInProgress":Z
    .end local v1  # "activeSession":Lcom/android/server/pm/PackageInstallerSession;
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_7c

    .line 1174
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const v2, 0x4000040

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1178
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 1181
    :try_start_62
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6f

    .line 1182
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_72

    .line 1184
    :cond_6f
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked(Landroid/content/pm/PackageInfo;)V
    :try_end_72
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_62 .. :try_end_72} :catch_7a
    .catchall {:try_start_62 .. :try_end_72} :catchall_73

    .line 1192
    :goto_72
    goto :goto_7c

    .line 1188
    :catchall_73
    move-exception v1

    .line 1191
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1186
    .end local v1  # "e":Ljava/lang/Throwable;
    :catch_7a
    move-exception v1

    .line 1187
    .local v1, "e":Lcom/android/server/pm/PackageManagerException;
    throw v1

    .line 1194
    .end local v0  # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v1  # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_7c
    :goto_7c
    return-void
.end method

.method private shouldScrubData(I)Z
    .registers 3
    .param p1, "callingUid"  # I

    .line 476
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    if-eq v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private validateApexInstallLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1532
    .local v0, "addedFiles":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_24

    .line 1536
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1c

    .line 1541
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1542
    return-void

    .line 1537
    :cond_1c
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Too many files for apex install"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1533
    :cond_24
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "No packages staged"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private validateApkInstallLocked(Landroid/content/pm/PackageInfo;)V
    .registers 28
    .param p1, "pkgInfo"  # Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1559
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1560
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1561
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1562
    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1564
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1565
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1566
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1569
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x2

    const/4 v6, -0x2

    if-ne v4, v5, :cond_33

    if-eqz v2, :cond_2b

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2b

    goto :goto_33

    .line 1571
    :cond_2b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Missing existing base package"

    invoke-direct {v0, v6, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1575
    :cond_33
    :goto_33
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_4e

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v4, v5, :cond_4e

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1577
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    goto :goto_4f

    :cond_4e
    move v4, v7

    :goto_4f
    iput-boolean v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFound:Z

    .line 1580
    :try_start_51
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_467

    .line 1584
    nop

    .line 1586
    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v9, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-virtual {v4, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1587
    .local v4, "removedFiles":[Ljava/io/File;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1588
    .local v9, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_88

    .line 1589
    array-length v10, v4

    move v11, v7

    :goto_6a
    if-ge v11, v10, :cond_88

    aget-object v12, v4, v11

    .line 1590
    .local v12, "removedFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1591
    .local v13, "fileName":Ljava/lang/String;
    nop

    .line 1592
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, ".removed"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1591
    invoke-virtual {v13, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1593
    .local v14, "splitName":Ljava/lang/String;
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    .end local v12  # "removedFile":Ljava/io/File;
    .end local v13  # "fileName":Ljava/lang/String;
    .end local v14  # "splitName":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 1597
    :cond_88
    iget-object v10, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v11, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v10

    .line 1598
    .local v10, "addedFiles":[Ljava/io/File;
    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_9d

    goto :goto_a5

    .line 1599
    :cond_9d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "No packages staged"

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1603
    :cond_a5
    :goto_a5
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1604
    .local v11, "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v12, v10

    move-object v13, v3

    move v3, v7

    .end local v3  # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .local v13, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :goto_ad
    const-string v14, ".apk"

    const/16 v15, 0x20

    if-ge v3, v12, :cond_1a0

    aget-object v5, v10, v3

    .line 1607
    .local v5, "addedFile":Ljava/io/File;
    :try_start_b5
    invoke-static {v5, v15}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v15
    :try_end_b9
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_b5 .. :try_end_b9} :catch_197

    .line 1611
    .local v15, "apk":Landroid/content/pm/PackageParser$ApkLite;
    nop

    .line 1613
    iget-object v7, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_178

    .line 1619
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v7, :cond_d2

    .line 1620
    iget-object v7, v15, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1621
    move-object v7, v9

    .end local v9  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ApkLite;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    goto :goto_d3

    .line 1619
    .end local v7  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d2
    move-object v7, v9

    .line 1623
    .end local v9  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_d3
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v9, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v8, v9, :cond_dd

    .line 1624
    iget-object v8, v15, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1627
    :cond_dd
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v15}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1631
    iget-object v8, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v8, :cond_eb

    .line 1632
    const-string v8, "base.apk"

    .local v8, "targetName":Ljava/lang/String;
    goto :goto_102

    .line 1634
    .end local v8  # "targetName":Ljava/lang/String;
    :cond_eb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "split_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1636
    .restart local v8  # "targetName":Ljava/lang/String;
    :goto_102
    invoke-static {v8}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v9

    const-string v14, "Invalid filename: "

    if-eqz v9, :cond_162

    .line 1641
    new-instance v9, Ljava/io/File;

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    .line 1642
    .local v0, "targetFile":Ljava/io/File;
    invoke-direct {v1, v5, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    .line 1645
    iget-object v9, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    if-nez v9, :cond_11d

    .line 1646
    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1647
    move-object v9, v15

    move-object v13, v9

    .line 1650
    :cond_11d
    invoke-static {v5}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 1651
    .local v9, "dexMetadataFile":Ljava/io/File;
    if-eqz v9, :cond_157

    .line 1652
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13f

    .line 1656
    new-instance v14, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 1657
    move-object/from16 v20, v0

    .end local v0  # "targetFile":Ljava/io/File;
    .local v20, "targetFile":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v14

    .line 1658
    .local v0, "targetDexMetadataFile":Ljava/io/File;
    invoke-direct {v1, v9, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_159

    .line 1653
    .end local v20  # "targetFile":Ljava/io/File;
    .local v0, "targetFile":Ljava/io/File;
    :cond_13f
    move-object/from16 v20, v0

    .end local v0  # "targetFile":Ljava/io/File;
    .restart local v20  # "targetFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1651
    .end local v20  # "targetFile":Ljava/io/File;
    .restart local v0  # "targetFile":Ljava/io/File;
    :cond_157
    move-object/from16 v20, v0

    .line 1604
    .end local v0  # "targetFile":Ljava/io/File;
    .end local v5  # "addedFile":Ljava/io/File;
    .end local v8  # "targetName":Ljava/lang/String;
    .end local v9  # "dexMetadataFile":Ljava/io/File;
    .end local v15  # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :goto_159
    add-int/lit8 v3, v3, 0x1

    move-object v9, v7

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    goto/16 :goto_ad

    .line 1637
    .restart local v5  # "addedFile":Ljava/io/File;
    .restart local v8  # "targetName":Ljava/lang/String;
    .restart local v15  # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :cond_162
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1614
    .end local v7  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8  # "targetName":Ljava/lang/String;
    .local v9, "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_178
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was defined multiple times"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x2

    invoke-direct {v0, v6, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1609
    .end local v15  # "apk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_197
    move-exception v0

    move-object v7, v9

    move-object v3, v0

    .end local v9  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v3

    .line 1610
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v3

    throw v3

    .line 1662
    .end local v0  # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v5  # "addedFile":Ljava/io/File;
    .end local v7  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a0
    move-object v7, v9

    .end local v9  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21e

    .line 1663
    if-eqz v2, :cond_204

    .line 1669
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1670
    .local v3, "splitName":Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 1674
    .end local v3  # "splitName":Ljava/lang/String;
    goto :goto_1ad

    .line 1671
    .restart local v3  # "splitName":Ljava/lang/String;
    :cond_1c2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x2

    invoke-direct {v0, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1677
    .end local v3  # "splitName":Ljava/lang/String;
    :cond_1da
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1e8

    .line 1678
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 1679
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 1681
    :cond_1e8
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v0, v3, :cond_21e

    .line 1683
    :try_start_1ee
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_1f9
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1ee .. :try_end_1f9} :catch_1fa

    .line 1689
    goto :goto_21e

    .line 1686
    :catch_1fa
    move-exception v0

    .line 1687
    .restart local v0  # "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Couldn\'t obtain signatures from base APK"

    const/4 v6, -0x2

    invoke-direct {v3, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1664
    .end local v0  # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_204
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing existing base package for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x2

    invoke-direct {v0, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1693
    :cond_21e
    :goto_21e
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_239

    .line 1695
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    move-object/from16 v25, v4

    goto/16 :goto_3ed

    .line 1696
    :cond_230
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Full install must include a base package"

    const/4 v5, -0x2

    invoke-direct {v0, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1703
    :cond_239
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1705
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_23b
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    move-object v5, v0

    .line 1706
    .local v5, "existing":Landroid/content/pm/PackageParser$PackageLite;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v15}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0
    :try_end_257
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_23b .. :try_end_257} :catch_45d

    move-object v6, v0

    .line 1710
    .local v6, "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    nop

    .line 1712
    const-string v0, "Existing base"

    invoke-direct {v1, v0, v6}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;)V

    .line 1715
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v0, :cond_27f

    .line 1716
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1717
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1719
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 1720
    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1721
    .local v0, "baseDexMetadataFile":Ljava/io/File;
    if-eqz v0, :cond_27d

    .line 1722
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1724
    :cond_27d
    move-object v8, v6

    move-object v13, v8

    .line 1728
    .end local v0  # "baseDexMetadataFile":Ljava/io/File;
    :cond_27f
    iget-object v0, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b6

    .line 1729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_288
    iget-object v8, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_2b6

    .line 1730
    iget-object v8, v5, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v8, v8, v0

    .line 1731
    .local v8, "splitName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    iget-object v12, v5, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v12, v12, v0

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v9, "splitFile":Ljava/io/File;
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 1733
    .local v12, "splitRemoved":Z
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2b3

    if-nez v12, :cond_2b3

    .line 1734
    invoke-direct {v1, v9}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1736
    nop

    .line 1737
    invoke-static {v9}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 1738
    .local v15, "splitDexMetadataFile":Ljava/io/File;
    if-eqz v15, :cond_2b3

    .line 1739
    invoke-direct {v1, v15}, Lcom/android/server/pm/PackageInstallerSession;->resolveInheritedFile(Ljava/io/File;)V

    .line 1729
    .end local v8  # "splitName":Ljava/lang/String;
    .end local v9  # "splitFile":Ljava/io/File;
    .end local v12  # "splitRemoved":Z
    .end local v15  # "splitDexMetadataFile":Ljava/io/File;
    :cond_2b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_288

    .line 1746
    .end local v0  # "i":I
    :cond_2b6
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 1747
    .local v8, "packageInstallDir":Ljava/io/File;
    iput-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 1748
    new-instance v0, Ljava/io/File;

    const-string/jumbo v9, "oat"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 1749
    .local v9, "oatDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_325

    .line 1750
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1755
    .local v0, "archSubdirs":[Ljava/io/File;
    if-eqz v0, :cond_320

    array-length v12, v0

    if-lez v12, :cond_320

    .line 1756
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v12

    .line 1757
    .local v12, "instructionSets":[Ljava/lang/String;
    array-length v15, v0

    const/4 v2, 0x0

    :goto_2e3
    if-ge v2, v15, :cond_31b

    aget-object v18, v0, v2

    .line 1759
    .local v18, "archSubDir":Ljava/io/File;
    move-object/from16 v20, v0

    .end local v0  # "archSubdirs":[Ljava/io/File;
    .local v20, "archSubdirs":[Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f6

    .line 1760
    move-object/from16 v21, v3

    goto :goto_314

    .line 1763
    :cond_2f6
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    move-object/from16 v21, v3

    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v21, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1764
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1765
    .local v0, "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_314

    .line 1766
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1757
    .end local v0  # "oatFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v18  # "archSubDir":Ljava/io/File;
    :cond_314
    :goto_314
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    goto :goto_2e3

    .end local v20  # "archSubdirs":[Ljava/io/File;
    .end local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "archSubdirs":[Ljava/io/File;
    .restart local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_31b
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    .end local v0  # "archSubdirs":[Ljava/io/File;
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20  # "archSubdirs":[Ljava/io/File;
    .restart local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_327

    .line 1755
    .end local v12  # "instructionSets":[Ljava/lang/String;
    .end local v20  # "archSubdirs":[Ljava/io/File;
    .end local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0  # "archSubdirs":[Ljava/io/File;
    .restart local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_320
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    .end local v0  # "archSubdirs":[Ljava/io/File;
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20  # "archSubdirs":[Ljava/io/File;
    .restart local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_327

    .line 1749
    .end local v20  # "archSubdirs":[Ljava/io/File;
    .end local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_325
    move-object/from16 v21, v3

    .line 1773
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_327
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_3eb

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3eb

    .line 1774
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "lib"

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v12, "lib64"

    invoke-direct {v2, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v2, v0, v12

    move-object v2, v0

    .line 1777
    .local v2, "libDirs":[Ljava/io/File;
    array-length v12, v2

    move v15, v3

    :goto_34f
    if-ge v15, v12, :cond_3e6

    aget-object v16, v2, v15

    .line 1778
    .local v16, "libDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d9

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_365

    .line 1779
    move-object/from16 v20, v2

    move-object/from16 v25, v4

    goto/16 :goto_3dd

    .line 1781
    :cond_365
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v17, v0

    .line 1782
    .local v17, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2  # "libDirs":[Ljava/io/File;
    .local v20, "libDirs":[Ljava/io/File;
    :goto_374
    if-ge v2, v3, :cond_3cf

    move/from16 v22, v3

    aget-object v3, v0, v2

    .line 1783
    .local v3, "archSubDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-nez v23, :cond_387

    .line 1784
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    move-object/from16 v3, v17

    goto :goto_3b0

    .line 1788
    :cond_387
    :try_start_387
    invoke-static {v3, v8}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v23
    :try_end_38b
    .catch Ljava/io/IOException; {:try_start_387 .. :try_end_38b} :catch_3bb

    move-object/from16 v24, v23

    .line 1794
    .local v24, "relLibPath":Ljava/lang/String;
    nop

    .line 1795
    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    .end local v24  # "relLibPath":Ljava/lang/String;
    .local v4, "relLibPath":Ljava/lang/String;
    .local v25, "removedFiles":[Ljava/io/File;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a1

    .line 1796
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1798
    :cond_3a1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v24, v3

    move-object/from16 v3, v17

    .end local v17  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v24, "archSubDir":Ljava/io/File;
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1782
    .end local v4  # "relLibPath":Ljava/lang/String;
    .end local v24  # "archSubDir":Ljava/io/File;
    :goto_3b0
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v3

    move/from16 v3, v22

    move-object/from16 v0, v23

    move-object/from16 v4, v25

    goto :goto_374

    .line 1789
    .end local v25  # "removedFiles":[Ljava/io/File;
    .local v3, "archSubDir":Ljava/io/File;
    .local v4, "removedFiles":[Ljava/io/File;
    .restart local v17  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_3bb
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v3, v17

    move-object v2, v0

    .end local v4  # "removedFiles":[Ljava/io/File;
    .end local v17  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v3, "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v24  # "archSubDir":Ljava/io/File;
    .restart local v25  # "removedFiles":[Ljava/io/File;
    move-object v0, v2

    .line 1790
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PackageInstallerSession"

    const-string v4, "Skipping linking of native library directory!"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1792
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1793
    goto :goto_3d3

    .line 1782
    .end local v0  # "e":Ljava/io/IOException;
    .end local v3  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v24  # "archSubDir":Ljava/io/File;
    .end local v25  # "removedFiles":[Ljava/io/File;
    .restart local v4  # "removedFiles":[Ljava/io/File;
    .restart local v17  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_3cf
    move-object/from16 v25, v4

    move-object/from16 v3, v17

    .line 1800
    .end local v4  # "removedFiles":[Ljava/io/File;
    .end local v17  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v3  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v25  # "removedFiles":[Ljava/io/File;
    :goto_3d3
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3dd

    .line 1778
    .end local v3  # "libDirsToInherit":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v20  # "libDirs":[Ljava/io/File;
    .end local v25  # "removedFiles":[Ljava/io/File;
    .restart local v2  # "libDirs":[Ljava/io/File;
    .restart local v4  # "removedFiles":[Ljava/io/File;
    :cond_3d9
    move-object/from16 v20, v2

    move-object/from16 v25, v4

    .line 1777
    .end local v2  # "libDirs":[Ljava/io/File;
    .end local v4  # "removedFiles":[Ljava/io/File;
    .end local v16  # "libDir":Ljava/io/File;
    .restart local v20  # "libDirs":[Ljava/io/File;
    .restart local v25  # "removedFiles":[Ljava/io/File;
    :goto_3dd
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v20

    move-object/from16 v4, v25

    const/4 v3, 0x0

    goto/16 :goto_34f

    .end local v20  # "libDirs":[Ljava/io/File;
    .end local v25  # "removedFiles":[Ljava/io/File;
    .restart local v2  # "libDirs":[Ljava/io/File;
    .restart local v4  # "removedFiles":[Ljava/io/File;
    :cond_3e6
    move-object/from16 v20, v2

    move-object/from16 v25, v4

    .end local v2  # "libDirs":[Ljava/io/File;
    .end local v4  # "removedFiles":[Ljava/io/File;
    .restart local v20  # "libDirs":[Ljava/io/File;
    .restart local v25  # "removedFiles":[Ljava/io/File;
    goto :goto_3ed

    .line 1773
    .end local v20  # "libDirs":[Ljava/io/File;
    .end local v25  # "removedFiles":[Ljava/io/File;
    .restart local v4  # "removedFiles":[Ljava/io/File;
    :cond_3eb
    move-object/from16 v25, v4

    .line 1804
    .end local v4  # "removedFiles":[Ljava/io/File;
    .end local v5  # "existing":Landroid/content/pm/PackageParser$PackageLite;
    .end local v6  # "existingBase":Landroid/content/pm/PackageParser$ApkLite;
    .end local v8  # "packageInstallDir":Ljava/io/File;
    .end local v9  # "oatDir":Ljava/io/File;
    .end local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25  # "removedFiles":[Ljava/io/File;
    :goto_3ed
    iget-boolean v0, v13, Landroid/content/pm/PackageParser$ApkLite;->useEmbeddedDex:Z

    if-eqz v0, :cond_435

    .line 1805
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_435

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1806
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_433

    .line 1807
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_419

    const/4 v4, -0x2

    goto :goto_434

    .line 1808
    :cond_419
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Some dex are not uncompressed and aligned correctly for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {v0, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1806
    :cond_433
    const/4 v4, -0x2

    .line 1812
    .end local v2  # "file":Ljava/io/File;
    :goto_434
    goto :goto_3f7

    .line 1814
    :cond_435
    iget-boolean v0, v13, Landroid/content/pm/PackageParser$ApkLite;->isSplitRequired:Z

    if-eqz v0, :cond_45c

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_441

    goto :goto_45c

    .line 1815
    :cond_441
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing split for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1818
    :cond_45c
    :goto_45c
    return-void

    .line 1708
    .end local v25  # "removedFiles":[Ljava/io/File;
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4  # "removedFiles":[Ljava/io/File;
    :catch_45d
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v25, v4

    .line 1709
    .end local v3  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4  # "removedFiles":[Ljava/io/File;
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25  # "removedFiles":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v2

    throw v2

    .line 1581
    .end local v0  # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v7  # "removeSplitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10  # "addedFiles":[Ljava/io/File;
    .end local v11  # "stagedSplits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13  # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v21  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25  # "removedFiles":[Ljava/io/File;
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :catch_467
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1582
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x12

    const-string v5, "Failed to resolve stage location"

    invoke-direct {v2, v4, v5, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V
    .registers 8
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "grantedRuntimePermissions"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2401
    if-eqz p1, :cond_1a

    .line 2402
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    .line 2403
    .local v2, "permission":Ljava/lang/String;
    const-string v3, "granted-runtime-permission"

    const/4 v4, 0x0

    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2404
    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2405
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2402
    .end local v2  # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2408
    :cond_1a
    return-void
.end method

.method private static writeWhitelistedRestrictedPermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
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

    .line 2412
    .local p1, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_22

    .line 2413
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2414
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 2415
    const-string/jumbo v2, "whitelisted-restricted-permission"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2416
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2417
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2414
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2420
    .end local v0  # "permissionCount":I
    .end local v1  # "i":I
    :cond_22
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 4

    .line 2099
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_e

    .line 2100
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 2101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 2103
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2108
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2109
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2111
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2116
    monitor-exit v0

    return-void

    .line 2118
    :cond_22
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_3f

    .line 2119
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_59

    .line 2120
    const/4 v2, 0x1

    :try_start_30
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 2121
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3c

    .line 2122
    :try_start_33
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/StagingManager;->abortCommittedSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2124
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_59

    goto :goto_3f

    .line 2121
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :try_start_3e
    throw v2

    .line 2127
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_3f
    :goto_3f
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRelinquished:Z

    if-eqz v1, :cond_4c

    .line 2128
    const-string v1, "PackageInstallerSession"

    const-string v2, "Ignoring abandon after commit relinquished control"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    monitor-exit v0

    return-void

    .line 2131
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2132
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_59

    .line 2134
    const/16 v0, -0x73

    const/4 v1, 0x0

    const-string v2, "Session was abandoned"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2135
    return-void

    .line 2132
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1

    .line 2104
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is a child of multi-package session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and may not be abandoned directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChildSessionId(I)V
    .registers 6
    .param p1, "childSessionId"  # I

    .line 2158
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 2159
    .local v0, "childSession":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v0, :cond_3e

    .line 2160
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-ne v1, v2, :cond_3e

    :cond_14
    iget-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    if-nez v1, :cond_3e

    iget-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_3e

    .line 2166
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2167
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 2168
    const-string v2, "addChildSessionId"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 2170
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2171
    .local v2, "indexOfSession":I
    if-ltz v2, :cond_31

    .line 2172
    monitor-exit v1

    return-void

    .line 2174
    :cond_31
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 2175
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionIdInternal(I)V

    .line 2176
    .end local v2  # "indexOfSession":I
    monitor-exit v1

    .line 2177
    return-void

    .line 2176
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_3b

    throw v2

    .line 2163
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add child session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as it does not exist or is in an invalid state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addChildSessionIdInternal(I)V
    .registers 4
    .param p1, "sessionId"  # I

    .line 2048
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2049
    return-void
.end method

.method public addClientProgress(F)V
    .registers 4
    .param p1, "progress"  # F

    .line 634
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 637
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgress(F)V

    .line 638
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public close()V
    .registers 2

    .line 2079
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    .line 2080
    return-void
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .registers 11
    .param p1, "statusReceiver"  # Landroid/content/IntentSender;
    .param p2, "forTransfer"  # Z

    .line 894
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_e

    .line 895
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 898
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_66

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsCommitted(Landroid/content/IntentSender;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 904
    return-void

    .line 906
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5c

    .line 907
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 908
    .local v0, "remainingSessions":Landroid/util/SparseIntArray;
    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V

    .line 910
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 911
    .local v2, "childIntentSender":Landroid/content/IntentSender;
    const/4 v3, 0x0

    .line 912
    .local v3, "commitException":Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    .line 913
    .local v4, "commitFailed":Z
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_3b
    if-ltz v5, :cond_56

    .line 914
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 918
    .local v6, "childSessionId":I
    :try_start_43
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v7, v6}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    .line 919
    invoke-virtual {v7, v2, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsCommitted(Landroid/content/IntentSender;Z)Z

    move-result v7
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_4d} :catch_51

    if-nez v7, :cond_50

    .line 920
    const/4 v4, 0x1

    .line 924
    :cond_50
    goto :goto_53

    .line 922
    :catch_51
    move-exception v7

    .line 923
    .local v7, "e":Ljava/lang/RuntimeException;
    move-object v3, v7

    .line 913
    .end local v6  # "childSessionId":I
    .end local v7  # "e":Ljava/lang/RuntimeException;
    :goto_53
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    .line 926
    .end local v5  # "i":I
    :cond_56
    if-nez v3, :cond_5b

    .line 929
    if-eqz v4, :cond_5c

    .line 930
    return-void

    .line 927
    :cond_5b
    throw v3

    .line 933
    .end local v0  # "remainingSessions":Landroid/util/SparseIntArray;
    .end local v2  # "childIntentSender":Landroid/content/IntentSender;
    .end local v3  # "commitException":Ljava/lang/RuntimeException;
    .end local v4  # "commitFailed":Z
    :cond_5c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 934
    return-void

    .line 899
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is a child of multi-package session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and may not be committed directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2360
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2361
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2362
    monitor-exit v0

    .line 2363
    return-void

    .line 2362
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 4
    .param p1, "includeIcon"  # Z
    .param p2, "callingUid"  # I

    .line 489
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->shouldScrubData(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3
    .param p1, "includeIcon"  # Z

    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChildSessionIds()[I
    .registers 3

    .line 2149
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    .line 2150
    .local v0, "childSessionIds":[I
    if-eqz v0, :cond_9

    .line 2151
    return-object v0

    .line 2153
    :cond_9
    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object v1
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .registers 3

    .line 1926
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1927
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1928
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getInstallerUid()I
    .registers 3

    .line 1911
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1912
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    monitor-exit v0

    return v1

    .line 1913
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .registers 4

    .line 655
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 657
    const-string v1, "getNames"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 660
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_15
    .catchall {:try_start_b .. :try_end_13} :catchall_1b

    :try_start_13
    monitor-exit v0

    return-object v1

    .line 661
    :catch_15
    move-exception v1

    .line 662
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v2

    .line 664
    .end local v1  # "e":Ljava/io/IOException;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getParentSessionId()I
    .registers 2

    .line 2216
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    return v0
.end method

.method getStagedSessionErrorCode()I
    .registers 2

    .line 2313
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    return v0
.end method

.method getStagedSessionErrorMessage()Ljava/lang/String;
    .registers 2

    .line 2318
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedMillis()J
    .registers 4

    .line 1920
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1921
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    .line 1922
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method hasParentSessionId()Z
    .registers 3

    .line 2211
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isCommitted()Z
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    monitor-exit v0

    return v1

    .line 567
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isMultiPackage()Z
    .registers 2

    .line 2139
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return v0
.end method

.method public isPrepared()Z
    .registers 3

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return v1

    .line 554
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isSealed()Z
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return v1

    .line 560
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isStaged()Z
    .registers 2

    .line 2144
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return v0
.end method

.method public isStagedAndInTerminalState()Z
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    if-eqz v1, :cond_13

    :cond_11
    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    .line 574
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method isStagedSessionApplied()Z
    .registers 2

    .line 2303
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    return v0
.end method

.method isStagedSessionFailed()Z
    .registers 2

    .line 2308
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    return v0
.end method

.method isStagedSessionReady()Z
    .registers 2

    .line 2298
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    return v0
.end method

.method public synthetic lambda$doWriteInternal$0$PackageInstallerSession(Landroid/system/Int64Ref;J)V
    .registers 9
    .param p1, "last"  # Landroid/system/Int64Ref;
    .param p2, "progress"  # J

    .line 800
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 801
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 802
    .local v0, "delta":J
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 803
    long-to-float v2, v0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->addClientProgress(F)V

    .line 805
    .end local v0  # "delta":J
    :cond_1a
    return-void
.end method

.method public markAsCommitted(Landroid/content/IntentSender;Z)Z
    .registers 12
    .param p1, "statusReceiver"  # Landroid/content/IntentSender;
    .param p2, "forTransfer"  # Z

    .line 1006
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 1011
    .local v0, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1013
    const-string v2, "commit"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1015
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 1017
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()Z

    move-result v7

    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    move-object v3, v2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V

    .line 1018
    .local v2, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 1020
    const/4 v3, 0x0

    if-eqz p2, :cond_42

    .line 1021
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v4, v5, :cond_3a

    goto :goto_48

    .line 1024
    :cond_3a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Session has not been transferred"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "statusReceiver":Landroid/content/IntentSender;
    .end local p2  # "forTransfer":Z
    throw v3

    .line 1027
    .restart local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2  # "forTransfer":Z
    :cond_42
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne v4, v5, :cond_87

    .line 1034
    :goto_48
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_4f

    .line 1035
    monitor-exit v1

    return v5

    .line 1038
    :cond_4f
    iget-boolean v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 1039
    .local v4, "wasSealed":Z
    iget-boolean v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_8f

    if-nez v6, :cond_70

    .line 1041
    :try_start_55
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_69
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_8f

    .line 1049
    goto :goto_70

    .line 1044
    :catch_59
    move-exception v5

    .line 1046
    .local v5, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_5a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1047
    iget v6, v5, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v5}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1048
    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 1042
    .end local v5  # "e":Lcom/android/server/pm/PackageManagerException;
    :catch_69
    move-exception v3

    .line 1043
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "statusReceiver":Landroid/content/IntentSender;
    .end local p2  # "forTransfer":Z
    throw v5

    .line 1053
    .end local v3  # "e":Ljava/io/IOException;
    .restart local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2  # "forTransfer":Z
    :cond_70
    :goto_70
    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1054
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 1058
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1060
    iput-boolean v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Z

    .line 1061
    .end local v2  # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_8f

    .line 1063
    if-nez v4, :cond_86

    .line 1067
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1069
    :cond_86
    return v5

    .line 1028
    .end local v4  # "wasSealed":Z
    .restart local v2  # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    :cond_87
    :try_start_87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Session has been transferred"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "statusReceiver":Landroid/content/IntentSender;
    .end local p2  # "forTransfer":Z
    throw v3

    .line 1061
    .end local v2  # "adapter":Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
    .restart local v0  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2  # "forTransfer":Z
    :catchall_8f
    move-exception v2

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_8f

    throw v2
.end method

.method public markUpdated()V
    .registers 4

    .line 1230
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1231
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 1232
    monitor-exit v0

    .line 1233
    return-void

    .line 1232
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public open()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2052
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 2053
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 2057
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2058
    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 2059
    .local v2, "wasPrepared":Z
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v3, :cond_33

    .line 2060
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v3, :cond_21

    .line 2061
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_27

    .line 2062
    :cond_21
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v3, :cond_2a

    .line 2068
    :goto_27
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_33

    .line 2065
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "stageDir must be set"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v1

    .line 2070
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :cond_33
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_3c

    .line 2072
    if-nez v2, :cond_3b

    .line 2073
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2075
    :cond_3b
    return-void

    .line 2070
    .end local v2  # "wasPrepared":Z
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 840
    const-string/jumbo v1, "openRead"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    .line 842
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_12
    .catchall {:try_start_c .. :try_end_10} :catchall_18

    :try_start_10
    monitor-exit v0

    return-object v1

    .line 843
    :catch_12
    move-exception v1

    .line 844
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "name":Ljava/lang/String;
    throw v2

    .line 846
    .end local v1  # "e":Ljava/io/IOException;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "name":Ljava/lang/String;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "offsetBytes"  # J
    .param p4, "lengthBytes"  # J

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 703
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    .line 705
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    if-nez v0, :cond_21

    .line 706
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPerfBoostInstall:Landroid/util/BoostFramework;

    const/16 v1, 0x1088

    const/4 v2, 0x0

    const/16 v3, 0x4e20

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIsPerfLockAcquired:Z

    .line 710
    :cond_21
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object v0

    .line 711
    :catch_2b
    move-exception v0

    .line 712
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeChildSessionId(I)V
    .registers 6
    .param p1, "sessionId"  # I

    .line 2181
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 2182
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2183
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 2184
    .local v2, "indexOfSession":I
    if-eqz v0, :cond_15

    .line 2185
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 2187
    :cond_15
    if-gez v2, :cond_19

    .line 2189
    monitor-exit v1

    return-void

    .line 2191
    :cond_19
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessionIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2192
    .end local v2  # "indexOfSession":I
    monitor-exit v1

    .line 2193
    return-void

    .line 2192
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 5
    .param p1, "splitName"  # Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 673
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 675
    const-string/jumbo v1, "removeSplit"

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_22

    .line 678
    :try_start_16
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_22

    .line 681
    nop

    .line 682
    :try_start_1a
    monitor-exit v0

    .line 683
    return-void

    .line 679
    :catch_1c
    move-exception v1

    .line 680
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "splitName":Ljava/lang/String;
    throw v2

    .line 682
    .end local v1  # "e":Ljava/io/IOException;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "splitName":Ljava/lang/String;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v1

    .line 670
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify package name to remove a split"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sealAndValidateIfNecessary()V
    .registers 7

    .line 1206
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3c

    .line 1210
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e

    .line 1211
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    .line 1212
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1214
    :try_start_16
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_33
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    .line 1224
    goto :goto_31

    .line 1225
    :catchall_1a
    move-exception v0

    goto :goto_3a

    .line 1217
    :catch_1c
    move-exception v0

    .line 1218
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_1d
    const-string v3, "PackageInstallerSession"

    const-string v4, "Package not valid"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1222
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1223
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1222
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1225
    .end local v0  # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_31
    monitor-exit v2

    .line 1226
    return-void

    .line 1215
    :catch_33
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    throw v3

    .line 1225
    .end local v0  # "e":Ljava/io/IOException;
    .restart local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    :goto_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_1a

    throw v0

    .line 1208
    .end local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_3c
    :goto_3c
    :try_start_3c
    monitor-exit v0

    return-void

    .line 1210
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public setClientProgress(F)V
    .registers 5
    .param p1, "progress"  # F

    .line 622
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 626
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 627
    .local v1, "forcePublish":Z
    :goto_10
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 628
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 629
    .end local v1  # "forcePublish":Z
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method setParentSessionId(I)V
    .registers 6
    .param p1, "parentSessionId"  # I

    .line 2200
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2201
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2e

    :try_start_6
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_b

    goto :goto_2e

    .line 2203
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The parent of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is alreadyset to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "parentSessionId":I
    throw v1

    .line 2206
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "parentSessionId":I
    :cond_2e
    :goto_2e
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 2207
    monitor-exit v0

    .line 2208
    return-void

    .line 2207
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method setPermissionsResult(Z)V
    .registers 5
    .param p1, "accepted"  # Z

    .line 2027
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_26

    .line 2031
    if-eqz p1, :cond_1a

    .line 2033
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2034
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 2035
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2036
    monitor-exit v0

    goto :goto_25

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v1

    .line 2038
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 2039
    const/16 v0, -0x73

    const/4 v1, 0x0

    const-string v2, "User rejected permissions"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2041
    :goto_25
    return-void

    .line 2028
    :cond_26
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be sealed to accept permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setStagedSessionApplied()V
    .registers 5

    .line 2284
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2285
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2286
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2287
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2288
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2289
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2290
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2292
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2293
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2294
    return-void

    .line 2291
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method setStagedSessionFailed(ILjava/lang/String;)V
    .registers 7
    .param p1, "errorCode"  # I
    .param p2, "errorMessage"  # Ljava/lang/String;

    .line 2270
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2271
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2272
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2274
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2275
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2276
    const-string v1, "PackageInstallerSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    .line 2278
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->cleanStageDir()V

    .line 2279
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2280
    return-void

    .line 2277
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method setStagedSessionReady()V
    .registers 3

    .line 2257
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2258
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    .line 2259
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    .line 2260
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    .line 2261
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    .line 2262
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    .line 2263
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_18

    .line 2264
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2265
    return-void

    .line 2263
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public transfer(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1237
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1240
    .local v0, "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_a3

    .line 1244
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7d

    .line 1252
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1256
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    .line 1258
    .local v1, "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1259
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootLocked()V

    .line 1260
    const-string/jumbo v3, "transfer"

    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_72

    .line 1263
    :try_start_32
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sealAndValidateLocked(Ljava/util/List;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_6b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_32 .. :try_end_35} :catch_55
    .catchall {:try_start_32 .. :try_end_35} :catchall_72

    .line 1272
    nop

    .line 1274
    :try_start_36
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1279
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    .line 1280
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 1281
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_72

    .line 1286
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1287
    return-void

    .line 1275
    :cond_4d
    :try_start_4d
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Can only transfer sessions that update the original installer"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "packageName":Ljava/lang/String;
    throw v3

    .line 1266
    .restart local v0  # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "packageName":Ljava/lang/String;
    :catch_55
    move-exception v3

    .line 1268
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 1269
    iget v4, v3, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v3}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1271
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package is not valid"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0  # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "packageName":Ljava/lang/String;
    throw v4

    .line 1264
    .end local v3  # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v0  # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "packageName":Ljava/lang/String;
    :catch_6b
    move-exception v3

    .line 1265
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0  # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "packageName":Ljava/lang/String;
    throw v4

    .line 1281
    .end local v3  # "e":Ljava/io/IOException;
    .restart local v0  # "newOwnerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "packageName":Ljava/lang/String;
    :catchall_72
    move-exception v3

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_4d .. :try_end_74} :catchall_72

    throw v3

    .line 1253
    .end local v1  # "childSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageInstallerSession;>;"
    :cond_75
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only transfer sessions that use public options"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1246
    :cond_7d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1241
    :cond_a3
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "offsetBytes"  # J
    .param p4, "lengthBytes"  # J
    .param p6, "fd"  # Landroid/os/ParcelFileDescriptor;

    .line 720
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 723
    nop

    .line 724
    return-void

    .line 721
    :catch_5
    move-exception v0

    .line 722
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method write(Lorg/xmlpull/v1/XmlSerializer;Ljava/io/File;)V
    .registers 11
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "sessionsDir"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2434
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2435
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 2436
    monitor-exit v0

    return-void

    .line 2439
    :cond_9
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    const-string/jumbo v1, "sessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2442
    const-string/jumbo v1, "userId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2443
    const-string/jumbo v1, "installerPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2445
    const-string/jumbo v1, "installerUid"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2446
    const-string v1, "createdMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2447
    const-string/jumbo v1, "updatedMillis"

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2448
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_4f

    .line 2449
    const-string/jumbo v1, "sessionStageDir"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 2450
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2449
    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2452
    :cond_4f
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_5b

    .line 2453
    const-string/jumbo v1, "sessionStageCid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2455
    :cond_5b
    const-string/jumbo v1, "prepared"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isPrepared()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2456
    const-string v1, "committed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2457
    const-string/jumbo v1, "sealed"

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2459
    const-string/jumbo v1, "multiPackage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2460
    const-string/jumbo v1, "stagedSession"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2461
    const-string/jumbo v1, "isReady"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionReady:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2462
    const-string/jumbo v1, "isFailed"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionFailed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2463
    const-string/jumbo v1, "isApplied"

    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionApplied:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2464
    const-string v1, "errorCode"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorCode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2465
    const-string v1, "errorMessage"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSessionErrorMessage:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2469
    const-string/jumbo v1, "parentSessionId"

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2470
    const-string/jumbo v1, "mode"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2471
    const-string/jumbo v1, "installFlags"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2472
    const-string/jumbo v1, "installLocation"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2473
    const-string/jumbo v1, "sizeBytes"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2474
    const-string v1, "appPackageName"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2475
    const-string v1, "appLabel"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2476
    const-string/jumbo v1, "originatingUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2477
    const-string/jumbo v1, "originatingUid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2478
    const-string/jumbo v1, "referrerUri"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    .line 2479
    const-string v1, "abiOverride"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2480
    const-string/jumbo v1, "volumeUuid"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2481
    const-string/jumbo v1, "installRason"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2483
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;)V

    .line 2484
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2488
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 2489
    .local v1, "appIconFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_154

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_154

    .line 2490
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_1c9

    .line 2491
    :cond_154
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1c9

    .line 2492
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1c9

    .line 2493
    const-string v3, "PackageInstallerSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing changed icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catchall {:try_start_3 .. :try_end_17c} :catchall_1ef

    .line 2494
    const/4 v3, 0x0

    .line 2496
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_17d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 2497
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_18e} :catch_194
    .catchall {:try_start_17d .. :try_end_18e} :catchall_192

    .line 2501
    :try_start_18e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_1ef

    .line 2502
    :goto_191
    goto :goto_1bc

    .line 2501
    :catchall_192
    move-exception v2

    goto :goto_1c5

    .line 2498
    :catch_194
    move-exception v4

    .line 2499
    .local v4, "e":Ljava/io/IOException;
    :try_start_195
    const-string v5, "PackageInstallerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b7
    .catchall {:try_start_195 .. :try_end_1b7} :catchall_192

    .line 2501
    nop

    .end local v4  # "e":Ljava/io/IOException;
    :try_start_1b8
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_191

    .line 2504
    :goto_1bc
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_1c9

    .line 2501
    :goto_1c5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .end local p1  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local p2  # "sessionsDir":Ljava/io/File;
    throw v2

    .line 2506
    .end local v3  # "os":Ljava/io/FileOutputStream;
    .restart local p0  # "this":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p1  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local p2  # "sessionsDir":Ljava/io/File;
    :cond_1c9
    :goto_1c9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v3

    .line 2507
    .local v3, "childSessionIds":[I
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1cf
    if-ge v5, v4, :cond_1e7

    aget v6, v3, v5

    .line 2508
    .local v6, "childSessionId":I
    const-string v7, "childSession"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2509
    const-string/jumbo v7, "sessionId"

    invoke-static {p1, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2510
    const-string v7, "childSession"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2507
    nop

    .end local v6  # "childSessionId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1cf

    .line 2512
    .end local v1  # "appIconFile":Ljava/io/File;
    .end local v3  # "childSessionIds":[I
    :cond_1e7
    monitor-exit v0
    :try_end_1e8
    .catchall {:try_start_1b8 .. :try_end_1e8} :catchall_1ef

    .line 2514
    const-string/jumbo v0, "session"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2515
    return-void

    .line 2512
    :catchall_1ef
    move-exception v1

    :try_start_1f0
    monitor-exit v0
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1ef

    throw v1
.end method
